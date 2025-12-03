@interface IDSRegistrationKeyManager
+ (BOOL)setupKeys;
+ (id)sharedInstance;
- (BOOL)_generateUnregisteredIdentityWithExistingLegacyIdentity:(id)identity existingNGMIdentity:(id)mIdentity;
- (BOOL)_isSecurelyStoringIdentity:(id)identity withExpectedProtectionClass:(int64_t)class;
- (BOOL)_isUnderFirstDataProtectionLock;
- (BOOL)_loadClassAIdentityIfNeeded:(id *)needed;
- (BOOL)_loadClassCIdentityIfNeeded:(id *)needed;
- (BOOL)_loadClassDIdentityIfNeeded:(id *)needed;
- (BOOL)_migrateIdentity:(id)identity toProtectionClass:(int64_t)class;
- (BOOL)_migrateRegisteredIdentityFromClassDtoClassCIfNeeded;
- (BOOL)_save;
- (BOOL)_serializeAndPersistApplicationKeyIdentitiesDeleteIfNull:(BOOL)null;
- (BOOL)_serializeAndPersistIdentityContainer:(id)container identityIdentifier:(int64_t)identifier deleteIfNull:(BOOL)null;
- (BOOL)_serializeAndPersistKTRegistrationDataDeleteIfNull:(BOOL)null;
- (BOOL)_shouldCheckUnregisteredKTData;
- (BOOL)_shouldRegenerateRegisteredIdentity;
- (BOOL)isMigratedKeyPairSignature;
- (BOOL)isUsingSecureStorageForClassA;
- (BOOL)isUsingSecureStorageForClassC;
- (BOOL)migrateToSecureStorageForClassA;
- (BOOL)migrateToSecureStorageForClassC;
- (BOOL)needsPublicDataUpdatedForKeyIndex:(unsigned __int16)index ktRegistrationKeyIndex:(unsigned __int16)keyIndex;
- (BOOL)registrationNeedsKTDataUpdated;
- (IDSRegistrationKeyManager)init;
- (IDSRegistrationKeyManager)initWithSystemMonitor:(id)monitor keychainWrapper:(id)wrapper loadingRateLimiter:(id)limiter identityDataSource:(id)source allowPairingIdentities:(BOOL)identities allowRegenerateRegisteredIdentity:(BOOL)identity keyPairProvider:(id)provider ktRegistrationDataManager:(id)self0;
- (_SecMPFullIdentity)copyMessageProtectionIdentity;
- (_SecMPFullIdentity)copyPreviousMessageProtectionIdentity;
- (_SecMPFullIdentity)latestCopyMessageProtectionIdentityForDataProtectionClass:(unsigned int)class;
- (__SecKey)copyPublicIdentityDataToRegisterForKeyIndex:(unsigned __int16)index withError:(id *)error;
- (__SecKey)fullIdentityForKeyIndex:(unsigned __int16)index;
- (__SecKey)identityPrivateKey;
- (__SecKey)identityPublicKey;
- (double)_generationRetryDelay;
- (double)_identityRegenerationDelay;
- (double)_notifyKTReregisterDelay;
- (double)_purgePreviousIdentityDelay;
- (double)_randomizedIdentityRegenerationInterval;
- (id)_generateIdentityWithExistingIdentity:(id)identity identifier:(int64_t)identifier dataProtectionClass:(int64_t)class;
- (id)_getPublicMessageProtectionDataForIdentity:(id)identity;
- (id)_loadAndDeserializeBuildOfIdentityGenerationForItemName:(id)name;
- (id)copyKTRegistrationDataToRegisterForKeyIndex:(unsigned __int16)index withError:(id *)error;
- (id)createKTRegistrationDataForServiceTypes:(id)types withPublicIdentity:(id)identity;
- (id)fetchRegistrationStatusProvider;
- (id)fullDeviceIdentityContainerUsableForKeyType:(unint64_t)type;
- (id)fullMessageProtectionIdentity;
- (id)fullMessageProtectionIdentityForDataProtectionClass:(unsigned int)class;
- (id)generateCSRForUserID:(id)d;
- (id)keyPairSignature;
- (id)kvsTrustedDevices;
- (id)latestMessageProtectionFullIdentityForDataProtectionClass:(unsigned int)class;
- (id)previousFullDeviceIdentityContainer;
- (id)previousFullMessageProtectionIdentity;
- (id)publicMessageProtectionData;
- (id)publicMessageProtectionDataToRegisterForClassA;
- (id)publicMessageProtectionDataToRegisterForClassC;
- (id)publicMessageProtectionDataToRegisterForClassD;
- (id)publicMessageProtectionDeviceIdentityContainerToRegister:(id *)register;
- (id)publicMessageProtectionIdentityDataToRegisterWithError:(id *)error;
- (void)_ensureIdentity:(id *)identity savedIndentity:(id *)indentity protectionClass:(int64_t)class didSaveIdentity:(BOOL *)saveIdentity;
- (void)_generateKTRegistrationData:(id)data;
- (void)_handleKVSUpdateResponseForTrustedDevices:(id)devices withSuccessfulKVSSync:(BOOL)sync;
- (void)_handleTransparencySignatureResponse:(id)response error:(id)error;
- (void)_handleTransparencySignatureResponseForRegistration:(id)registration error:(id)error;
- (void)_ktDataNeedsUpdate:(id)update;
- (void)_loadIfNeeded:(BOOL)needed;
- (void)_notifyUnregisteredIdentityRegenerated;
- (void)_notifyUnregisteredKTData;
- (void)_purgePreviousIdentityFromMemoryAndKeychain;
- (void)_purgePreviousIdentityTimerFired;
- (void)_purgePreviousIdentityTimerFiredOnMain;
- (void)_regenerateIdentityTimerFired;
- (void)_regenerateIdentityTimerFiredOnMain;
- (void)_retryGenerationAfterDelay;
- (void)_retryGenerationIfNeeded;
- (void)_saveClassXIdentity:(id *)identity savedIdentity:(id *)savedIdentity protectionClass:(int64_t)class savedUnsavedIdentity:(BOOL *)unsavedIdentity;
- (void)_schedulePurgeOfPreviousIdentityAfterDelay:(double)delay;
- (void)_scheduleRegenerationOfRegisteredIdentityAfterDelay:(double)delay;
- (void)_serializeAndPersistBuildOfIdentityGeneration:(id)generation itemName:(id)name;
- (void)_subscribeForTimeChangeNotification;
- (void)_unsubscribeForTimeChangeNotification;
- (void)dealloc;
- (void)fetchKTSignatureDataForServiceTypes:(id)types publicIdentityData:(id)data registerID:(id)d withCompletion:(id)completion;
- (void)loadPairingIdentities:(BOOL)identities;
- (void)noteBuddyFinishTime;
- (void)noteDidRegisterKTData:(id)data forKeyIndex:(unsigned __int16)index;
- (void)noteManateeAvailableTime;
- (void)notePublicIdentityDidRegisterLegacyData:(id)data ngmIdentityData:(id)identityData ngmPrekeyData:(id)prekeyData keyIndexToIdentityData:(id)toIdentityData;
- (void)noteiCloudSignInTime;
- (void)purgeMessageProtectionIdentity;
- (void)regeneratePairingIdentitiesIncludingClassD:(BOOL)d;
- (void)regenerateRegisteredIdentity;
- (void)setForceRoll:(BOOL)roll;
- (void)systemDidLeaveDataProtectionLock;
- (void)systemDidLeaveFirstDataProtectionLock;
- (void)systemRestoreStateDidChange;
- (void)updateKVSForKTRegistrationData;
@end

@implementation IDSRegistrationKeyManager

- (void)systemDidLeaveDataProtectionLock
{
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_pendingIdentityRegeneration)
  {
    [(IDSRegistrationKeyManager *)self regeneratePairingIdentitiesIncludingClassD:1];
  }

  if (!self->_hasCheckedMigrationThisLaunch)
  {
    [(IDSRegistrationKeyManager *)self _migrateRegisteredIdentityFromClassDtoClassCIfNeeded];
  }

  [(IDSRegistrationKeyManager *)self loadPairingIdentities:1];
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (BOOL)_migrateRegisteredIdentityFromClassDtoClassCIfNeeded
{
  config = [(IDSRegistrationKeyManager *)self config];
  registeredIdentityContainer = [config registeredIdentityContainer];
  legacyFullIdentity = [registeredIdentityContainer legacyFullIdentity];

  LODWORD(registeredIdentityContainer) = [(IDSRegistrationKeyManager *)self _isSecurelyStoringIdentity:legacyFullIdentity withExpectedProtectionClass:0];
  v6 = +[IMRGLog registration];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (registeredIdentityContainer)
  {
    if (v7)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Found internet message protection identity in class C -- no need to move it", &v11, 2u);
    }

    LOBYTE(v6) = 1;
  }

  else
  {
    if (v7)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Moving internet messsage protection identity from class D to class C", &v11, 2u);
    }

    LODWORD(v6) = [(IDSRegistrationKeyManager *)self _migrateIdentity:legacyFullIdentity toProtectionClass:0];
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"NO";
      if (v6)
      {
        v9 = @"YES";
      }

      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Result of moving internet messsage protection identity from D to C is %@", &v11, 0xCu);
    }

    if (v6)
    {
      LOBYTE(v6) = 1;
      self->_hasCheckedMigrationThisLaunch = 1;
    }
  }

  return v6;
}

+ (id)sharedInstance
{
  if (qword_100CBCE20 != -1)
  {
    sub_10001F4EC();
  }

  v3 = qword_100CBCE28;

  return v3;
}

- (__SecKey)identityPrivateKey
{
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:0];
  config = [(IDSRegistrationKeyManager *)self config];
  privateKey = [config privateKey];

  return privateKey;
}

- (__SecKey)identityPublicKey
{
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:0];
  config = [(IDSRegistrationKeyManager *)self config];
  publicKey = [config publicKey];

  return publicKey;
}

+ (BOOL)setupKeys
{
  v2 = dispatch_get_global_queue(2, 0);
  dispatch_async(v2, &stru_100BD7900);

  return 1;
}

- (BOOL)_isUnderFirstDataProtectionLock
{
  systemMonitor = [(IDSRegistrationKeyManager *)self systemMonitor];
  isUnderFirstDataProtectionLock = [systemMonitor isUnderFirstDataProtectionLock];

  return isUnderFirstDataProtectionLock;
}

- (void)systemDidLeaveFirstDataProtectionLock
{
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_detectedMigrationNeeded)
  {
    self->_detectedMigrationNeeded = 0;
    [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 __mainThreadPostNotificationName:@"__kIDSRegistrationKeyManagerKeychainMigrationComplete" object:0];
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)systemRestoreStateDidChange
{
  v3 = +[IMSystemMonitor sharedInstance];
  isSetup = [v3 isSetup];

  if ((isSetup & 1) == 0)
  {
    [(NSRecursiveLock *)self->_lock lock];
    [(IDSRegistrationKeyManager *)self noteBuddyFinishTime];
    lock = self->_lock;

    [(NSRecursiveLock *)lock unlock];
  }
}

- (void)_saveClassXIdentity:(id *)identity savedIdentity:(id *)savedIdentity protectionClass:(int64_t)class savedUnsavedIdentity:(BOOL *)unsavedIdentity
{
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_detectedMigrationNeeded)
  {
    v11 = +[IMRGLog registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1009158C0();
    }

LABEL_25:

    goto LABEL_26;
  }

  if (class > 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = qword_1009AB588[class];
  }

  v13 = *savedIdentity;
  if (*savedIdentity || (v13 = *identity) != 0)
  {
    v14 = v13;
    identityDataSource = [(IDSRegistrationKeyManager *)self identityDataSource];
    v27 = 0;
    v16 = [identityDataSource saveLegacyIdentity:v14 withIdentifier:v12 dataProtectionClass:class error:&v27];
    v17 = v27;

    if (v16)
    {
      if (*identity)
      {
        objc_storeStrong(savedIdentity, *identity);
        v18 = *identity;
        *identity = 0;

        if (unsavedIdentity)
        {
          *unsavedIdentity = 1;
        }
      }

      v11 = v17;
    }

    else
    {
      v19 = +[IMRGLog registration];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100915768();
      }

      v20 = +[IMRGLog registration];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1009157DC();
      }

      identityDataSource2 = [(IDSRegistrationKeyManager *)self identityDataSource];
      v26 = v17;
      v22 = [identityDataSource2 removeLegacyIdentity:0 withIdentifier:v12 dataProtectionClass:class error:&v26];
      v11 = v26;

      v23 = +[IMRGLog registration];
      v24 = v23;
      if (v22)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [IDSKeychainWrapper shortDescriptionForDataProtectionClass:class];
          *buf = 138543618;
          v29 = v25;
          v30 = 2114;
          v31 = v11;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Removed keychain data for class %{public}@ message protection identity {error: %{public}@}", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100915810(class);
      }
    }

    goto LABEL_25;
  }

LABEL_26:
  [(NSRecursiveLock *)self->_lock unlock];
}

- (BOOL)_save
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Saving key manager state {self: %@}", &v33, 0xCu);
  }

  [(NSRecursiveLock *)self->_lock lock];
  if (self->_detectedMigrationNeeded)
  {
    config5 = +[IMRGLog registration];
    if (os_log_type_enabled(config5, OS_LOG_TYPE_ERROR))
    {
      sub_100915900();
    }

    LOBYTE(v5) = 1;
  }

  else
  {
    config = [(IDSRegistrationKeyManager *)self config];
    registeredIdentityContainer = [config registeredIdentityContainer];
    v8 = [(IDSRegistrationKeyManager *)self _serializeAndPersistIdentityContainer:registeredIdentityContainer identityIdentifier:2 deleteIfNull:1];

    config2 = [(IDSRegistrationKeyManager *)self config];
    unregisteredIdentityContainer = [config2 unregisteredIdentityContainer];
    v11 = [(IDSRegistrationKeyManager *)self _serializeAndPersistIdentityContainer:unregisteredIdentityContainer identityIdentifier:1 deleteIfNull:1];

    config3 = [(IDSRegistrationKeyManager *)self config];
    previousRegisteredIdentityContainer = [config3 previousRegisteredIdentityContainer];
    v14 = [(IDSRegistrationKeyManager *)self _serializeAndPersistIdentityContainer:previousRegisteredIdentityContainer identityIdentifier:3 deleteIfNull:1];

    LODWORD(config3) = [(IDSRegistrationKeyManager *)self _serializeAndPersistApplicationKeyIdentitiesDeleteIfNull:1];
    v5 = [(IDSRegistrationKeyManager *)self _serializeAndPersistKTRegistrationDataDeleteIfNull:1]& config3 & v14 & v11 & v8;
    config4 = [(IDSRegistrationKeyManager *)self config];
    buildOfIdentityGeneration = [config4 buildOfIdentityGeneration];
    [(IDSRegistrationKeyManager *)self _serializeAndPersistBuildOfIdentityGeneration:buildOfIdentityGeneration itemName:@"build-of-identity-generation"];

    config5 = [(IDSRegistrationKeyManager *)self config];
    buildOfUnregisteredIdentityGeneration = [config5 buildOfUnregisteredIdentityGeneration];
    [(IDSRegistrationKeyManager *)self _serializeAndPersistBuildOfIdentityGeneration:buildOfUnregisteredIdentityGeneration itemName:@"build-of-unregistered-identity-generation"];
  }

  v18 = +[IMUserDefaults sharedDefaults];
  config6 = [(IDSRegistrationKeyManager *)self config];
  registeredIdentityContainer2 = [config6 registeredIdentityContainer];
  v21 = [NSNumber numberWithInt:registeredIdentityContainer2 != 0];
  [v18 setAppValue:v21 forKey:@"hasRegIdentityContainer"];

  v22 = +[IMUserDefaults sharedDefaults];
  config7 = [(IDSRegistrationKeyManager *)self config];
  unregisteredIdentityContainer2 = [config7 unregisteredIdentityContainer];
  v25 = [NSNumber numberWithInt:unregisteredIdentityContainer2 != 0];
  [v22 setAppValue:v25 forKey:@"hasUnregIdentityContainer"];

  if (!v5)
  {
    v26 = [(IDSRateLimiter *)self->_loadingRateLimiter underLimitForItem:@"registrationKeyManagerRateLimit"];
    v27 = +[IMRGLog registration];
    v28 = v27;
    if (v26)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_100915970();
      }

      self->_identityLoaded = 0;
      config8 = [(IDSRegistrationKeyManager *)self config];
      [config8 setRegisteredIdentityContainer:0];

      config9 = [(IDSRegistrationKeyManager *)self config];
      [config9 setUnregisteredIdentityContainer:0];

      config10 = [(IDSRegistrationKeyManager *)self config];
      [config10 setPreviousRegisteredIdentityContainer:0];

      [(IDSPerServiceApplicationKeyManager *)self->_applicationKeyManager clearIdentities];
    }

    else
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        sub_100915934();
      }
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
  return v5;
}

- (BOOL)_serializeAndPersistApplicationKeyIdentitiesDeleteIfNull:(BOOL)null
{
  nullCopy = null;
  [(NSRecursiveLock *)self->_lock lock];
  LOBYTE(nullCopy) = [(IDSPerServiceApplicationKeyManager *)self->_applicationKeyManager serializeAndPersistIdentitiesDeleteIfNull:nullCopy];
  [(NSRecursiveLock *)self->_lock unlock];
  return nullCopy;
}

- (BOOL)_serializeAndPersistKTRegistrationDataDeleteIfNull:(BOOL)null
{
  nullCopy = null;
  [(NSRecursiveLock *)self->_lock lock];
  LOBYTE(nullCopy) = [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager serializeAndPersistKTDatasDeleteIfNull:nullCopy];
  [(NSRecursiveLock *)self->_lock unlock];
  return nullCopy;
}

- (BOOL)_serializeAndPersistIdentityContainer:(id)container identityIdentifier:(int64_t)identifier deleteIfNull:(BOOL)null
{
  nullCopy = null;
  containerCopy = container;
  [(NSRecursiveLock *)self->_lock lock];
  v9 = +[IMRGLog registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    *buf = 134218499;
    identifierCopy7 = identifier;
    if (nullCopy)
    {
      v10 = @"YES";
    }

    v31 = 2113;
    identifierCopy5 = containerCopy;
    v33 = 2114;
    v34 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Persisting message protection identity container {identityIdentifier: %ld, identityContainer: %{private}@, deleteIfNull: %{public}@}", buf, 0x20u);
  }

  if (containerCopy)
  {
    identityDataSource = [(IDSRegistrationKeyManager *)self identityDataSource];
    v28 = 0;
    v12 = [identityDataSource saveIdentityContainer:containerCopy withIdentifier:identifier dataProtectionClass:0 error:&v28];
    v13 = v28;

    v14 = +[IMRGLog registration];
    v15 = v14;
    if (v12)
    {
      v16 = 1;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 134218243;
        identifierCopy7 = identifier;
        v31 = 2113;
        identifierCopy5 = containerCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Persisted identity {identityIdentifier: %ld, identityContainer: %{private}@}", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543875;
        identifierCopy7 = v13;
        v31 = 2048;
        identifierCopy5 = identifier;
        v33 = 2113;
        v34 = containerCopy;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to save identity, possibly corrupted -- removing reference from keychain {error: %{public}@, identityIdentifier: %ld, identityContainer: %{private}@}", buf, 0x20u);
      }

      identityDataSource2 = [(IDSRegistrationKeyManager *)self identityDataSource];
      v27 = v13;
      v22 = [identityDataSource2 removeIdentityContainer:containerCopy withIdentifier:identifier dataProtectionClass:0 error:&v27];
      v23 = v27;

      v24 = +[IMRGLog registration];
      v15 = v24;
      if (v22)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218243;
          identifierCopy7 = identifier;
          v31 = 2113;
          identifierCopy5 = containerCopy;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Removed identity reference from keychain {identityIdentifier: %ld, identityContainer: %{private}@}", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543875;
        identifierCopy7 = v23;
        v31 = 2048;
        identifierCopy5 = identifier;
        v33 = 2113;
        v34 = containerCopy;
        _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Failed to remove corrupt identity reference from keychain {error: %{public}@, identityIdentifier: %ld, identityContainer: %{private}@}", buf, 0x20u);
      }

      v16 = 0;
      v13 = v23;
    }

LABEL_27:

    goto LABEL_28;
  }

  if (nullCopy)
  {
    v17 = +[IMRGLog registration];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218243;
      identifierCopy7 = identifier;
      v31 = 2113;
      identifierCopy5 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Removing identity from keychain because deleteIfNull == YES, {identityIdentifier: %ld, identityContainer: %{private}@}", buf, 0x16u);
    }

    identityDataSource3 = [(IDSRegistrationKeyManager *)self identityDataSource];
    v26 = 0;
    v19 = [identityDataSource3 removeIdentityContainer:0 withIdentifier:identifier dataProtectionClass:0 error:&v26];
    v13 = v26;

    v20 = +[IMRGLog registration];
    v15 = v20;
    if (v19)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218243;
        identifierCopy7 = identifier;
        v31 = 2113;
        identifierCopy5 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Purged identity and removed it from keychain {identityIdentifier: %ld, identityContainer: %{private}@}", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1009159A4();
    }

    v16 = 1;
    goto LABEL_27;
  }

  v13 = 0;
  v16 = 1;
LABEL_28:
  [(NSRecursiveLock *)self->_lock unlock];

  return v16;
}

- (void)_serializeAndPersistBuildOfIdentityGeneration:(id)generation itemName:(id)name
{
  generationCopy = generation;
  nameCopy = name;
  [(NSRecursiveLock *)self->_lock lock];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = nameCopy;
    v20 = 2112;
    v21 = generationCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Persisting build of identity generation {itemName: %@, buildOfIdentityGeneration: %@}", buf, 0x16u);
  }

  if (generationCopy)
  {
    v9 = [generationCopy dataUsingEncoding:4];
    keychainWrapper = [(IDSRegistrationKeyManager *)self keychainWrapper];
    v17 = 0;
    v11 = [keychainWrapper saveData:v9 forIdentifier:nameCopy allowSync:0 dataProtectionClass:2 error:&v17];
    v12 = v17;

    if ((v11 & 1) == 0)
    {
      v13 = +[IMRGLog registration];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100915A24();
      }
    }

LABEL_11:

    goto LABEL_12;
  }

  keychainWrapper2 = [(IDSRegistrationKeyManager *)self keychainWrapper];
  v16 = 0;
  v15 = [keychainWrapper2 removeDataForIdentifier:nameCopy dataProtectionClass:2 error:&v16];
  v12 = v16;

  if ((v15 & 1) == 0)
  {
    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100915A98();
    }

    goto LABEL_11;
  }

LABEL_12:
  [(NSRecursiveLock *)self->_lock unlock];
}

- (id)_loadAndDeserializeBuildOfIdentityGenerationForItemName:(id)name
{
  nameCopy = name;
  [(NSRecursiveLock *)self->_lock lock];
  keychainWrapper = [(IDSRegistrationKeyManager *)self keychainWrapper];
  v14 = 0;
  v6 = [keychainWrapper dataForIdentifier:nameCopy error:&v14];
  v7 = v14;

  if (v6)
  {
    v8 = [[NSString alloc] initWithData:v6 encoding:4];
    if (v8)
    {
      goto LABEL_9;
    }

    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = nameCopy;
      v17 = 2114;
      v18 = v6;
      v10 = "Unable to deserialize build of identity generation {itemName: %{public}@, serializedBuildOfIdentityGeneration: %{public}@}";
      v11 = v9;
      v12 = 22;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    }
  }

  else
  {
    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v7;
      v10 = "Unable to load message protection identity from keychain {error: %{public}@}";
      v11 = v9;
      v12 = 12;
      goto LABEL_7;
    }
  }

  v8 = 0;
LABEL_9:
  [(NSRecursiveLock *)self->_lock unlock];

  return v8;
}

- (BOOL)_loadClassAIdentityIfNeeded:(id *)needed
{
  allowPairingIdentities = [(IDSRegistrationKeyManager *)self allowPairingIdentities];
  if (allowPairingIdentities)
  {
    [(NSRecursiveLock *)self->_lock lock];
    config = [(IDSRegistrationKeyManager *)self config];
    identityClassA = [config identityClassA];

    if (!identityClassA)
    {
      v24 = 0;
      identityDataSource = [(IDSRegistrationKeyManager *)self identityDataSource];
      v11 = [identityDataSource loadLegacyIdentityWithIdentifier:4 serializationDidChange:&v24 error:needed];
      config2 = [(IDSRegistrationKeyManager *)self config];
      [config2 setIdentityClassA:v11];

      config3 = [(IDSRegistrationKeyManager *)self config];
      identityClassA2 = [config3 identityClassA];

      v15 = +[IMRGLog registration];
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (identityClassA2)
      {
        if (v16)
        {
          config4 = [(IDSRegistrationKeyManager *)self config];
          identityClassA3 = [config4 identityClassA];
          v19 = identityClassA3;
          v20 = @"NO";
          if (v24)
          {
            v20 = @"YES";
          }

          *buf = 138478083;
          *&buf[4] = identityClassA3;
          v26 = 2114;
          v27 = v20;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Loaded class A message protection identity {identity: %{private}@, serializationDidChange: %{public}@}", buf, 0x16u);
        }

        if (v24 == 1)
        {
          config5 = [(IDSRegistrationKeyManager *)self config];
          *buf = [config5 identityClassA];

          v23 = 0;
          [(IDSRegistrationKeyManager *)self _saveClassXIdentity:buf savedIdentity:&v23 protectionClass:1 savedUnsavedIdentity:0];
        }
      }

      else
      {
        if (v16)
        {
          if (needed)
          {
            v22 = *needed;
          }

          else
          {
            v22 = 0;
          }

          *buf = 138543362;
          *&buf[4] = v22;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to load class A message protection identity {error: %{public}@}", buf, 0xCu);
        }
      }
    }

    [(NSRecursiveLock *)self->_lock unlock];
  }

  else
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Skipping load class A message protection identity becuase shouldGeneratePairingIdentities == NO", buf, 2u);
    }
  }

  return allowPairingIdentities;
}

- (BOOL)_loadClassCIdentityIfNeeded:(id *)needed
{
  allowPairingIdentities = [(IDSRegistrationKeyManager *)self allowPairingIdentities];
  if (allowPairingIdentities)
  {
    [(NSRecursiveLock *)self->_lock lock];
    config = [(IDSRegistrationKeyManager *)self config];
    identityClassC = [config identityClassC];

    if (!identityClassC)
    {
      v24 = 0;
      identityDataSource = [(IDSRegistrationKeyManager *)self identityDataSource];
      v11 = [identityDataSource loadLegacyIdentityWithIdentifier:5 serializationDidChange:&v24 error:needed];
      config2 = [(IDSRegistrationKeyManager *)self config];
      [config2 setIdentityClassC:v11];

      config3 = [(IDSRegistrationKeyManager *)self config];
      identityClassC2 = [config3 identityClassC];

      v15 = +[IMRGLog registration];
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (identityClassC2)
      {
        if (v16)
        {
          config4 = [(IDSRegistrationKeyManager *)self config];
          identityClassC3 = [config4 identityClassC];
          v19 = identityClassC3;
          v20 = @"NO";
          if (v24)
          {
            v20 = @"YES";
          }

          *buf = 138478083;
          *&buf[4] = identityClassC3;
          v26 = 2114;
          v27 = v20;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Loaded class C message protection identity {identity: %{private}@, serializationDidChange: %{public}@}", buf, 0x16u);
        }

        if (v24 == 1)
        {
          config5 = [(IDSRegistrationKeyManager *)self config];
          *buf = [config5 identityClassC];

          v23 = 0;
          [(IDSRegistrationKeyManager *)self _saveClassXIdentity:buf savedIdentity:&v23 protectionClass:0 savedUnsavedIdentity:0];
        }
      }

      else
      {
        if (v16)
        {
          if (needed)
          {
            v22 = *needed;
          }

          else
          {
            v22 = 0;
          }

          *buf = 138543362;
          *&buf[4] = v22;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to load class C message protection identity {error: %{public}@}", buf, 0xCu);
        }
      }
    }

    [(NSRecursiveLock *)self->_lock unlock];
  }

  else
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Skipping load class C message protection identity becuase shouldGeneratePairingIdentities == NO", buf, 2u);
    }
  }

  return allowPairingIdentities;
}

- (BOOL)_loadClassDIdentityIfNeeded:(id *)needed
{
  allowPairingIdentities = [(IDSRegistrationKeyManager *)self allowPairingIdentities];
  if (allowPairingIdentities)
  {
    [(NSRecursiveLock *)self->_lock lock];
    config = [(IDSRegistrationKeyManager *)self config];
    identityClassD = [config identityClassD];

    if (!identityClassD)
    {
      v24 = 0;
      identityDataSource = [(IDSRegistrationKeyManager *)self identityDataSource];
      v11 = [identityDataSource loadLegacyIdentityWithIdentifier:6 serializationDidChange:&v24 error:needed];
      config2 = [(IDSRegistrationKeyManager *)self config];
      [config2 setIdentityClassD:v11];

      config3 = [(IDSRegistrationKeyManager *)self config];
      identityClassD2 = [config3 identityClassD];

      v15 = +[IMRGLog registration];
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (identityClassD2)
      {
        if (v16)
        {
          config4 = [(IDSRegistrationKeyManager *)self config];
          identityClassD3 = [config4 identityClassD];
          v19 = identityClassD3;
          v20 = @"NO";
          if (v24)
          {
            v20 = @"YES";
          }

          *buf = 138478083;
          *&buf[4] = identityClassD3;
          v26 = 2114;
          v27 = v20;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Loaded class D message protection identity {identity: %{private}@, serializationDidChange: %{public}@}", buf, 0x16u);
        }

        if (v24 == 1)
        {
          config5 = [(IDSRegistrationKeyManager *)self config];
          *buf = [config5 identityClassD];

          v23 = 0;
          [(IDSRegistrationKeyManager *)self _saveClassXIdentity:buf savedIdentity:&v23 protectionClass:2 savedUnsavedIdentity:0];
        }
      }

      else
      {
        if (v16)
        {
          if (needed)
          {
            v22 = *needed;
          }

          else
          {
            v22 = 0;
          }

          *buf = 138543362;
          *&buf[4] = v22;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to load class D message protection identity {error: %{public}@}", buf, 0xCu);
        }
      }
    }

    [(NSRecursiveLock *)self->_lock unlock];
  }

  else
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Skipping load class D message protection identity becuase shouldGeneratePairingIdentities == NO", buf, 2u);
    }
  }

  return allowPairingIdentities;
}

- (void)_loadIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  selfCopy = self;
  v238 = 0;
  v239 = &v238;
  v240 = 0x2020000000;
  v241 = 0;
  v237 = 0;
  [(NSRecursiveLock *)self->_lock lock];
  if (!selfCopy->_loaded)
  {
    selfCopy->_loaded = 1;
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Registration key manager beginning locked load of identities", buf, 2u);
    }

    v242[0] = 0;
    memset(v236, 0, 10);
    keyPairProvider = [(IDSRegistrationKeyManager *)selfCopy keyPairProvider];
    v235 = 0;
    [keyPairProvider copyRegistrationKeyPairForIdentifier:0 publicKey:v242 privateKey:&v236[1] keyPairSignature:&v235 isMigratedSignature:v236 + 1 isUpgradePending:v236];
    v7 = v235;

    v8 = v242[0];
    config = [(IDSRegistrationKeyManager *)selfCopy config];
    [config setPublicKey:v8];

    v10 = *&v236[1];
    config2 = [(IDSRegistrationKeyManager *)selfCopy config];
    [config2 setPrivateKey:v10];

    config3 = [(IDSRegistrationKeyManager *)selfCopy config];
    [config3 setSignature:v7];

    v13 = HIBYTE(v236[0]);
    config4 = [(IDSRegistrationKeyManager *)selfCopy config];
    [config4 setIsMigratedSignature:v13];

    if (v242[0])
    {
      CFRelease(v242[0]);
      v242[0] = 0;
    }

    if (*&v236[1])
    {
      CFRelease(*&v236[1]);
      *&v236[1] = 0;
    }

    v15 = +[IMRGLog registration];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v7;
      config5 = [(IDSRegistrationKeyManager *)selfCopy config];
      if ([config5 publicKey])
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      config6 = [(IDSRegistrationKeyManager *)selfCopy config];
      if ([config6 privateKey])
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      if (v7)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      config7 = [(IDSRegistrationKeyManager *)selfCopy config];
      if ([config7 isMigratedSignature])
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      if (LOBYTE(v236[0]))
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      *buf = 138413314;
      v244 = v17;
      v245 = 2112;
      v246 = v19;
      v247 = 2112;
      v248 = v20;
      v249 = 2112;
      v250 = v22;
      v251 = 2112;
      v252 = v23;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Loaded registration key pair {publicKey: %@, privateKey: %@, signature: %@, isMigratedSignature: %@, upgradePending: %@}", buf, 0x34u);

      v7 = v16;
    }

    if (LOBYTE(v236[0]) == 1 && [(IDSRegistrationKeyManager *)selfCopy _isUnderFirstDataProtectionLock])
    {
      v24 = +[IMRGLog registration];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Unable to load registration key pair; we're under lock, and this requires migration -- we need to migrate", buf, 2u);
      }

      selfCopy->_detectedMigrationNeeded = 1;
      systemMonitor = [(IDSRegistrationKeyManager *)selfCopy systemMonitor];
      [systemMonitor _addEarlyListener:selfCopy];

      selfCopy->_loaded = 0;
    }

    if (v236[0])
    {
      goto LABEL_49;
    }

    config8 = [(IDSRegistrationKeyManager *)selfCopy config];
    signature = [config8 signature];
    if (signature)
    {
      config9 = [(IDSRegistrationKeyManager *)selfCopy config];
      if ([config9 publicKey])
      {
        config10 = [(IDSRegistrationKeyManager *)selfCopy config];
        v30 = [config10 privateKey] == 0;

        if (!v30)
        {
LABEL_49:

          goto LABEL_50;
        }

LABEL_37:
        v31 = +[IMRGLog registration];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v218 = v7;
          v32 = selfCopy;
          v33 = neededCopy;
          v34 = v32;
          config11 = [(IDSRegistrationKeyManager *)v32 config];
          signature2 = [config11 signature];
          if (signature2)
          {
            v36 = @"YES";
          }

          else
          {
            v36 = @"NO";
          }

          config12 = [(IDSRegistrationKeyManager *)v34 config];
          if ([config12 publicKey])
          {
            v38 = @"YES";
          }

          else
          {
            v38 = @"NO";
          }

          config13 = [(IDSRegistrationKeyManager *)v34 config];
          if ([config13 privateKey])
          {
            v40 = @"YES";
          }

          else
          {
            v40 = @"NO";
          }

          *buf = 138412802;
          v244 = v36;
          v245 = 2112;
          v246 = v38;
          v247 = 2112;
          v248 = v40;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Unable to load a registration key pair {signature: %@, publicKey: %@, privateKey: %@}", buf, 0x20u);

          neededCopy = v33;
          selfCopy = v34;
          v7 = v218;
        }

        selfCopy->_loaded = 0;
        goto LABEL_49;
      }
    }

    goto LABEL_37;
  }

LABEL_50:
  if (neededCopy && !selfCopy->_identityLoaded)
  {
    if ([(IDSRegistrationKeyManager *)selfCopy _isUnderFirstDataProtectionLock])
    {
      v41 = +[IMRGLog registration];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "We are under first data protection lock, we can not load our identity now", buf, 2u);
      }

      selfCopy->_identityLoaded = 0;
      systemMonitor2 = [(IDSRegistrationKeyManager *)selfCopy systemMonitor];
      [systemMonitor2 _addEarlyListener:selfCopy];

      if (!selfCopy->_detectedMigrationNeeded)
      {
        [(IDSRegistrationKeyManager *)selfCopy loadPairingIdentities:1];
      }

      goto LABEL_180;
    }

    [(IDSRateLimiter *)selfCopy->_loadingRateLimiter noteItem:@"registrationKeyManagerRateLimit"];
    selfCopy->_identityLoaded = 1;
    v43 = objc_alloc_init(IDSNGMKeyLoadingErrorContainer);
    recentKeyLoadingErrors = selfCopy->_recentKeyLoadingErrors;
    selfCopy->_recentKeyLoadingErrors = v43;

    v45 = +[IMUserDefaults sharedDefaults];
    v46 = [v45 appValueForKey:@"hasRegIdentityContainer"];
    [(IDSNGMKeyLoadingErrorContainer *)selfCopy->_recentKeyLoadingErrors setShouldHaveRegisteredIdentity:v46];

    v47 = +[IMUserDefaults sharedDefaults];
    v48 = [v47 appValueForKey:@"hasUnregIdentityContainer"];
    [(IDSNGMKeyLoadingErrorContainer *)selfCopy->_recentKeyLoadingErrors setShouldHaveUnregisteredIdentity:v48];

    v49 = +[IMUserDefaults sharedDefaults];
    selfCopy->_failedToGeneratedPublicDataForNGMIdentity = [v49 appBoolForKey:@"failedToGeneratedPublicDataForNGMIdentity"];

    identityDataSource = [(IDSRegistrationKeyManager *)selfCopy identityDataSource];
    v233 = 0;
    v234 = 0;
    v51 = [identityDataSource loadIdentityContainerWithIdentifier:2 withLegacyFallback:1 serializationDidChange:v239 + 3 deserializationDidFail:&v237 + 1 needsEncryptionIdentityRoll:&v237 nonLegacyError:&v234 error:&v233];
    v219 = v234;
    v222 = v233;
    config14 = [(IDSRegistrationKeyManager *)selfCopy config];
    [config14 setRegisteredIdentityContainer:v51];

    config15 = [(IDSRegistrationKeyManager *)selfCopy config];
    registeredIdentityContainer = [config15 registeredIdentityContainer];

    if (registeredIdentityContainer)
    {
      v55 = [(IDSRegistrationKeyManager *)selfCopy _loadAndDeserializeBuildOfIdentityGenerationForItemName:@"build-of-identity-generation"];
      config16 = [(IDSRegistrationKeyManager *)selfCopy config];
      [config16 setBuildOfIdentityGeneration:v55];

      systemMonitor3 = +[IMRGLog registration];
      if (os_log_type_enabled(systemMonitor3, OS_LOG_TYPE_DEFAULT))
      {
        config17 = [(IDSRegistrationKeyManager *)selfCopy config];
        registeredIdentityContainer2 = [config17 registeredIdentityContainer];
        config18 = [(IDSRegistrationKeyManager *)selfCopy config];
        buildOfIdentityGeneration = [config18 buildOfIdentityGeneration];
        *buf = 138478083;
        v244 = registeredIdentityContainer2;
        v245 = 2112;
        v246 = buildOfIdentityGeneration;
        _os_log_impl(&_mh_execute_header, systemMonitor3, OS_LOG_TYPE_DEFAULT, "Successfully loaded message protection identity from keychain {_config.registeredIdentityContainer: %{private}@, buildOfGeneration: %@}", buf, 0x16u);
      }
    }

    else
    {
      v62 = +[IMRGLog registration];
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = @"NO";
        if (HIBYTE(v237))
        {
          v63 = @"YES";
        }

        *buf = 138543618;
        v244 = v222;
        v245 = 2114;
        v246 = v63;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Unable to load message protection identity from keychain {error: %{public}@, deserializationDidFail: %{public}@}", buf, 0x16u);
      }

      if (![IDSKeychainWrapper isUpgradePendingError:v222]|| ![(IDSRegistrationKeyManager *)selfCopy _isUnderFirstDataProtectionLock])
      {
LABEL_70:
        v65 = selfCopy->_recentKeyLoadingErrors;
        if ((v237 & 0x100) != 0)
        {
          [(IDSNGMKeyLoadingErrorContainer *)v65 setRegisteredDeserializationError:v219];
        }

        else
        {
          [(IDSNGMKeyLoadingErrorContainer *)v65 setRegisteredKeychainError:v219];
        }

        if (selfCopy->_detectedMigrationNeeded)
        {
          v66 = +[IMRGLog registration];
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "We're under first lock, and this requires migration -- not doing anything here", buf, 2u);
          }

          selfCopy->_identityLoaded = 0;
LABEL_179:

LABEL_180:
          config19 = [(IDSRegistrationKeyManager *)selfCopy config];
          registeredIdentityContainer3 = [config19 registeredIdentityContainer];
          legacyFullIdentity = [registeredIdentityContainer3 legacyFullIdentity];
          v175 = [(IDSRegistrationKeyManager *)selfCopy _getPublicMessageProtectionDataForIdentity:legacyFullIdentity];

          config20 = [(IDSRegistrationKeyManager *)selfCopy config];
          unregisteredIdentityContainer = [config20 unregisteredIdentityContainer];
          legacyFullIdentity2 = [unregisteredIdentityContainer legacyFullIdentity];
          v179 = [(IDSRegistrationKeyManager *)selfCopy _getPublicMessageProtectionDataForIdentity:legacyFullIdentity2];

          config21 = [(IDSRegistrationKeyManager *)selfCopy config];
          identityClassA = [config21 identityClassA];
          v182 = [(IDSRegistrationKeyManager *)selfCopy _getPublicMessageProtectionDataForIdentity:identityClassA];

          config22 = [(IDSRegistrationKeyManager *)selfCopy config];
          identityClassC = [config22 identityClassC];
          v185 = [(IDSRegistrationKeyManager *)selfCopy _getPublicMessageProtectionDataForIdentity:identityClassC];

          config23 = [(IDSRegistrationKeyManager *)selfCopy config];
          identityClassD = [config23 identityClassD];
          v188 = [(IDSRegistrationKeyManager *)selfCopy _getPublicMessageProtectionDataForIdentity:identityClassD];

          goto LABEL_181;
        }

        *(v236 + 1) = 0;
        identityDataSource2 = [(IDSRegistrationKeyManager *)selfCopy identityDataSource];
        v231 = v222;
        v232 = 0;
        v68 = [identityDataSource2 loadIdentityContainerWithIdentifier:1 withLegacyFallback:0 serializationDidChange:v239 + 3 deserializationDidFail:&v236[1] needsEncryptionIdentityRoll:v236 + 1 nonLegacyError:&v232 error:&v231];
        v217 = v232;
        v69 = v231;

        config24 = [(IDSRegistrationKeyManager *)selfCopy config];
        [config24 setUnregisteredIdentityContainer:v68];

        v237 = (v237 | *(v236 + 1)) & 0x101;
        config25 = [(IDSRegistrationKeyManager *)selfCopy config];
        unregisteredIdentityContainer2 = [config25 unregisteredIdentityContainer];

        if (unregisteredIdentityContainer2)
        {
          v73 = [(IDSRegistrationKeyManager *)selfCopy _loadAndDeserializeBuildOfIdentityGenerationForItemName:@"build-of-unregistered-identity-generation"];
          config26 = [(IDSRegistrationKeyManager *)selfCopy config];
          [config26 setBuildOfUnregisteredIdentityGeneration:v73];

          v75 = +[IMRGLog registration];
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            config27 = [(IDSRegistrationKeyManager *)selfCopy config];
            unregisteredIdentityContainer3 = [config27 unregisteredIdentityContainer];
            config28 = [(IDSRegistrationKeyManager *)selfCopy config];
            buildOfUnregisteredIdentityGeneration = [config28 buildOfUnregisteredIdentityGeneration];
            *buf = 138478083;
            v244 = unregisteredIdentityContainer3;
            v245 = 2112;
            v246 = buildOfUnregisteredIdentityGeneration;
            _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Successfully loaded unregistered message protection identity from keychain {_config.unregisteredIdentity: %{private}@, buildOfGeneration: %@}", buf, 0x16u);
          }
        }

        else
        {
          v75 = +[IMRGLog registration];
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            v80 = @"NO";
            if (HIBYTE(v237))
            {
              v80 = @"YES";
            }

            *buf = 138543618;
            v244 = v69;
            v245 = 2114;
            v246 = v80;
            _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Unable to load unregistered message protection identity from keychain {error: %{public}@, deserializationDidFail: %{public}@}", buf, 0x16u);
          }
        }

        v81 = selfCopy->_recentKeyLoadingErrors;
        if (v236[1])
        {
          [(IDSNGMKeyLoadingErrorContainer *)v81 setUnregisteredDeserializationError:v217];
        }

        else
        {
          [(IDSNGMKeyLoadingErrorContainer *)v81 setUnregisteredKeychainError:v217];
        }

        LOBYTE(v236[0]) = 0;
        v230 = 0;
        identityDataSource3 = [(IDSRegistrationKeyManager *)selfCopy identityDataSource];
        v229 = v69;
        v83 = [identityDataSource3 loadIdentityContainerWithIdentifier:3 withLegacyFallback:1 serializationDidChange:v239 + 3 deserializationDidFail:v236 needsEncryptionIdentityRoll:&v230 nonLegacyError:0 error:&v229];
        v222 = v229;

        config29 = [(IDSRegistrationKeyManager *)selfCopy config];
        [config29 setPreviousRegisteredIdentityContainer:v83];

        config30 = [(IDSRegistrationKeyManager *)selfCopy config];
        previousRegisteredIdentityContainer = [config30 previousRegisteredIdentityContainer];

        if (previousRegisteredIdentityContainer)
        {
          v87 = +[IMRGLog registration];
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            config31 = [(IDSRegistrationKeyManager *)selfCopy config];
            previousRegisteredIdentityContainer2 = [config31 previousRegisteredIdentityContainer];
            *buf = 138477827;
            v244 = previousRegisteredIdentityContainer2;
            _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "Successfully loaded previous message protection identity from keychain {previousMessageProtectionKey: %{private}@}", buf, 0xCu);
          }
        }

        else
        {
          v87 = +[IMRGLog registration];
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            v90 = @"NO";
            if (LOBYTE(v236[0]))
            {
              v90 = @"YES";
            }

            *buf = 138543618;
            v244 = v222;
            v245 = 2114;
            v246 = v90;
            _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "Unable to load previous message protection identity from keychain {error: %{public}@, previousIdentityDeserializationFailed: %{public}@}", buf, 0x16u);
          }
        }

        config32 = [(IDSRegistrationKeyManager *)selfCopy config];
        previousRegisteredIdentityContainer3 = [config32 previousRegisteredIdentityContainer];

        if (previousRegisteredIdentityContainer3)
        {
          [(IDSRegistrationKeyManager *)selfCopy _purgePreviousIdentityDelay];
          [(IDSRegistrationKeyManager *)selfCopy _schedulePurgeOfPreviousIdentityAfterDelay:?];
        }

        [(IDSRegistrationKeyManager *)selfCopy loadPairingIdentities:1];
        v93 = +[IMRGLog registration];
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          config33 = [(IDSRegistrationKeyManager *)selfCopy config];
          registeredIdentityContainer4 = [config33 registeredIdentityContainer];
          if (registeredIdentityContainer4)
          {
            v94 = @"YES";
          }

          else
          {
            v94 = @"NO";
          }

          v205 = v94;
          config34 = [(IDSRegistrationKeyManager *)selfCopy config];
          registeredIdentityContainer5 = [config34 registeredIdentityContainer];
          if ([registeredIdentityContainer5 hasNGMIdentity])
          {
            v95 = @"YES";
          }

          else
          {
            v95 = @"NO";
          }

          v204 = v95;
          config35 = [(IDSRegistrationKeyManager *)selfCopy config];
          unregisteredIdentityContainer4 = [config35 unregisteredIdentityContainer];
          if (unregisteredIdentityContainer4)
          {
            v96 = @"YES";
          }

          else
          {
            v96 = @"NO";
          }

          v203 = v96;
          config36 = [(IDSRegistrationKeyManager *)selfCopy config];
          unregisteredIdentityContainer5 = [config36 unregisteredIdentityContainer];
          if ([unregisteredIdentityContainer5 hasNGMIdentity])
          {
            v97 = @"YES";
          }

          else
          {
            v97 = @"NO";
          }

          config37 = [(IDSRegistrationKeyManager *)selfCopy config];
          registeredIdentityContainer6 = [config37 registeredIdentityContainer];
          ngmVersion = [registeredIdentityContainer6 ngmVersion];
          config38 = [(IDSRegistrationKeyManager *)selfCopy config];
          unregisteredIdentityContainer6 = [config38 unregisteredIdentityContainer];
          ngmVersion2 = [unregisteredIdentityContainer6 ngmVersion];
          identityDataSource4 = [(IDSRegistrationKeyManager *)selfCopy identityDataSource];
          v104 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [identityDataSource4 ngmVersion]);
          *buf = 138413826;
          v244 = v205;
          v245 = 2112;
          v246 = v204;
          v247 = 2112;
          v248 = v203;
          v249 = 2112;
          v250 = v97;
          v251 = 2112;
          v252 = ngmVersion;
          v253 = 2112;
          v254 = ngmVersion2;
          v255 = 2112;
          v256 = v104;
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Considering regeneration {registeredIdentity: %@, registeredNGM: %@, unregisteredIdentity: %@, unregisteredNGM: %@, registeredVersion: %@, unregisteredVersion: %@, currentVersion: %@}", buf, 0x48u);
        }

        if (LOBYTE(v236[1]) == 1)
        {
          config39 = [(IDSRegistrationKeyManager *)selfCopy config];
          unregisteredIdentityContainer7 = [config39 unregisteredIdentityContainer];
          v216 = unregisteredIdentityContainer7 == 0;
        }

        else
        {
          v216 = 0;
        }

        config40 = [(IDSRegistrationKeyManager *)selfCopy config];
        registeredIdentityContainer7 = [config40 registeredIdentityContainer];

        config41 = [(IDSRegistrationKeyManager *)selfCopy config];
        registeredIdentityContainer8 = [config41 registeredIdentityContainer];
        if ([registeredIdentityContainer8 hasNGMIdentity])
        {
          config42 = [(IDSRegistrationKeyManager *)selfCopy config];
          registeredIdentityContainer9 = [config42 registeredIdentityContainer];
          ngmVersion3 = [registeredIdentityContainer9 ngmVersion];
          identityDataSource5 = [(IDSRegistrationKeyManager *)selfCopy identityDataSource];
          v115 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [identityDataSource5 ngmVersion]);
          v116 = [ngmVersion3 isEqualToNumber:v115];

          v117 = v116 ^ 1;
        }

        else
        {
          v117 = 1;
        }

        v214 = v117;

        config43 = [(IDSRegistrationKeyManager *)selfCopy config];
        unregisteredIdentityContainer8 = [config43 unregisteredIdentityContainer];
        if ([unregisteredIdentityContainer8 hasNGMIdentity])
        {
          config44 = [(IDSRegistrationKeyManager *)selfCopy config];
          unregisteredIdentityContainer9 = [config44 unregisteredIdentityContainer];
          ngmVersion4 = [unregisteredIdentityContainer9 ngmVersion];
          identityDataSource6 = [(IDSRegistrationKeyManager *)selfCopy identityDataSource];
          v124 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [identityDataSource6 ngmVersion]);
          v125 = [ngmVersion4 isEqualToNumber:v124];

          v126 = v125 ^ 1;
        }

        else
        {
          v126 = 1;
        }

        config45 = [(IDSRegistrationKeyManager *)selfCopy config];
        unregisteredIdentityContainer10 = [config45 unregisteredIdentityContainer];
        v129 = unregisteredIdentityContainer10 != 0;
        if (!((unregisteredIdentityContainer10 == 0) | v126 & 1))
        {
          config46 = [(IDSRegistrationKeyManager *)selfCopy config];
          unregisteredIdentityContainer11 = [config46 unregisteredIdentityContainer];
          legacyFullIdentity3 = [unregisteredIdentityContainer11 legacyFullIdentity];
          v129 = legacyFullIdentity3 == 0;
        }

        if ((v216 | v214) & 1 | (registeredIdentityContainer7 == 0) | v129)
        {
          if ((v126 & 1) != 0 || (-[IDSRegistrationKeyManager config](selfCopy, "config"), v133 = objc_claimAutoreleasedReturnValue(), [v133 unregisteredIdentityContainer], v134 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v134, "legacyFullIdentity"), v135 = objc_claimAutoreleasedReturnValue(), v136 = v135 == 0, v135, v134, v133, v136))
          {
            v142 = +[IMRGLog registration];
            if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
            {
              config47 = [(IDSRegistrationKeyManager *)selfCopy config];
              registeredIdentityContainer10 = [config47 registeredIdentityContainer];
              config48 = [(IDSRegistrationKeyManager *)selfCopy config];
              unregisteredIdentityContainer12 = [config48 unregisteredIdentityContainer];
              identityDataSource7 = [(IDSRegistrationKeyManager *)selfCopy identityDataSource];
              v148 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [identityDataSource7 ngmVersion]);
              *buf = 138412802;
              v244 = registeredIdentityContainer10;
              v245 = 2112;
              v246 = unregisteredIdentityContainer12;
              v247 = 2112;
              v248 = v148;
              _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "We have no registered or unregistered identity loaded -- generating a new message protection identity {registeredIdentityContainer: %@, unregisteredIdentityContainer: %@, identityDataSource.ngmVersion: %@}", buf, 0x20u);
            }

            shouldHaveUnregisteredIdentity = [(IDSNGMKeyLoadingErrorContainer *)selfCopy->_recentKeyLoadingErrors shouldHaveUnregisteredIdentity];

            if (shouldHaveUnregisteredIdentity)
            {
              unregisteredDeserializationError = [(IDSNGMKeyLoadingErrorContainer *)selfCopy->_recentKeyLoadingErrors unregisteredDeserializationError];

              if (unregisteredDeserializationError)
              {
                v151 = +[IMRGLog registration];
                if (os_log_type_enabled(v151, OS_LOG_TYPE_FAULT))
                {
                  [(IDSNGMKeyLoadingErrorContainer *)selfCopy->_recentKeyLoadingErrors registeredDeserializationError];
                  objc_claimAutoreleasedReturnValue();
                  sub_100915BE0();
                }
              }

              else
              {
                unregisteredKeychainError = [(IDSNGMKeyLoadingErrorContainer *)selfCopy->_recentKeyLoadingErrors unregisteredKeychainError];

                if (unregisteredKeychainError)
                {
                  v151 = +[IMRGLog registration];
                  if (os_log_type_enabled(v151, OS_LOG_TYPE_FAULT))
                  {
                    [(IDSNGMKeyLoadingErrorContainer *)selfCopy->_recentKeyLoadingErrors registeredKeychainError];
                    objc_claimAutoreleasedReturnValue();
                    sub_100915C2C();
                  }
                }

                else
                {
                  v151 = +[IMRGLog registration];
                  if (os_log_type_enabled(v151, OS_LOG_TYPE_FAULT))
                  {
                    sub_100915C78();
                  }
                }
              }
            }

            shouldHaveRegisteredIdentity = [(IDSNGMKeyLoadingErrorContainer *)selfCopy->_recentKeyLoadingErrors shouldHaveRegisteredIdentity];

            if (shouldHaveRegisteredIdentity)
            {
              registeredDeserializationError = [(IDSNGMKeyLoadingErrorContainer *)selfCopy->_recentKeyLoadingErrors registeredDeserializationError];

              if (registeredDeserializationError)
              {
                v160 = +[IMRGLog registration];
                if (os_log_type_enabled(v160, OS_LOG_TYPE_FAULT))
                {
                  [(IDSNGMKeyLoadingErrorContainer *)selfCopy->_recentKeyLoadingErrors registeredDeserializationError];
                  objc_claimAutoreleasedReturnValue();
                  sub_100915B0C();
                }
              }

              else
              {
                registeredKeychainError = [(IDSNGMKeyLoadingErrorContainer *)selfCopy->_recentKeyLoadingErrors registeredKeychainError];

                if (registeredKeychainError)
                {
                  v160 = +[IMRGLog registration];
                  if (os_log_type_enabled(v160, OS_LOG_TYPE_FAULT))
                  {
                    [(IDSNGMKeyLoadingErrorContainer *)selfCopy->_recentKeyLoadingErrors registeredKeychainError];
                    objc_claimAutoreleasedReturnValue();
                    sub_100915B58();
                  }
                }

                else
                {
                  v160 = +[IMRGLog registration];
                  if (os_log_type_enabled(v160, OS_LOG_TYPE_FAULT))
                  {
                    sub_100915BA4();
                  }
                }
              }
            }

            config49 = [(IDSRegistrationKeyManager *)selfCopy config];
            unregisteredIdentityContainer13 = [config49 unregisteredIdentityContainer];
            config50 = [(IDSRegistrationKeyManager *)selfCopy config];
            if (unregisteredIdentityContainer13)
            {
              [config50 unregisteredIdentityContainer];
            }

            else
            {
              [config50 registeredIdentityContainer];
            }
            v137 = ;

            legacyFullIdentity4 = [v137 legacyFullIdentity];
            v166 = [(IDSRegistrationKeyManager *)selfCopy _generateUnregisteredIdentityWithExistingLegacyIdentity:legacyFullIdentity4 existingNGMIdentity:0];

            if (v166)
            {
              [(IDSRegistrationKeyManager *)selfCopy _notifyUnregisteredIdentityRegenerated];
            }
          }

          else
          {
            v137 = +[IMRGLog registration];
            if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "We have no registered identity loaded, but we found an unregistered identity -- no need to generate", buf, 2u);
            }
          }
        }

        else
        {
          if ([(IDSRegistrationKeyManager *)selfCopy _shouldRegenerateRegisteredIdentity])
          {
            v138 = +[IMRGLog registration];
            if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "We need to regenerate the registered identity", buf, 2u);
            }

            shouldHaveRegisteredIdentity2 = [(IDSNGMKeyLoadingErrorContainer *)selfCopy->_recentKeyLoadingErrors shouldHaveRegisteredIdentity];

            if (shouldHaveRegisteredIdentity2)
            {
              registeredDeserializationError2 = [(IDSNGMKeyLoadingErrorContainer *)selfCopy->_recentKeyLoadingErrors registeredDeserializationError];

              if (registeredDeserializationError2)
              {
                v141 = +[IMRGLog registration];
                if (os_log_type_enabled(v141, OS_LOG_TYPE_FAULT))
                {
                  [(IDSNGMKeyLoadingErrorContainer *)selfCopy->_recentKeyLoadingErrors registeredDeserializationError];
                  objc_claimAutoreleasedReturnValue();
                  sub_100915B0C();
                }
              }

              else
              {
                registeredKeychainError2 = [(IDSNGMKeyLoadingErrorContainer *)selfCopy->_recentKeyLoadingErrors registeredKeychainError];

                if (registeredKeychainError2)
                {
                  v141 = +[IMRGLog registration];
                  if (os_log_type_enabled(v141, OS_LOG_TYPE_FAULT))
                  {
                    [(IDSNGMKeyLoadingErrorContainer *)selfCopy->_recentKeyLoadingErrors registeredKeychainError];
                    objc_claimAutoreleasedReturnValue();
                    sub_100915B58();
                  }
                }

                else
                {
                  v141 = +[IMRGLog registration];
                  if (os_log_type_enabled(v141, OS_LOG_TYPE_FAULT))
                  {
                    sub_100915BA4();
                  }
                }
              }
            }

            [(IDSRegistrationKeyManager *)selfCopy _identityRegenerationDelay];
            [(IDSRegistrationKeyManager *)selfCopy _scheduleRegenerationOfRegisteredIdentityAfterDelay:?];
            goto LABEL_170;
          }

          v137 = +[IMRGLog registration];
          if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
          {
            config51 = [(IDSRegistrationKeyManager *)selfCopy config];
            registeredIdentityContainer11 = [config51 registeredIdentityContainer];
            config52 = [(IDSRegistrationKeyManager *)selfCopy config];
            unregisteredIdentityContainer14 = [config52 unregisteredIdentityContainer];
            *buf = 138412546;
            v244 = registeredIdentityContainer11;
            v245 = 2112;
            v246 = unregisteredIdentityContainer14;
            _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "No need to regenerate message protection identity {identity: %@, unregisteredIdentity: %@}", buf, 0x16u);
          }
        }

LABEL_170:
        v228 = 0;
        [(IDSPerServiceApplicationKeyManager *)selfCopy->_applicationKeyManager loadIdentitiesWithSerializationDidChange:v239 + 3 deserializationDidFail:&v237 + 1 identityGenerated:&v228];
        if (v228 == 1)
        {
          [(IDSRegistrationKeyManager *)selfCopy _notifyUnregisteredIdentityRegenerated];
        }

        if (+[IDSKeyTransparencyVerifier isKeyTransparencyEnabled])
        {
          v227 = 0;
          [(IDSKTRegistrationDataManager *)selfCopy->_ktRegistrationDataManager loadKTRegistrationDatasWithShouldGenerateKTData:&v227];
          if (v227 == 1)
          {
            v226 = 0;
            v167 = [(IDSRegistrationKeyManager *)selfCopy publicMessageProtectionIdentityDataToRegisterWithError:&v226];
            v168 = v226;
            v169 = im_primary_queue();
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1003347F4;
            block[3] = &unk_100BD6E40;
            block[4] = selfCopy;
            v170 = v167;
            v225 = v170;
            dispatch_async(v169, block);
          }
        }

        else
        {
          v171 = +[IMRGLog registration];
          if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
          {
            sub_100915CB4();
          }
        }

        goto LABEL_179;
      }

      v64 = +[IMRGLog registration];
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "We're under lock, and this requires migration -- we need to migrate", buf, 2u);
      }

      selfCopy->_detectedMigrationNeeded = 1;
      systemMonitor3 = [(IDSRegistrationKeyManager *)selfCopy systemMonitor];
      [systemMonitor3 _addEarlyListener:selfCopy];
    }

    goto LABEL_70;
  }

LABEL_181:
  [(NSRecursiveLock *)selfCopy->_lock unlock];
  if (IMGetAppBoolForKey())
  {
    IMSetAppBoolForKey();
    v189 = +[IMRGLog registration];
    if (os_log_type_enabled(v189, OS_LOG_TYPE_DEFAULT))
    {
      v236[1] = 0;
      _os_log_impl(&_mh_execute_header, v189, OS_LOG_TYPE_DEFAULT, " ********************************************************************", &v236[1], 2u);
    }

    v190 = +[IMRGLog registration];
    if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
    {
      v236[1] = 0;
      _os_log_impl(&_mh_execute_header, v190, OS_LOG_TYPE_DEFAULT, " ********  DEFAULT SET TO FORCE IDENTITY REFRESH  *******************", &v236[1], 2u);
    }

    v191 = +[IMRGLog registration];
    if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
    {
      v236[1] = 0;
      _os_log_impl(&_mh_execute_header, v191, OS_LOG_TYPE_DEFAULT, " ********************************************************************", &v236[1], 2u);
    }

    v223[0] = _NSConcreteStackBlock;
    v223[1] = 3221225472;
    v223[2] = sub_100334800;
    v223[3] = &unk_100BD7928;
    v223[4] = &v238;
    v192 = v223;
    if (qword_100CBCE30 != -1)
    {
      dispatch_once(&qword_100CBCE30, v192);
    }
  }

  if ((v239[3] & 1) != 0 || HIBYTE(v237) == 1)
  {
    if (![(IDSRegistrationKeyManager *)selfCopy _save])
    {
      goto LABEL_219;
    }

    if (v239[3])
    {
      v193 = +[IMRGLog registration];
      if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
      {
        v236[1] = 0;
        _os_log_impl(&_mh_execute_header, v193, OS_LOG_TYPE_DEFAULT, " ********************************************************************", &v236[1], 2u);
      }

      v194 = +[IMRGLog registration];
      if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
      {
        v236[1] = 0;
        _os_log_impl(&_mh_execute_header, v194, OS_LOG_TYPE_DEFAULT, " ****************  IDENTITY SERIALIZATION UPDATED  ******************", &v236[1], 2u);
      }

      v195 = +[IMRGLog registration];
      if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
      {
        v236[1] = 0;
        _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_DEFAULT, " ********************************************************************", &v236[1], 2u);
      }

      selfCopy->_needsReRegister = 1;
    }
  }

  if (HIBYTE(v237) == 1)
  {
    v196 = +[IMRGLog registration];
    if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
    {
      v236[1] = 0;
      _os_log_impl(&_mh_execute_header, v196, OS_LOG_TYPE_DEFAULT, " ********************************************************************", &v236[1], 2u);
    }

    v197 = +[IMRGLog registration];
    if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
    {
      v236[1] = 0;
      _os_log_impl(&_mh_execute_header, v197, OS_LOG_TYPE_DEFAULT, " ************************  IDENTITY REBUILT  ************************", &v236[1], 2u);
    }

    v198 = +[IMRGLog registration];
    if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
    {
      v236[1] = 0;
      _os_log_impl(&_mh_execute_header, v198, OS_LOG_TYPE_DEFAULT, " ********************************************************************", &v236[1], 2u);
    }

    v199 = +[NSNotificationCenter defaultCenter];
    [v199 __mainThreadPostNotificationName:@"__kIDSRegistrationKeyManagerPrivateIdentityRebuiltNotification" object:selfCopy];
LABEL_218:

    goto LABEL_219;
  }

  if (v237 == 1)
  {
    v200 = +[IMRGLog registration];
    if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
    {
      v236[1] = 0;
      _os_log_impl(&_mh_execute_header, v200, OS_LOG_TYPE_DEFAULT, " ********************************************************************", &v236[1], 2u);
    }

    v201 = +[IMRGLog registration];
    if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
    {
      v236[1] = 0;
      _os_log_impl(&_mh_execute_header, v201, OS_LOG_TYPE_DEFAULT, " *****************  NEEDS ENCRYPTION IDENTITY ROLL  *****************", &v236[1], 2u);
    }

    v202 = +[IMRGLog registration];
    if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
    {
      v236[1] = 0;
      _os_log_impl(&_mh_execute_header, v202, OS_LOG_TYPE_DEFAULT, " ********************************************************************", &v236[1], 2u);
    }

    v199 = +[NSNotificationCenter defaultCenter];
    [v199 __mainThreadPostNotificationName:@"__kIDSRegistrationKeyManagerEncryptionIdentityNeedsRollNotification" object:selfCopy];
    goto LABEL_218;
  }

LABEL_219:
  _Block_object_dispose(&v238, 8);
}

- (IDSRegistrationKeyManager)initWithSystemMonitor:(id)monitor keychainWrapper:(id)wrapper loadingRateLimiter:(id)limiter identityDataSource:(id)source allowPairingIdentities:(BOOL)identities allowRegenerateRegisteredIdentity:(BOOL)identity keyPairProvider:(id)provider ktRegistrationDataManager:(id)self0
{
  monitorCopy = monitor;
  wrapperCopy = wrapper;
  limiterCopy = limiter;
  sourceCopy = source;
  providerCopy = provider;
  managerCopy = manager;
  v37 = monitorCopy;
  if (!monitorCopy)
  {
    sub_100915CE8(a2, self);
  }

  v18 = wrapperCopy;
  if (wrapperCopy)
  {
    if (sourceCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_100915D64(a2, self);
    if (sourceCopy)
    {
      goto LABEL_5;
    }
  }

  sub_100915DE0(a2, self);
LABEL_5:
  v38.receiver = self;
  v38.super_class = IDSRegistrationKeyManager;
  v19 = [(IDSRegistrationKeyManager *)&v38 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_systemMonitor, monitor);
    [(IMSystemMonitor *)v20->_systemMonitor addListener:v20];
    [(IMSystemMonitor *)v20->_systemMonitor setActive:1];
    [(IMSystemMonitor *)v20->_systemMonitor setWatchesDataProtectionLockState:1];
    objc_storeStrong(&v20->_keychainWrapper, wrapper);
    objc_storeStrong(&v20->_loadingRateLimiter, limiter);
    objc_storeStrong(&v20->_identityDataSource, source);
    v21 = [[IDSPerServiceApplicationKeyManager alloc] initWithIdentityDataSource:sourceCopy];
    applicationKeyManager = v20->_applicationKeyManager;
    v20->_applicationKeyManager = v21;

    v20->_allowPairingIdentities = identities;
    v20->_allowRegenerateRegisteredIdentity = identity;
    objc_storeStrong(&v20->_keyPairProvider, provider);
    v23 = objc_alloc_init(IDSNGMKeyLoadingErrorContainer);
    recentKeyLoadingErrors = v20->_recentKeyLoadingErrors;
    v20->_recentKeyLoadingErrors = v23;

    objc_storeStrong(&v20->_ktRegistrationDataManager, manager);
    v25 = objc_alloc_init(IDSRegistrationKeyConfig);
    config = v20->_config;
    v20->_config = v25;

    v27 = objc_alloc_init(NSRecursiveLock);
    lock = v20->_lock;
    v20->_lock = v27;

    [(IDSRegistrationKeyManager *)v20 _subscribeForTimeChangeNotification];
    v29 = +[NSDistributedNotificationCenter defaultCenter];
    [v29 addObserver:v20 selector:"_ktDataNeedsUpdate:" name:@"KTEnrollmentSignatureUpdated" object:0];
  }

  return v20;
}

- (IDSRegistrationKeyManager)init
{
  v3 = +[IMSystemMonitor sharedInstance];
  v4 = objc_alloc_init(IDSKeychainWrapper);
  v5 = [[IDSRateLimiter alloc] initWithLimit:5 timeLimit:86400.0];
  v6 = [[IDSRegistrationKeyManagerIdentityDataSource alloc] initWithKeychainWrapper:v4];
  v7 = [IDSKTRegistrationDataManager alloc];
  v8 = objc_alloc_init(TransparencyDaemon);
  v9 = [(IDSKTRegistrationDataManager *)v7 initWithIdentityDataSource:v6 transparencyDaemon:v8];

  v10 = objc_alloc_init(IDSRegistrationKeyManagerKeyPairProvider);
  v11 = [(IDSRegistrationKeyManager *)self initWithSystemMonitor:v3 keychainWrapper:v4 loadingRateLimiter:v5 identityDataSource:v6 allowPairingIdentities:1 allowRegenerateRegisteredIdentity:1 keyPairProvider:v10 ktRegistrationDataManager:v9];

  return v11;
}

- (void)dealloc
{
  systemMonitor = [(IDSRegistrationKeyManager *)self systemMonitor];
  [systemMonitor _removeEarlyListener:self];

  systemMonitor2 = [(IDSRegistrationKeyManager *)self systemMonitor];
  [systemMonitor2 removeListener:self];

  [(IDSRegistrationKeyManager *)self _unsubscribeForTimeChangeNotification];
  v5.receiver = self;
  v5.super_class = IDSRegistrationKeyManager;
  [(IDSRegistrationKeyManager *)&v5 dealloc];
}

- (void)setForceRoll:(BOOL)roll
{
  if (self->_forceRoll != roll)
  {
    v12 = v3;
    v13 = v4;
    rollCopy = roll;
    self->_forceRoll = roll;
    v6 = +[IMRGLog registration];
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (rollCopy)
    {
      if (v7)
      {
        v11 = 0;
        v8 = "!!WILL FORCE AN EC KEY ROLL ON NEXT REGISTER!!";
        v9 = &v11;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      }
    }

    else if (v7)
    {
      v10 = 0;
      v8 = "!!NO LONGER FORCING EC KEY ROLL!!";
      v9 = &v10;
      goto LABEL_7;
    }
  }
}

- (id)generateCSRForUserID:(id)d
{
  dCopy = d;
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:0];
  if (dCopy)
  {
    config = [(IDSRegistrationKeyManager *)self config];
    if ([config privateKey])
    {
      config2 = [(IDSRegistrationKeyManager *)self config];
      publicKey = [config2 publicKey];

      if (publicKey)
      {
        v8 = [dCopy dataUsingEncoding:4];
        sHA1HexString = [v8 SHA1HexString];

        v21[0] = kSecOidCommonName;
        v21[1] = sHA1HexString;
        v10 = [NSArray arrayWithObjects:v21 count:2];
        v22 = v10;
        v11 = [NSArray arrayWithObjects:&v22 count:1];
        v23 = v11;
        v12 = [NSArray arrayWithObjects:&v23 count:1];

        config3 = [(IDSRegistrationKeyManager *)self config];
        [config3 publicKey];
        config4 = [(IDSRegistrationKeyManager *)self config];
        [config4 privateKey];
        CertificateRequest = SecGenerateCertificateRequest();

        v16 = +[IMRGLog registration];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = CertificateRequest;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Generated CSR with RSA public/private keypair {csr: %@}", buf, 0xCu);
        }

        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  sHA1HexString = +[IMRGLog registration];
  if (os_log_type_enabled(sHA1HexString, OS_LOG_TYPE_DEFAULT))
  {
    config5 = [(IDSRegistrationKeyManager *)self config];
    privateKey = [config5 privateKey];
    config6 = [(IDSRegistrationKeyManager *)self config];
    *buf = 138412802;
    v25 = dCopy;
    v26 = 2048;
    v27 = privateKey;
    v28 = 2112;
    publicKey2 = [config6 publicKey];
    _os_log_impl(&_mh_execute_header, sHA1HexString, OS_LOG_TYPE_DEFAULT, "Failed generating CSR due to insufficient context {userID: %@, privateKey: %p, publicKey: %@}", buf, 0x20u);
  }

  CertificateRequest = 0;
LABEL_11:

  return CertificateRequest;
}

- (__SecKey)fullIdentityForKeyIndex:(unsigned __int16)index
{
  indexCopy = index;
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  v5 = [(IDSPerServiceApplicationKeyManager *)self->_applicationKeyManager fullIdentityForKeyIndex:indexCopy];
  [(NSRecursiveLock *)self->_lock unlock];
  return v5;
}

- (id)fullDeviceIdentityContainerUsableForKeyType:(unint64_t)type
{
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  if (type >= 2 && (type != 2 || self->_failedToGeneratedPublicDataForNGMIdentity))
  {
    goto LABEL_9;
  }

  config = [(IDSRegistrationKeyManager *)self config];
  unregisteredIdentityContainer = [config unregisteredIdentityContainer];
  config2 = [(IDSRegistrationKeyManager *)self config];
  v8 = config2;
  if (unregisteredIdentityContainer)
  {
    [config2 unregisteredIdentityContainer];
  }

  else
  {
    [config2 registeredIdentityContainer];
  }
  v9 = ;

  if (!v9)
  {
LABEL_9:
    v10 = +[IMRGLog registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100915E5C(self);
    }

    v9 = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];

  return v9;
}

- (id)previousFullDeviceIdentityContainer
{
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  config = [(IDSRegistrationKeyManager *)self config];
  previousRegisteredIdentityContainer = [config previousRegisteredIdentityContainer];

  if (!previousRegisteredIdentityContainer)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100915EE8(self);
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];

  return previousRegisteredIdentityContainer;
}

- (__SecKey)copyPublicIdentityDataToRegisterForKeyIndex:(unsigned __int16)index withError:(id *)error
{
  indexCopy = index;
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  v7 = [(IDSPerServiceApplicationKeyManager *)self->_applicationKeyManager copyPublicIdentityDataToRegisterForKeyIndex:indexCopy withError:error];
  [(NSRecursiveLock *)self->_lock unlock];
  return v7;
}

- (id)copyKTRegistrationDataToRegisterForKeyIndex:(unsigned __int16)index withError:(id *)error
{
  indexCopy = index;
  [(NSRecursiveLock *)self->_lock lock:index];
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  ktRegistrationDataManager = self->_ktRegistrationDataManager;
  v12 = 0;
  v7 = [(IDSKTRegistrationDataManager *)ktRegistrationDataManager copyKTRegistrationDataToRegisterForKeyIndex:indexCopy isRegistered:0 withError:&v12];
  v8 = v12;
  if (!v7)
  {
    v9 = self->_ktRegistrationDataManager;
    v11 = 0;
    v7 = [(IDSKTRegistrationDataManager *)v9 copyKTRegistrationDataToRegisterForKeyIndex:indexCopy isRegistered:1 withError:&v11];
  }

  [(NSRecursiveLock *)self->_lock unlock];

  return v7;
}

- (id)fetchRegistrationStatusProvider
{
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  createRegistrationStatusProvider = [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager createRegistrationStatusProvider];
  [(NSRecursiveLock *)self->_lock unlock];

  return createRegistrationStatusProvider;
}

- (void)_handleTransparencySignatureResponse:(id)response error:(id)error
{
  lock = self->_lock;
  errorCopy = error;
  responseCopy = response;
  [(NSRecursiveLock *)lock lock];
  LODWORD(lock) = [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager handleTransparencySignatureResponse:responseCopy error:errorCopy];

  if (lock)
  {
    [(IDSRegistrationKeyManager *)self _notifyUnregisteredKTData];
  }

  v9 = self->_lock;

  [(NSRecursiveLock *)v9 unlock];
}

- (void)_handleTransparencySignatureResponseForRegistration:(id)registration error:(id)error
{
  lock = self->_lock;
  errorCopy = error;
  registrationCopy = registration;
  [(NSRecursiveLock *)lock lock];
  [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager handleTransparencySignatureResponse:registrationCopy error:errorCopy];

  v9 = self->_lock;

  [(NSRecursiveLock *)v9 unlock];
}

- (id)publicMessageProtectionIdentityDataToRegisterWithError:(id *)error
{
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  config = [(IDSRegistrationKeyManager *)self config];
  unregisteredIdentityContainer = [config unregisteredIdentityContainer];
  config2 = [(IDSRegistrationKeyManager *)self config];
  v8 = config2;
  if (unregisteredIdentityContainer)
  {
    [config2 unregisteredIdentityContainer];
  }

  else
  {
    [config2 registeredIdentityContainer];
  }
  v9 = ;

  if (![v9 hasNGMIdentity] || (objc_msgSend(v9, "ngmVersion"), v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v11 = +[IMRGLog registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Asked for public identity, but missing NGM identity. Attempting to repair", buf, 2u);
    }

    legacyFullIdentity = [v9 legacyFullIdentity];
    v13 = [(IDSRegistrationKeyManager *)self _generateUnregisteredIdentityWithExistingLegacyIdentity:legacyFullIdentity existingNGMIdentity:0];

    if (v13)
    {
      config3 = [(IDSRegistrationKeyManager *)self config];
      unregisteredIdentityContainer2 = [config3 unregisteredIdentityContainer];
      config4 = [(IDSRegistrationKeyManager *)self config];
      v17 = config4;
      if (unregisteredIdentityContainer2)
      {
        [config4 unregisteredIdentityContainer];
      }

      else
      {
        [config4 registeredIdentityContainer];
      }
      v18 = ;

      v9 = v18;
    }
  }

  config5 = [(IDSRegistrationKeyManager *)self config];
  unregisteredIdentityContainer3 = [config5 unregisteredIdentityContainer];
  [(IDSNGMKeyLoadingErrorContainer *)self->_recentKeyLoadingErrors setHasUnregisteredContainer:unregisteredIdentityContainer3 != 0];

  config6 = [(IDSRegistrationKeyManager *)self config];
  registeredIdentityContainer = [config6 registeredIdentityContainer];
  [(IDSNGMKeyLoadingErrorContainer *)self->_recentKeyLoadingErrors setHasRegisteredContainer:registeredIdentityContainer != 0];

  if (v9)
  {
    v23 = [v9 publicIdentityWithError:error];
    if (!v23)
    {
      v30 = +[IMRGLog registration];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_10091609C(error, self);
      }

      ngmVersion = 0;
      v27 = 0;
      identityData2 = 0;
      v29 = 0;
      goto LABEL_70;
    }

    if (([v9 shouldRollNGMEncryptionIdentity] & 1) == 0)
    {
      config7 = [(IDSRegistrationKeyManager *)self config];
      unappliedRollingTicket = [config7 unappliedRollingTicket];
      if (unappliedRollingTicket)
      {
      }

      else
      {
        forceRoll = self->_forceRoll;

        if (!forceRoll)
        {
          identityData2 = 0;
          v27 = 0;
          v30 = 0;
LABEL_57:
          ngmPublicDeviceIdentity = [v23 ngmPublicDeviceIdentity];
          identityData = [ngmPublicDeviceIdentity identityData];

          ngmPublicDeviceIdentity2 = [v23 ngmPublicDeviceIdentity];
          prekeyData = [ngmPublicDeviceIdentity2 prekeyData];

          v27 = prekeyData;
          identityData2 = identityData;
LABEL_58:
          failedToGeneratedPublicDataForNGMIdentity = self->_failedToGeneratedPublicDataForNGMIdentity;
          if (identityData2 && v27)
          {
            v53 = 0;
          }

          else
          {
            v54 = +[IMRGLog registration];
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              ngmPublicDeviceIdentity3 = [v23 ngmPublicDeviceIdentity];
              v61 = [ngmPublicDeviceIdentity3 debugDescription];
              v62 = v61;
              v63 = @"NO";
              if (identityData2)
              {
                v64 = @"YES";
              }

              else
              {
                v64 = @"NO";
              }

              *buf = 138412802;
              v69 = v61;
              v71 = v64;
              v70 = 2112;
              if (v27)
              {
                v63 = @"YES";
              }

              v72 = 2112;
              v73 = v63;
              _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Failed to get NGM public data to register -- returning nil for EC {ngmPublicDeviceIdentity: %@, NGMIdentityToRegister: %@, NGMPrekeyToRegister: %@}", buf, 0x20u);
            }

            v53 = 1;
          }

          self->_failedToGeneratedPublicDataForNGMIdentity = v53;
          if (failedToGeneratedPublicDataForNGMIdentity != v53)
          {
            v55 = +[IMUserDefaults sharedDefaults];
            [v55 setAppBool:self->_failedToGeneratedPublicDataForNGMIdentity forKey:@"failedToGeneratedPublicDataForNGMIdentity"];
          }

          legacyPublicIdentity = [v23 legacyPublicIdentity];
          v29 = [legacyPublicIdentity dataRepresentationWithError:error];

          if (!v29)
          {
            v57 = +[IMRGLog registration];
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              sub_100915FE4(error, v23);
            }
          }

          ngmVersion = [v23 ngmVersion];
LABEL_70:

          goto LABEL_71;
        }
      }
    }

    config8 = [(IDSRegistrationKeyManager *)self config];
    unappliedRollingTicket2 = [config8 unappliedRollingTicket];

    if (unappliedRollingTicket2)
    {
      v30 = 0;
    }

    else
    {
      v67 = 0;
      unappliedRollingTicket2 = [v9 ngmKeyRollingTicketWithError:&v67];
      v30 = v67;
      if (IMGetAppBoolForKey())
      {
        if (unappliedRollingTicket2)
        {
          v34 = @"Rolling key";
        }

        else
        {
          v34 = @"Tried and failed to generate new key to roll";
        }

        sub_100450174(1, @"NGM Key Rolling", v34, 1109);
      }

      if (!unappliedRollingTicket2)
      {
        v42 = +[IMRGLog registration];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_100915F74();
        }

        unappliedRollingTicket2 = 0;
        v27 = 0;
        identityData2 = 0;
        goto LABEL_48;
      }
    }

    config9 = [(IDSRegistrationKeyManager *)self config];
    [config9 setUnappliedRollingTicket:unappliedRollingTicket2];

    config10 = [(IDSRegistrationKeyManager *)self config];
    unregisteredIdentityContainer4 = [config10 unregisteredIdentityContainer];

    if (!unregisteredIdentityContainer4)
    {
      config11 = [(IDSRegistrationKeyManager *)self config];
      registeredIdentityContainer2 = [config11 registeredIdentityContainer];
      config12 = [(IDSRegistrationKeyManager *)self config];
      [config12 setUnregisteredIdentityContainer:registeredIdentityContainer2];

      if (![(IDSRegistrationKeyManager *)self _save])
      {
        [(NSRecursiveLock *)self->_lock unlock];

        ngmVersion = 0;
        v27 = 0;
        identityData2 = 0;
        v29 = 0;
        goto LABEL_76;
      }
    }

    identityData2 = [unappliedRollingTicket2 identityData];
    prekeyData2 = [unappliedRollingTicket2 prekeyData];
    v27 = prekeyData2;
    if (identityData2 && prekeyData2)
    {
LABEL_49:
      if (self->_forceRoll)
      {
        v47 = +[IMRGLog registration];
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "!!FORCING A ROLL!!", buf, 2u);
        }
      }

      [(IDSNGMKeyLoadingErrorContainer *)self->_recentKeyLoadingErrors setRollingError:v30];

      if (identityData2 && v27)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    v42 = +[IMRGLog registration];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      ngmPublicDeviceIdentity4 = [v23 ngmPublicDeviceIdentity];
      v43 = [ngmPublicDeviceIdentity4 debugDescription];
      v44 = v43;
      v45 = @"NO";
      *buf = 138413058;
      v69 = unappliedRollingTicket2;
      if (identityData2)
      {
        v46 = @"YES";
      }

      else
      {
        v46 = @"NO";
      }

      if (v27)
      {
        v45 = @"YES";
      }

      v70 = 2112;
      v71 = v43;
      v72 = 2112;
      v73 = v46;
      v74 = 2112;
      v75 = v45;
      _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Failed to get NGM public data from ticket to register -- cancelling roll {ticket: %@, ngmPublicDeviceIdentity: %@, NGMIdentityToRegister: %@, NGMPrekeyToRegister: %@}", buf, 0x2Au);
    }

LABEL_48:

    goto LABEL_49;
  }

  v23 = +[IMRGLog registration];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_100916184(self);
  }

  ngmVersion = 0;
  v27 = 0;
  identityData2 = 0;
  v29 = 0;
LABEL_71:

  if (error)
  {
    v58 = *error;
  }

  else
  {
    v58 = 0;
  }

  [(IDSNGMKeyLoadingErrorContainer *)self->_recentKeyLoadingErrors setIdentityToRegisterError:v58];
  [(NSRecursiveLock *)self->_lock unlock];
  if (v29)
  {
    v59 = [[IDSPublicIdentityData alloc] initWithPublicLegacyIdentityData:v29 publicNGMIdentityData:identityData2 publicNGMPrekeyData:v27 NGMVersion:ngmVersion];
    goto LABEL_77;
  }

LABEL_76:
  v59 = 0;
LABEL_77:

  return v59;
}

- (id)publicMessageProtectionDeviceIdentityContainerToRegister:(id *)register
{
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  config = [(IDSRegistrationKeyManager *)self config];
  unregisteredIdentityContainer = [config unregisteredIdentityContainer];
  config2 = [(IDSRegistrationKeyManager *)self config];
  v8 = config2;
  if (unregisteredIdentityContainer)
  {
    [config2 unregisteredIdentityContainer];
  }

  else
  {
    [config2 registeredIdentityContainer];
  }
  v9 = ;

  if (!v9)
  {
    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100916184(self);
    }

    goto LABEL_12;
  }

  v10 = [v9 publicIdentityWithError:register];
  v11 = +[IMRGLog registration];
  v12 = v11;
  if (!v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10091609C(register, self);
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    config3 = [(IDSRegistrationKeyManager *)self config];
    unregisteredIdentityContainer2 = [config3 unregisteredIdentityContainer];
    config4 = [(IDSRegistrationKeyManager *)self config];
    registeredIdentityContainer = [config4 registeredIdentityContainer];
    v18 = 138478339;
    v19 = v10;
    v20 = 2113;
    v21 = unregisteredIdentityContainer2;
    v22 = 2113;
    v23 = registeredIdentityContainer;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Returning publicIdentity to register {publicIdentityContainer: %{private}@, unregisteredContainer: %{private}@, registeredContainer: %{private}@}", &v18, 0x20u);
  }

LABEL_13:

  [(NSRecursiveLock *)self->_lock unlock];

  return v10;
}

- (id)_generateIdentityWithExistingIdentity:(id)identity identifier:(int64_t)identifier dataProtectionClass:(int64_t)class
{
  identityCopy = identity;
  if (identityCopy)
  {
    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = identityCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Immediately returning existing message protection identity {identity: %@}", buf, 0xCu);
    }

    v10 = identityCopy;
  }

  else
  {
    identityDataSource = [(IDSRegistrationKeyManager *)self identityDataSource];
    v17 = 0;
    v12 = [identityDataSource generateLegacyIdentityWithIdentifier:identifier dataProtectionClass:class error:&v17];
    v13 = v17;

    v14 = +[IMRGLog registration];
    v15 = v14;
    if (v12)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v19 = v13;
        v20 = 2048;
        classCopy = class;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Created new message protection identity {error: %@, protectionClass: %ld, identity: %@}", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_100916210();
    }

    v10 = v12;
  }

  return v10;
}

- (id)_getPublicMessageProtectionDataForIdentity:(id)identity
{
  identityCopy = identity;
  v4 = identityCopy;
  if (identityCopy)
  {
    v14 = 0;
    v5 = [identityCopy publicIdentityWithError:&v14];
    v6 = v14;
    v7 = v6;
    if (v5)
    {
      v13 = v6;
      v8 = [v5 dataRepresentationWithError:&v13];
      v9 = v13;

      v10 = +[IMRGLog registration];
      v11 = v10;
      if (v8)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_100916280();
        }
      }

      else
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          sub_1009162F4();
        }

        v8 = 0;
      }
    }

    else
    {
      v11 = +[IMRGLog registration];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_100916360();
      }

      v8 = 0;
      v9 = v7;
    }
  }

  else
  {
    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1009163CC();
    }

    v8 = 0;
  }

  return v8;
}

- (_SecMPFullIdentity)copyMessageProtectionIdentity
{
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  config = [(IDSRegistrationKeyManager *)self config];
  registeredIdentityContainer = [config registeredIdentityContainer];
  legacyFullIdentity = [registeredIdentityContainer legacyFullIdentity];

  fullIdentity = [legacyFullIdentity fullIdentity];
  v7 = fullIdentity;
  if (fullIdentity)
  {
    CFRetain(fullIdentity);
  }

  else
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_100916400();
    }

    IMLogBacktrace();
  }

  [(NSRecursiveLock *)self->_lock unlock];

  return v7;
}

- (_SecMPFullIdentity)latestCopyMessageProtectionIdentityForDataProtectionClass:(unsigned int)class
{
  v3 = [(IDSRegistrationKeyManager *)self latestMessageProtectionFullIdentityForDataProtectionClass:*&class];
  fullIdentity = [v3 fullIdentity];
  v5 = fullIdentity;
  if (fullIdentity)
  {
    CFRetain(fullIdentity);
  }

  else
  {
    v6 = +[IMRGLog registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_10091643C();
    }

    IMLogBacktrace();
  }

  return v5;
}

- (_SecMPFullIdentity)copyPreviousMessageProtectionIdentity
{
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  config = [(IDSRegistrationKeyManager *)self config];
  previousRegisteredIdentityContainer = [config previousRegisteredIdentityContainer];
  legacyFullIdentity = [previousRegisteredIdentityContainer legacyFullIdentity];

  fullIdentity = [legacyFullIdentity fullIdentity];
  v7 = fullIdentity;
  if (fullIdentity)
  {
    CFRetain(fullIdentity);
  }

  else
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No previous message protection identity present -- not returning previous message protection identity", v10, 2u);
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];

  return v7;
}

- (id)latestMessageProtectionFullIdentityForDataProtectionClass:(unsigned int)class
{
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  if (class)
  {
    if (class == 1)
    {
      v13 = 0;
      [(IDSRegistrationKeyManager *)self _loadClassAIdentityIfNeeded:&v13];
      v5 = v13;
      config = [(IDSRegistrationKeyManager *)self config];
      identityClassA = [config identityClassA];
    }

    else
    {
      v11 = 0;
      [(IDSRegistrationKeyManager *)self _loadClassDIdentityIfNeeded:&v11];
      v5 = v11;
      config = [(IDSRegistrationKeyManager *)self config];
      identityClassA = [config identityClassD];
    }
  }

  else
  {
    v12 = 0;
    [(IDSRegistrationKeyManager *)self _loadClassCIdentityIfNeeded:&v12];
    v5 = v12;
    config = [(IDSRegistrationKeyManager *)self config];
    identityClassA = [config identityClassC];
  }

  v8 = identityClassA;

  if (!v8)
  {
    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1009164AC();
    }

    IMLogBacktrace();
  }

  [(NSRecursiveLock *)self->_lock unlock];

  return v8;
}

- (id)publicMessageProtectionDataToRegisterForClassA
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(IDSRegistrationKeyManager *)self latestMessageProtectionFullIdentityForDataProtectionClass:1];
  v4 = [(IDSRegistrationKeyManager *)self _getPublicMessageProtectionDataForIdentity:v3];
  [(NSRecursiveLock *)self->_lock unlock];

  return v4;
}

- (id)publicMessageProtectionDataToRegisterForClassC
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(IDSRegistrationKeyManager *)self latestMessageProtectionFullIdentityForDataProtectionClass:0];
  v4 = [(IDSRegistrationKeyManager *)self _getPublicMessageProtectionDataForIdentity:v3];
  [(NSRecursiveLock *)self->_lock unlock];

  return v4;
}

- (id)publicMessageProtectionDataToRegisterForClassD
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(IDSRegistrationKeyManager *)self latestMessageProtectionFullIdentityForDataProtectionClass:2];
  v4 = [(IDSRegistrationKeyManager *)self _getPublicMessageProtectionDataForIdentity:v3];
  [(NSRecursiveLock *)self->_lock unlock];

  return v4;
}

- (id)publicMessageProtectionData
{
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  config = [(IDSRegistrationKeyManager *)self config];
  registeredIdentityContainer = [config registeredIdentityContainer];
  legacyFullIdentity = [registeredIdentityContainer legacyFullIdentity];
  v6 = [(IDSRegistrationKeyManager *)self _getPublicMessageProtectionDataForIdentity:legacyFullIdentity];

  return v6;
}

- (void)_ensureIdentity:(id *)identity savedIndentity:(id *)indentity protectionClass:(int64_t)class didSaveIdentity:(BOOL *)saveIdentity
{
  if (*indentity)
  {
    goto LABEL_2;
  }

  if (!*identity)
  {
    if (class > 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = qword_1009AB588[class];
    }

    v12 = [(IDSRegistrationKeyManager *)self _generateIdentityWithExistingIdentity:0 identifier:v11 dataProtectionClass:class];
    v13 = *identity;
    *identity = v12;

    [(IDSRegistrationKeyManager *)self _save];
LABEL_2:
    if (!*identity)
    {
      return;
    }
  }

  [(IDSRegistrationKeyManager *)self _saveClassXIdentity:identity savedIdentity:indentity protectionClass:class savedUnsavedIdentity:saveIdentity];
}

- (void)_subscribeForTimeChangeNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_10033689C, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_unsubscribeForTimeChangeNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SignificantTimeChangeNotification", 0);
}

- (void)_retryGenerationIfNeeded
{
  if (![(IDSRegistrationKeyManager *)self _isUnderFirstDataProtectionLock])
  {
    [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
    [(NSRecursiveLock *)self->_lock lock];
    config = [(IDSRegistrationKeyManager *)self config];
    unregisteredIdentityContainer = [config unregisteredIdentityContainer];
    config2 = [(IDSRegistrationKeyManager *)self config];
    v6 = config2;
    if (unregisteredIdentityContainer)
    {
      [config2 unregisteredIdentityContainer];
    }

    else
    {
      [config2 registeredIdentityContainer];
    }
    v7 = ;

    if (![v7 hasNGMIdentity] || (objc_msgSend(v7, "ngmVersion"), v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
    {
      v9 = +[IMRGLog registration];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Retrying generation due to missing NGM component.", v12, 2u);
      }

      legacyFullIdentity = [v7 legacyFullIdentity];
      v11 = [(IDSRegistrationKeyManager *)self _generateUnregisteredIdentityWithExistingLegacyIdentity:legacyFullIdentity existingNGMIdentity:0];

      if (v11)
      {
        [(IDSRegistrationKeyManager *)self _notifyUnregisteredIdentityRegenerated];
      }
    }

    [(NSRecursiveLock *)self->_lock unlock];
  }
}

- (void)_retryGenerationAfterDelay
{
  [(IDSRegistrationKeyManager *)self _generationRetryDelay];
  v4 = dispatch_time(0, (v3 * 1000000000.0));
  v5 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100336B74;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_after(v4, v5, block);
}

- (BOOL)_generateUnregisteredIdentityWithExistingLegacyIdentity:(id)identity existingNGMIdentity:(id)mIdentity
{
  identityCopy = identity;
  mIdentityCopy = mIdentity;
  config = [(IDSRegistrationKeyManager *)self config];
  unregisteredIdentityContainer = [config unregisteredIdentityContainer];
  selfCopy = self;
  if (([unregisteredIdentityContainer hasNGMIdentity] & 1) == 0)
  {

LABEL_7:
    v22 = +[IMRGLog registration];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Generating unregistered identity", buf, 2u);
    }

    if (IMGetAppBoolForKey())
    {
      sub_100450174(1, @"Key Rolling", @"Generating new identity", 1109);
    }

    identityDataSource = [(IDSRegistrationKeyManager *)selfCopy identityDataSource];
    v55 = 0;
    v56 = 0;
    v24 = [identityDataSource generateIdentityContainerWithIdentifier:1 existingLegacyIdentity:identityCopy existingNGMIdentity:mIdentityCopy dataProtectionClass:0 nonLegacyError:&v56 error:&v55];
    v25 = v56;
    v18 = v55;

    [(IDSNGMKeyLoadingErrorContainer *)selfCopy->_recentKeyLoadingErrors setGenerationError:v25];
    config2 = [(IDSRegistrationKeyManager *)selfCopy config];
    registeredIdentityContainer = [config2 registeredIdentityContainer];
    v28 = [v24 isEqual:registeredIdentityContainer];

    if (v28)
    {
      v29 = +[IMRGLog registration];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        config3 = [(IDSRegistrationKeyManager *)selfCopy config];
        registeredIdentityContainer2 = [config3 registeredIdentityContainer];
        *buf = 138412546;
        v58 = v24;
        v59 = 2112;
        v60 = registeredIdentityContainer2;
        v32 = "generatedIdentityContainer isEqual to registeredIdentityContainer -- no changes {generatedIdentityContainer: %@, registeredIdentityContainer: %@}";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v32, buf, 0x16u);

        goto LABEL_18;
      }

      goto LABEL_18;
    }

    config4 = [(IDSRegistrationKeyManager *)selfCopy config];
    unregisteredIdentityContainer2 = [config4 unregisteredIdentityContainer];
    v35 = [v24 isEqual:unregisteredIdentityContainer2];

    v29 = +[IMRGLog registration];
    v36 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    if (v35)
    {
      if (v36)
      {
        config3 = [(IDSRegistrationKeyManager *)selfCopy config];
        registeredIdentityContainer2 = [config3 unregisteredIdentityContainer];
        *buf = 138412546;
        v58 = v24;
        v59 = 2112;
        v60 = registeredIdentityContainer2;
        v32 = "generatedIdentityContainer isEqual unregisteredIdentityContainer -- no changes {generatedIdentityContainer: %@, unregisteredIdentityContainer: %@}";
        goto LABEL_17;
      }

LABEL_18:

      v21 = 0;
LABEL_35:

      goto LABEL_36;
    }

    if (v36)
    {
      *buf = 138412290;
      v58 = v24;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "generatedIdentityContainer is different from the registered and unregistered container -- has changes -- Updating unregistered container {generatedIdentityContainer: %@}", buf, 0xCu);
    }

    config5 = [(IDSRegistrationKeyManager *)selfCopy config];
    [config5 setUnregisteredIdentityContainer:v24];

    config6 = [(IDSRegistrationKeyManager *)selfCopy config];
    unregisteredIdentityContainer3 = [config6 unregisteredIdentityContainer];

    if (unregisteredIdentityContainer3)
    {
      v40 = +[FTDeviceSupport sharedInstance];
      productBuildVersion = [v40 productBuildVersion];
      config7 = [(IDSRegistrationKeyManager *)selfCopy config];
      [config7 setBuildOfUnregisteredIdentityGeneration:productBuildVersion];

      v43 = +[IMRGLog registration];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        config8 = [(IDSRegistrationKeyManager *)selfCopy config];
        buildOfUnregisteredIdentityGeneration = [config8 buildOfUnregisteredIdentityGeneration];
        *buf = 138412290;
        v58 = buildOfUnregisteredIdentityGeneration;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Generated a new unregistered identity {build: %@}", buf, 0xCu);
      }
    }

    else
    {
      v46 = +[IMRGLog registration];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        sub_100916528();
      }

      if (IMGetAppBoolForKey())
      {
        sub_100450174(1, @"Key Rolling", @"Failed to generate new identity", 1109);
      }
    }

    +[IDSMessageMetricReporter noteKeyGenerationForMetric];
    config9 = [(IDSRegistrationKeyManager *)selfCopy config];
    unregisteredIdentityContainer4 = [config9 unregisteredIdentityContainer];
    if ([unregisteredIdentityContainer4 hasNGMIdentity])
    {
      config10 = [(IDSRegistrationKeyManager *)selfCopy config];
      unregisteredIdentityContainer5 = [config10 unregisteredIdentityContainer];
      ngmVersion = [unregisteredIdentityContainer5 ngmVersion];

      if (ngmVersion)
      {
        selfCopy->_generationRetryCount = 0;
LABEL_34:
        [(IDSRegistrationKeyManager *)selfCopy _save];
        v21 = 1;
        identityCopy = v53;
        goto LABEL_35;
      }
    }

    else
    {
    }

    ++selfCopy->_generationRetryCount;
    [(IDSRegistrationKeyManager *)selfCopy _retryGenerationAfterDelay];
    goto LABEL_34;
  }

  config11 = [(IDSRegistrationKeyManager *)self config];
  unregisteredIdentityContainer6 = [config11 unregisteredIdentityContainer];
  ngmVersion2 = [unregisteredIdentityContainer6 ngmVersion];
  [(IDSRegistrationKeyManager *)self identityDataSource];
  v13 = mIdentityCopy;
  v15 = v14 = identityCopy;
  v16 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v15 ngmVersion]);
  v17 = [ngmVersion2 isEqualToNumber:v16];

  identityCopy = v14;
  mIdentityCopy = v13;

  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }

  v18 = +[IMRGLog registration];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    config12 = [(IDSRegistrationKeyManager *)selfCopy config];
    unregisteredIdentityContainer7 = [config12 unregisteredIdentityContainer];
    *buf = 138412290;
    v58 = unregisteredIdentityContainer7;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Called _generateUnregisteredIdentityWithExistingLegacyIdentity but we have a valid unregisteredIdentity -- no changed {unregisteredIdentityContainer: %@}", buf, 0xCu);
  }

  v21 = 0;
LABEL_36:

  return v21;
}

- (void)_notifyUnregisteredIdentityRegenerated
{
  config = [(IDSRegistrationKeyManager *)self config];
  unregisteredIdentityContainer = [config unregisteredIdentityContainer];
  if (unregisteredIdentityContainer)
  {
  }

  else
  {
    hasUnregisteredIdentity = [(IDSPerServiceApplicationKeyManager *)self->_applicationKeyManager hasUnregisteredIdentity];

    if ((hasUnregisteredIdentity & 1) == 0)
    {
      return;
    }
  }

  self->_needsReRegister = 1;
  [(IDSRegistrationKeyManager *)self _notifyRegenerateDelay];
  v7 = v6;
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Delaying notification of identity regeneration {delay: %f seconds}", buf, 0xCu);
  }

  v9 = dispatch_time(0, (v7 * 1000000000.0));
  v10 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100337370;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_after(v9, v10, block);
}

- (BOOL)registrationNeedsKTDataUpdated
{
  [(NSRecursiveLock *)self->_lock lock];
  registrationNeedKTDataUpdated = [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager registrationNeedKTDataUpdated];
  [(NSRecursiveLock *)self->_lock unlock];
  return registrationNeedKTDataUpdated;
}

- (void)_notifyUnregisteredKTData
{
  if ([(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager hasUnregisteredKTData])
  {
    self->_needsReRegister = 1;
    [(IDSRegistrationKeyManager *)self _notifyKTReregisterDelay];
    v4 = v3;
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Delaying notification of unregistered KT data {delay: %f seconds}", buf, 0xCu);
    }

    v6 = dispatch_time(0, (v4 * 1000000000.0));
    v7 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100337664;
    block[3] = &unk_100BD6ED0;
    block[4] = self;
    dispatch_after(v6, v7, block);
  }
}

- (id)fullMessageProtectionIdentity
{
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  config = [(IDSRegistrationKeyManager *)self config];
  registeredIdentityContainer = [config registeredIdentityContainer];
  legacyFullIdentity = [registeredIdentityContainer legacyFullIdentity];

  [(NSRecursiveLock *)self->_lock unlock];

  return legacyFullIdentity;
}

- (id)previousFullMessageProtectionIdentity
{
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  config = [(IDSRegistrationKeyManager *)self config];
  previousRegisteredIdentityContainer = [config previousRegisteredIdentityContainer];
  legacyFullIdentity = [previousRegisteredIdentityContainer legacyFullIdentity];

  [(NSRecursiveLock *)self->_lock unlock];

  return legacyFullIdentity;
}

- (id)fullMessageProtectionIdentityForDataProtectionClass:(unsigned int)class
{
  v3 = [(IDSRegistrationKeyManager *)self latestCopyMessageProtectionIdentityForDataProtectionClass:*&class];
  if (v3)
  {
    v4 = v3;
    v5 = [[IDSMPFullLegacyIdentity alloc] initWithFullIdentity:v3];
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)notePublicIdentityDidRegisterLegacyData:(id)data ngmIdentityData:(id)identityData ngmPrekeyData:(id)prekeyData keyIndexToIdentityData:(id)toIdentityData
{
  dataCopy = data;
  identityDataCopy = identityData;
  prekeyDataCopy = prekeyData;
  toIdentityDataCopy = toIdentityData;
  [(NSRecursiveLock *)self->_lock lock];
  v14 = +[IMRGLog registration];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v154 = dataCopy;
    v155 = 2112;
    v156 = identityDataCopy;
    v157 = 2112;
    v158 = prekeyDataCopy;
    v159 = 2112;
    v160 = toIdentityDataCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Registration key manager noting registration of keys { legacyData: %@, ngmIdentityData: %@, ngmPrekeyData: %@, keyIndexToIdentityData: %@ }", buf, 0x2Au);
  }

  config = [(IDSRegistrationKeyManager *)self config];
  unregisteredIdentityContainer = [config unregisteredIdentityContainer];

  v129 = identityDataCopy;
  v130 = prekeyDataCopy;
  if (unregisteredIdentityContainer)
  {
    v135 = toIdentityDataCopy;
    config2 = [(IDSRegistrationKeyManager *)self config];
    unregisteredIdentityContainer2 = [config2 unregisteredIdentityContainer];
    v151 = 0;
    v19 = [unregisteredIdentityContainer2 publicIdentityWithError:&v151];
    v20 = v151;

    if (v19)
    {
      legacyPublicIdentity = [v19 legacyPublicIdentity];
      v150 = v20;
      v22 = [legacyPublicIdentity dataRepresentationWithError:&v150];
      v23 = v150;

      v137 = v22;
      if (!v22)
      {
        v24 = +[IMRGLog registration];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_100916564();
        }
      }

      config3 = [(IDSRegistrationKeyManager *)self config];
      unappliedRollingTicket = [config3 unappliedRollingTicket];

      if (unappliedRollingTicket)
      {
        config4 = [(IDSRegistrationKeyManager *)self config];
        unappliedRollingTicket2 = [config4 unappliedRollingTicket];
        identityData = [unappliedRollingTicket2 identityData];

        config5 = [(IDSRegistrationKeyManager *)self config];
        unappliedRollingTicket3 = [config5 unappliedRollingTicket];
        prekeyData = [unappliedRollingTicket3 prekeyData];
      }

      else
      {
        ngmPublicDeviceIdentity = [v19 ngmPublicDeviceIdentity];
        identityData = [ngmPublicDeviceIdentity identityData];

        config5 = [v19 ngmPublicDeviceIdentity];
        prekeyData = [config5 prekeyData];
      }

      if (identityData && prekeyData)
      {
LABEL_19:

        config6 = [(IDSRegistrationKeyManager *)self config];
        unregisteredIdentityContainer3 = [config6 unregisteredIdentityContainer];
        legacyFullIdentity = [unregisteredIdentityContainer3 legacyFullIdentity];
        v38 = [(IDSRegistrationKeyManager *)self _getPublicMessageProtectionDataForIdentity:legacyFullIdentity];

        if (dataCopy)
        {
          v39 = [v137 isEqualToData:dataCopy];
        }

        else
        {
          v39 = 0;
        }

        if (identityData == identityDataCopy)
        {
          v40 = 1;
        }

        else if (identityDataCopy)
        {
          v40 = [identityData isEqualToData:identityDataCopy];
        }

        else
        {
          v40 = 0;
        }

        if (prekeyData == v130)
        {
          config9 = 1;
        }

        else
        {
          if (!v130)
          {
            LODWORD(config9) = 0;
            goto LABEL_40;
          }

          config9 = [prekeyData isEqualToData:v130];
        }

        if ((v39 & v40) == 1 && config9)
        {
          config7 = [(IDSRegistrationKeyManager *)self config];
          unappliedRollingTicket4 = [config7 unappliedRollingTicket];

          if (unappliedRollingTicket4)
          {
            config8 = [(IDSRegistrationKeyManager *)self config];
            unregisteredIdentityContainer4 = [config8 unregisteredIdentityContainer];
            config9 = [(IDSRegistrationKeyManager *)self config];
            unappliedRollingTicket5 = [config9 unappliedRollingTicket];
            v149 = 0;
            v47 = [unregisteredIdentityContainer4 updateNGMIdentityWithRegisteredTicket:unappliedRollingTicket5 error:&v149];
            v48 = v149;

            config10 = [(IDSRegistrationKeyManager *)self config];
            [config10 setUnappliedRollingTicket:0];

            if (IMGetAppBoolForKey())
            {
              v50 = @"NO";
              if (v47)
              {
                v50 = @"YES";
              }

              v51 = [NSString stringWithFormat:@"Rolled key, did succeed %@", v50];
              sub_100450174(1, @"NGM Key Rolling", v51, 1109);

              if ((v47 & 1) == 0)
              {
                goto LABEL_55;
              }
            }

            else if (!v47)
            {
LABEL_55:
              v76 = +[IMRGLog registration];
              toIdentityDataCopy = v135;
              if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
              {
                sub_100916678(self, v48, v76);
              }

LABEL_58:
LABEL_59:

              goto LABEL_60;
            }
          }

          else
          {
            v48 = 0;
          }

          config11 = [(IDSRegistrationKeyManager *)self config];
          registeredIdentityContainer = [config11 registeredIdentityContainer];
          config12 = [(IDSRegistrationKeyManager *)self config];
          [config12 setPreviousRegisteredIdentityContainer:registeredIdentityContainer];

          config13 = [(IDSRegistrationKeyManager *)self config];
          unregisteredIdentityContainer5 = [config13 unregisteredIdentityContainer];
          config14 = [(IDSRegistrationKeyManager *)self config];
          [config14 setRegisteredIdentityContainer:unregisteredIdentityContainer5];

          config15 = [(IDSRegistrationKeyManager *)self config];
          [config15 setUnregisteredIdentityContainer:0];

          config16 = [(IDSRegistrationKeyManager *)self config];
          buildOfUnregisteredIdentityGeneration = [config16 buildOfUnregisteredIdentityGeneration];
          buildOfIdentityGeneration = buildOfUnregisteredIdentityGeneration;
          if (!buildOfUnregisteredIdentityGeneration)
          {
            config9 = [(IDSRegistrationKeyManager *)self config];
            buildOfIdentityGeneration = [config9 buildOfIdentityGeneration];
          }

          config17 = [(IDSRegistrationKeyManager *)self config];
          [config17 setBuildOfIdentityGeneration:buildOfIdentityGeneration];

          if (!buildOfUnregisteredIdentityGeneration)
          {
          }

          config18 = [(IDSRegistrationKeyManager *)self config];
          [config18 setBuildOfUnregisteredIdentityGeneration:0];

          v65 = +[IMRGLog registration];
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            config19 = [(IDSRegistrationKeyManager *)self config];
            previousRegisteredIdentityContainer = [config19 previousRegisteredIdentityContainer];
            config20 = [(IDSRegistrationKeyManager *)self config];
            registeredIdentityContainer2 = [config20 registeredIdentityContainer];
            [(IDSRegistrationKeyManager *)self config];
            v69 = v133 = v48;
            [v69 buildOfIdentityGeneration];
            v71 = v70 = dataCopy;
            *buf = 138412802;
            v154 = previousRegisteredIdentityContainer;
            v155 = 2112;
            v156 = registeredIdentityContainer2;
            v157 = 2112;
            v158 = v71;
            _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Completed registration of previously unregistered identity {previousIdentity: %@, identity: %@, buildOfIdentityGeneration: %@}", buf, 0x20u);

            dataCopy = v70;
            v48 = v133;
          }

          if (IMGetAppBoolForKey())
          {
            sub_100450174(1, @"Key Rolling", @"Registered new identity", 1109);
          }

          [(IDSRegistrationKeyManager *)self _save];
          config21 = [(IDSRegistrationKeyManager *)self config];
          previousRegisteredIdentityContainer2 = [config21 previousRegisteredIdentityContainer];

          toIdentityDataCopy = v135;
          if (previousRegisteredIdentityContainer2)
          {
            +[NSDate timeIntervalSinceReferenceDate];
            v75 = [NSNumber numberWithDouble:v74 + 3196800.0];
            IMSetAppValueForKey();

            [(IDSRegistrationKeyManager *)self _schedulePurgeOfPreviousIdentityAfterDelay:3196800.0];
          }

          goto LABEL_58;
        }

LABEL_40:
        v52 = +[IMRGLog registration];
        if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
        {
          v119 = @"NO";
          if (v39)
          {
            v120 = @"YES";
          }

          else
          {
            v120 = @"NO";
          }

          if (v40)
          {
            v121 = @"YES";
          }

          else
          {
            v121 = @"NO";
          }

          *buf = 138412802;
          v154 = v120;
          v155 = 2112;
          v156 = v121;
          if (config9)
          {
            v119 = @"YES";
          }

          v157 = 2112;
          v158 = v119;
          _os_log_fault_impl(&_mh_execute_header, v52, OS_LOG_TYPE_FAULT, "Completed registration of public identity, but it's not the identity we expected {legacyDataMatches: %@, ngmIdentityDataMatches: %@, ngmPrekeyDataMatches: %@}", buf, 0x20u);
        }

        toIdentityDataCopy = v135;
        if (IMGetAppBoolForKey())
        {
          sub_100450174(1, @"Key Rolling", @"Failed to compare registered identity", 1109);
        }

        goto LABEL_59;
      }

      v33 = +[IMRGLog registration];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        config22 = [(IDSRegistrationKeyManager *)self config];
        unappliedRollingTicket6 = [config22 unappliedRollingTicket];
        v124 = unappliedRollingTicket6;
        v125 = @"NO";
        *buf = 138544387;
        v154 = v23;
        v155 = 2112;
        if (identityData)
        {
          v126 = @"YES";
        }

        else
        {
          v126 = @"NO";
        }

        v156 = unappliedRollingTicket6;
        if (prekeyData)
        {
          v125 = @"YES";
        }

        v157 = 2113;
        v158 = v19;
        v159 = 2113;
        v160 = v126;
        v161 = 2113;
        v162 = v125;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to get expectedNGMPublicIdentityData/expectedNGMPublicPrekeyData -- Not updating registered data {error: %{public}@, unappliedRollingTicket: %@, publicUnregisteredIdentityContainer: %{private}@, expectedNGMPublicIdentityData: %{private}@, expectedNGMPublicPrekeyData: %{private}@}", buf, 0x34u);
      }
    }

    else
    {
      v33 = +[IMRGLog registration];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1009165D4();
      }

      prekeyData = 0;
      identityData = 0;
      v137 = 0;
      v23 = v20;
    }

    goto LABEL_19;
  }

LABEL_60:
  v148 = 0;
  v77 = [(IDSRegistrationKeyManager *)self publicMessageProtectionDeviceIdentityContainerToRegister:&v148];
  v78 = v148;
  v138 = v77;
  legacyPublicIdentity2 = [v77 legacyPublicIdentity];
  v147 = v78;
  v80 = [legacyPublicIdentity2 dataRepresentationWithError:&v147];
  v81 = v147;

  v82 = +[IMRGLog registration];
  v83 = v82;
  v136 = v80;
  if (!v80)
  {
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      sub_100916770();
    }

    v86 = v81;
    goto LABEL_69;
  }

  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v154 = @"message-protection-public-data-registered";
    v155 = 2112;
    v156 = v80;
    _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "Saving public legacy message protection data {identifier: %@, data: %@}", buf, 0x16u);
  }

  keychainWrapper = [(IDSRegistrationKeyManager *)self keychainWrapper];
  v146 = v81;
  v85 = [keychainWrapper saveData:v80 forIdentifier:@"message-protection-public-data-registered" allowSync:0 dataProtectionClass:0 error:&v146];
  v86 = v146;

  if ((v85 & 1) == 0)
  {
    v83 = +[IMRGLog registration];
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543619;
      v154 = v86;
      v155 = 2113;
      v156 = v80;
      _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "Failed to save legacy public message protection data {error: %{public}@, publicData: %{private}@}", buf, 0x16u);
    }

LABEL_69:
  }

  ngmPublicDeviceIdentity2 = [v138 ngmPublicDeviceIdentity];
  identityData2 = [ngmPublicDeviceIdentity2 identityData];

  ngmPublicDeviceIdentity3 = [v138 ngmPublicDeviceIdentity];
  prekeyData2 = [ngmPublicDeviceIdentity3 prekeyData];

  v91 = +[IMRGLog registration];
  v92 = v91;
  v132 = prekeyData2;
  v134 = identityData2;
  if (!identityData2 || !prekeyData2)
  {
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      sub_1009167E0();
    }

    goto LABEL_85;
  }

  if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v154 = @"ngm-message-protection-public-data-registered";
    v155 = 2112;
    v156 = identityData2;
    _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "Saving public ngm message protection identity data {identifier: %@, data: %@}", buf, 0x16u);
  }

  keychainWrapper2 = [(IDSRegistrationKeyManager *)self keychainWrapper];
  v145 = v86;
  v94 = [keychainWrapper2 saveData:identityData2 forIdentifier:@"ngm-message-protection-public-data-registered" allowSync:0 dataProtectionClass:0 error:&v145];
  v95 = v145;

  if ((v94 & 1) == 0)
  {
    v96 = +[IMRGLog registration];
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543619;
      v154 = v95;
      v155 = 2113;
      v156 = v134;
      _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "Failed to save ngm public message protection identity data {error: %{public}@, publicData: %{private}@}", buf, 0x16u);
    }
  }

  v97 = +[IMRGLog registration];
  if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v154 = @"ngm-message-protection-public-prekey-data-registered";
    v155 = 2112;
    v156 = v132;
    _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "Saving public ngm message protection prekey data {identifier: %@, data: %@}", buf, 0x16u);
  }

  keychainWrapper3 = [(IDSRegistrationKeyManager *)self keychainWrapper];
  v144 = v95;
  v99 = [keychainWrapper3 saveData:v132 forIdentifier:@"ngm-message-protection-public-prekey-data-registered" allowSync:0 dataProtectionClass:0 error:&v144];
  v86 = v144;

  if ((v99 & 1) == 0)
  {
    v92 = +[IMRGLog registration];
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543619;
      v154 = v86;
      v155 = 2113;
      v156 = v132;
      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "Failed to save ngm public message protection prekey data {error: %{public}@, publicData: %{private}@}", buf, 0x16u);
    }

LABEL_85:
  }

  ngmVersion = [v138 ngmVersion];
  if (ngmVersion)
  {
    identityDataSource = [(IDSRegistrationKeyManager *)self identityDataSource];
    v102 = [identityDataSource dataRepresentationForNGMVersion:{objc_msgSend(ngmVersion, "unsignedIntValue")}];

    v103 = +[IMRGLog registration];
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v154 = @"ngm-message-protection-public-data-registered-version";
      v155 = 2114;
      v156 = ngmVersion;
      v157 = 2114;
      v158 = v102;
      _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "Saving public ngm version data {identifier: %{public}@, ngmVersion: %{public}@, ngmVersionData: %{public}@}", buf, 0x20u);
    }

    v104 = ngmVersion;

    keychainWrapper4 = [(IDSRegistrationKeyManager *)self keychainWrapper];
    v143 = v86;
    v106 = [keychainWrapper4 saveData:v102 forIdentifier:@"ngm-message-protection-public-data-registered-version" allowSync:0 dataProtectionClass:0 error:&v143];
    v107 = v143;

    if (v106)
    {
      ngmVersion = v104;
    }

    else
    {
      v108 = +[IMRGLog registration];
      ngmVersion = v104;
      if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v154 = v107;
        v155 = 2114;
        v156 = v104;
        v157 = 2114;
        v158 = v102;
        _os_log_error_impl(&_mh_execute_header, v108, OS_LOG_TYPE_ERROR, "Failed to public ngm version data {error: %{public}@, ngmVersion: %{public}@, ngmVersionData: %{public}@}", buf, 0x20u);
      }
    }
  }

  else
  {
    v102 = +[IMRGLog registration];
    if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
    {
      sub_100916850();
    }

    v107 = v86;
  }

  v128 = v107;

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v109 = toIdentityDataCopy;
  v110 = [(__CFString *)v109 countByEnumeratingWithState:&v139 objects:v152 count:16];
  if (v110)
  {
    v111 = v110;
    v127 = ngmVersion;
    v112 = dataCopy;
    v113 = 0;
    v114 = *v140;
    do
    {
      for (i = 0; i != v111; i = i + 1)
      {
        if (*v140 != v114)
        {
          objc_enumerationMutation(v109);
        }

        v116 = *(*(&v139 + 1) + 8 * i);
        v117 = [(__CFString *)v109 objectForKeyedSubscript:v116];
        if (v117)
        {
          v113 |= -[IDSPerServiceApplicationKeyManager notePublicIdentityDidRegisterKeyData:forKeyIndex:](self->_applicationKeyManager, "notePublicIdentityDidRegisterKeyData:forKeyIndex:", v117, [v116 unsignedIntValue]);
        }
      }

      v111 = [(__CFString *)v109 countByEnumeratingWithState:&v139 objects:v152 count:16];
    }

    while (v111);

    dataCopy = v112;
    ngmVersion = v127;
    if (v113)
    {
      [(IDSRegistrationKeyManager *)self _save];
    }
  }

  else
  {
  }

  if (self->_needsReRegister)
  {
    v118 = +[IMRGLog registration];
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "Clearing flag about needing a re-register; it looks to be successful", buf, 2u);
    }

    self->_needsReRegister = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)noteDidRegisterKTData:(id)data forKeyIndex:(unsigned __int16)index
{
  indexCopy = index;
  dataCopy = data;
  [(NSRecursiveLock *)self->_lock lock];
  if (+[IDSKeyTransparencyVerifier isKeyTransparencyEnabled])
  {
    if (dataCopy)
    {
      [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager notePublicIdentityDidRegisterKTData:dataCopy forKeyIndex:indexCopy];
    }
  }

  else
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100915CB4();
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)purgeMessageProtectionIdentity
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing current message protection identity and key pair", buf, 2u);
  }

  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  [(NSRecursiveLock *)self->_lock lock];
  *&self->_loaded = 0;
  config = [(IDSRegistrationKeyManager *)self config];
  [config setPrivateKey:0];

  config2 = [(IDSRegistrationKeyManager *)self config];
  [config2 setPublicKey:0];

  config3 = [(IDSRegistrationKeyManager *)self config];
  [config3 setSignature:0];

  identityDataSource = [(IDSRegistrationKeyManager *)self identityDataSource];
  config4 = [(IDSRegistrationKeyManager *)self config];
  registeredIdentityContainer = [config4 registeredIdentityContainer];
  v30 = 0;
  v10 = [identityDataSource removeIdentityContainer:registeredIdentityContainer withIdentifier:2 dataProtectionClass:0 error:&v30];
  v11 = v30;

  if ((v10 & 1) == 0)
  {
    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1009168C0();
    }
  }

  identityDataSource2 = [(IDSRegistrationKeyManager *)self identityDataSource];
  config5 = [(IDSRegistrationKeyManager *)self config];
  unregisteredIdentityContainer = [config5 unregisteredIdentityContainer];
  v29 = v11;
  v16 = [identityDataSource2 removeIdentityContainer:unregisteredIdentityContainer withIdentifier:1 dataProtectionClass:0 error:&v29];
  v17 = v29;

  if ((v16 & 1) == 0)
  {
    v18 = +[IMRGLog registration];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_100916930();
    }
  }

  identityDataSource3 = [(IDSRegistrationKeyManager *)self identityDataSource];
  config6 = [(IDSRegistrationKeyManager *)self config];
  previousRegisteredIdentityContainer = [config6 previousRegisteredIdentityContainer];
  v28 = v17;
  v22 = [identityDataSource3 removeIdentityContainer:previousRegisteredIdentityContainer withIdentifier:3 dataProtectionClass:0 error:&v28];
  v23 = v28;

  if ((v22 & 1) == 0)
  {
    v24 = +[IMRGLog registration];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      sub_1009169A0();
    }
  }

  config7 = [(IDSRegistrationKeyManager *)self config];
  [config7 setRegisteredIdentityContainer:0];

  config8 = [(IDSRegistrationKeyManager *)self config];
  [config8 setUnregisteredIdentityContainer:0];

  config9 = [(IDSRegistrationKeyManager *)self config];
  [config9 setPreviousRegisteredIdentityContainer:0];

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)_purgePreviousIdentityFromMemoryAndKeychain
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Purging previous message protection identity from memory and keychain", buf, 2u);
  }

  [(NSRecursiveLock *)self->_lock lock];
  config = [(IDSRegistrationKeyManager *)self config];
  previousRegisteredIdentityContainer = [config previousRegisteredIdentityContainer];
  if (previousRegisteredIdentityContainer)
  {
    v6 = previousRegisteredIdentityContainer;
    config2 = [(IDSRegistrationKeyManager *)self config];
    previousRegisteredIdentityContainer2 = [config2 previousRegisteredIdentityContainer];
    config3 = [(IDSRegistrationKeyManager *)self config];
    registeredIdentityContainer = [config3 registeredIdentityContainer];

    if (previousRegisteredIdentityContainer2 != registeredIdentityContainer)
    {
      identityDataSource = [(IDSRegistrationKeyManager *)self identityDataSource];
      config4 = [(IDSRegistrationKeyManager *)self config];
      previousRegisteredIdentityContainer3 = [config4 previousRegisteredIdentityContainer];
      v26 = 0;
      v14 = [identityDataSource removeIdentityContainer:previousRegisteredIdentityContainer3 withIdentifier:3 dataProtectionClass:0 error:&v26];
      v15 = v26;

      v16 = +[IMRGLog registration];
      v17 = v16;
      if (v14)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          config5 = [(IDSRegistrationKeyManager *)self config];
          previousRegisteredIdentityContainer4 = [config5 previousRegisteredIdentityContainer];
          *buf = 138477827;
          v28 = previousRegisteredIdentityContainer4;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Removed previous identity from memory and keychain {previousIdentity: %{private}@}", buf, 0xCu);
        }

        config6 = [(IDSRegistrationKeyManager *)self config];
        [config6 setPreviousRegisteredIdentityContainer:0];

        if ((IMGetAppBoolForKey() & 1) == 0)
        {
          goto LABEL_18;
        }

        v21 = @"Purged previous identity";
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100916A10();
        }

        if (!IMGetAppBoolForKey())
        {
          goto LABEL_18;
        }

        v21 = @"Failed to purge previous identity";
      }

      sub_100450174(1, @"Key Rolling", v21, 1109);
LABEL_18:
      [(IDSRegistrationKeyManager *)self _save];
      goto LABEL_19;
    }
  }

  else
  {
  }

  v15 = +[IMRGLog registration];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    config7 = [(IDSRegistrationKeyManager *)self config];
    previousRegisteredIdentityContainer5 = [config7 previousRegisteredIdentityContainer];
    config8 = [(IDSRegistrationKeyManager *)self config];
    registeredIdentityContainer2 = [config8 registeredIdentityContainer];
    *buf = 138412546;
    v28 = previousRegisteredIdentityContainer5;
    v29 = 2112;
    v30 = registeredIdentityContainer2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No previous identity to purge -- ignoring request {previousIdentity: %@, identity: %@}", buf, 0x16u);
  }

LABEL_19:

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)_ktDataNeedsUpdate:(id)update
{
  v4 = +[IDSKeyTransparencyVerifier isKeyTransparencyEnabled];
  v5 = +[IMRGLog registration];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received notification that KT data needs updating.", buf, 2u);
    }

    v12 = 0;
    v7 = [(IDSRegistrationKeyManager *)self publicMessageProtectionIdentityDataToRegisterWithError:&v12];
    v6 = v12;
    v8 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100339324;
    block[3] = &unk_100BD6E40;
    block[4] = self;
    v11 = v7;
    v9 = v7;
    dispatch_async(v8, block);
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100915CB4();
  }
}

- (void)_generateKTRegistrationData:(id)data
{
  lock = self->_lock;
  dataCopy = data;
  [(NSRecursiveLock *)lock lock];
  [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager requestGenerationOfUnregisteredKTRegDataWithPublicIdentityData:dataCopy applicationKeyManager:self->_applicationKeyManager];

  v6 = self->_lock;

  [(NSRecursiveLock *)v6 unlock];
}

- (void)fetchKTSignatureDataForServiceTypes:(id)types publicIdentityData:(id)data registerID:(id)d withCompletion:(id)completion
{
  lock = self->_lock;
  completionCopy = completion;
  dCopy = d;
  dataCopy = data;
  typesCopy = types;
  [(NSRecursiveLock *)lock lock];
  [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager fetchKTSignatureDataForServiceTypes:typesCopy publicIdentityData:dataCopy registerID:dCopy applicationKeyManager:self->_applicationKeyManager withCompletion:completionCopy];

  v15 = self->_lock;

  [(NSRecursiveLock *)v15 unlock];
}

- (void)_handleKVSUpdateResponseForTrustedDevices:(id)devices withSuccessfulKVSSync:(BOOL)sync
{
  syncCopy = sync;
  devicesCopy = devices;
  [(NSRecursiveLock *)self->_lock lock];
  v7 = +[IMRGLog registration];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (syncCopy)
  {
    if (v8)
    {
      v9 = 138412290;
      v10 = devicesCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully synced KVS with trusted devices. { trustedDevices: %@ }", &v9, 0xCu);
    }

    [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager noteSuccessfulKVSSyncOfTrustedDevices:devicesCopy];
  }

  else
  {
    if (v8)
    {
      v9 = 138412290;
      v10 = devicesCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to sync trusted devices to KVS. Scheduling next sync attempt. { trustedDevices: %@ }", &v9, 0xCu);
    }

    [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager scheduleNextKVSSync];
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)updateKVSForKTRegistrationData
{
  if (+[IDSKeyTransparencyVerifier isKeyTransparencyEnabled])
  {
    [(NSRecursiveLock *)self->_lock lock];
    [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager updateKVSWithCurrentKTRegistrationData];
    lock = self->_lock;

    [(NSRecursiveLock *)lock unlock];
  }

  else
  {
    v4 = +[IMRGLog registration];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100915CB4();
    }
  }
}

- (id)kvsTrustedDevices
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager _createKTTrustedDeviceForKVSisRegistered:0];
  v5 = [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager _createKTTrustedDeviceForKVSisRegistered:1];
  if (v4)
  {
    [v3 addObject:v4];
  }

  if (v5)
  {
    [v3 addObject:v5];
  }

  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)noteiCloudSignInTime
{
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager noteiCloudSignInTime];
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)noteBuddyFinishTime
{
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager noteBuddyFinishTime];
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)noteManateeAvailableTime
{
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager noteManateeAvailableTime];
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)loadPairingIdentities:(BOOL)identities
{
  identitiesCopy = identities;
  if ([(IDSRegistrationKeyManager *)self allowPairingIdentities])
  {
    [(NSRecursiveLock *)self->_lock lock];
    v55 = 0;
    [(IDSRegistrationKeyManager *)self _loadClassAIdentityIfNeeded:&v55];
    v5 = v55;
    config = [(IDSRegistrationKeyManager *)self config];
    identityClassA = [config identityClassA];
    v8 = [(IDSRegistrationKeyManager *)self _getPublicMessageProtectionDataForIdentity:identityClassA];

    v54 = 0;
    [(IDSRegistrationKeyManager *)self _loadClassCIdentityIfNeeded:&v54];
    v9 = v54;
    config2 = [(IDSRegistrationKeyManager *)self config];
    identityClassC = [config2 identityClassC];
    v12 = [(IDSRegistrationKeyManager *)self _getPublicMessageProtectionDataForIdentity:identityClassC];

    v53 = 0;
    [(IDSRegistrationKeyManager *)self _loadClassDIdentityIfNeeded:&v53];
    v13 = v53;
    config3 = [(IDSRegistrationKeyManager *)self config];
    identityClassD = [config3 identityClassD];
    v16 = [(IDSRegistrationKeyManager *)self _getPublicMessageProtectionDataForIdentity:identityClassD];

    if (identitiesCopy)
    {
      v52 = 0;
      v51 = 0;
      config4 = [(IDSRegistrationKeyManager *)self config];
      identityClassA2 = [config4 identityClassA];
      if (identityClassA2)
      {
      }

      else
      {
        v19 = [IDSKeychainWrapper isInteractionNotAllowedError:v5];

        if ((v19 & 1) == 0)
        {
          config5 = [(IDSRegistrationKeyManager *)self config];
          *buf = [config5 unSavedidentityClassA];

          config6 = [(IDSRegistrationKeyManager *)self config];
          identityClassA3 = [config6 identityClassA];

          [(IDSRegistrationKeyManager *)self _ensureIdentity:buf savedIndentity:&identityClassA3 protectionClass:1 didSaveIdentity:&v52 + 1];
          v22 = *buf;
          config7 = [(IDSRegistrationKeyManager *)self config];
          [config7 setUnSavedidentityClassA:v22];

          v24 = identityClassA3;
          config8 = [(IDSRegistrationKeyManager *)self config];
          [config8 setIdentityClassA:v24];
        }
      }

      config9 = [(IDSRegistrationKeyManager *)self config];
      identityClassC2 = [config9 identityClassC];
      if (identityClassC2)
      {
      }

      else
      {
        v28 = [IDSKeychainWrapper isInteractionNotAllowedError:v9];

        if ((v28 & 1) == 0)
        {
          config10 = [(IDSRegistrationKeyManager *)self config];
          *buf = [config10 unSavedidentityClassC];

          config11 = [(IDSRegistrationKeyManager *)self config];
          identityClassA3 = [config11 identityClassC];

          [(IDSRegistrationKeyManager *)self _ensureIdentity:buf savedIndentity:&identityClassA3 protectionClass:0 didSaveIdentity:&v52];
          v31 = *buf;
          config12 = [(IDSRegistrationKeyManager *)self config];
          [config12 setUnSavedidentityClassC:v31];

          v33 = identityClassA3;
          config13 = [(IDSRegistrationKeyManager *)self config];
          [config13 setIdentityClassC:v33];
        }
      }

      config14 = [(IDSRegistrationKeyManager *)self config];
      identityClassD2 = [config14 identityClassD];
      if (identityClassD2)
      {
      }

      else
      {
        v37 = [IDSKeychainWrapper isInteractionNotAllowedError:v13];

        if ((v37 & 1) == 0)
        {
          config15 = [(IDSRegistrationKeyManager *)self config];
          *buf = [config15 unSavedidentityClassD];

          config16 = [(IDSRegistrationKeyManager *)self config];
          identityClassA3 = [config16 identityClassD];

          [(IDSRegistrationKeyManager *)self _ensureIdentity:buf savedIndentity:&identityClassA3 protectionClass:2 didSaveIdentity:&v51];
          v40 = *buf;
          config17 = [(IDSRegistrationKeyManager *)self config];
          [config17 setUnSavedidentityClassD:v40];

          v42 = identityClassA3;
          config18 = [(IDSRegistrationKeyManager *)self config];
          [config18 setIdentityClassD:v42];
        }
      }

      v44 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100339C68;
      block[3] = &unk_100BD7950;
      v46 = HIBYTE(v52);
      v47 = v52;
      v48 = v51;
      block[4] = self;
      dispatch_async(v44, block);
    }

    [(NSRecursiveLock *)self->_lock unlock];
  }

  else
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Skipping loadPairingIdentities becuase shouldGeneratePairingIdentities == NO", buf, 2u);
    }
  }
}

- (void)regeneratePairingIdentitiesIncludingClassD:(BOOL)d
{
  dCopy = d;
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  systemMonitor = [(IDSRegistrationKeyManager *)self systemMonitor];
  isUnderDataProtectionLock = [systemMonitor isUnderDataProtectionLock];

  if (isUnderDataProtectionLock)
  {
    self->_pendingIdentityRegeneration = 1;
  }

  else
  {
    identityDataSource = [(IDSRegistrationKeyManager *)self identityDataSource];
    config = [(IDSRegistrationKeyManager *)self config];
    identityClassA = [config identityClassA];
    v44 = 0;
    v10 = [identityDataSource removeLegacyIdentity:identityClassA withIdentifier:4 dataProtectionClass:1 error:&v44];
    v11 = v44;

    if ((v10 & 1) == 0)
    {
      v12 = +[IMRGLog registration];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100916AB4();
      }
    }

    config2 = [(IDSRegistrationKeyManager *)self config];
    [config2 setIdentityClassA:0];

    config3 = [(IDSRegistrationKeyManager *)self config];
    unSavedidentityClassA = [config3 unSavedidentityClassA];
    v43 = v11;
    [unSavedidentityClassA purgeFromKeychain:&v43];
    v16 = v43;

    config4 = [(IDSRegistrationKeyManager *)self config];
    [config4 setUnSavedidentityClassA:0];

    identityDataSource2 = [(IDSRegistrationKeyManager *)self identityDataSource];
    config5 = [(IDSRegistrationKeyManager *)self config];
    identityClassC = [config5 identityClassC];
    v42 = v16;
    v21 = [identityDataSource2 removeLegacyIdentity:identityClassC withIdentifier:5 dataProtectionClass:0 error:&v42];
    v22 = v42;

    if ((v21 & 1) == 0)
    {
      v23 = +[IMRGLog registration];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100916B58();
      }
    }

    config6 = [(IDSRegistrationKeyManager *)self config];
    [config6 setIdentityClassC:0];

    config7 = [(IDSRegistrationKeyManager *)self config];
    unSavedidentityClassC = [config7 unSavedidentityClassC];
    v41 = v22;
    [unSavedidentityClassC purgeFromKeychain:&v41];
    v27 = v41;

    config8 = [(IDSRegistrationKeyManager *)self config];
    [config8 setUnSavedidentityClassC:0];

    if (dCopy)
    {
      identityDataSource3 = [(IDSRegistrationKeyManager *)self identityDataSource];
      config9 = [(IDSRegistrationKeyManager *)self config];
      identityClassD = [config9 identityClassD];
      v40 = v27;
      v32 = [identityDataSource3 removeLegacyIdentity:identityClassD withIdentifier:6 dataProtectionClass:2 error:&v40];
      v33 = v40;

      if ((v32 & 1) == 0)
      {
        v34 = +[IMRGLog registration];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_100916BFC();
        }
      }

      config10 = [(IDSRegistrationKeyManager *)self config];
      [config10 setIdentityClassD:0];

      config11 = [(IDSRegistrationKeyManager *)self config];
      unSavedidentityClassD = [config11 unSavedidentityClassD];
      v39 = v33;
      [unSavedidentityClassD purgeFromKeychain:&v39];
      v27 = v39;

      config12 = [(IDSRegistrationKeyManager *)self config];
      [config12 setUnSavedidentityClassD:0];
    }

    [(IDSRegistrationKeyManager *)self loadPairingIdentities:1];
    self->_pendingIdentityRegeneration = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (id)keyPairSignature
{
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:0];
  config = [(IDSRegistrationKeyManager *)self config];
  signature = [config signature];

  return signature;
}

- (BOOL)needsPublicDataUpdatedForKeyIndex:(unsigned __int16)index ktRegistrationKeyIndex:(unsigned __int16)keyIndex
{
  keyIndexCopy = keyIndex;
  indexCopy = index;
  v61 = 0;
  v7 = [(IDSRegistrationKeyManager *)self publicMessageProtectionDeviceIdentityContainerToRegister:&v61];
  v8 = v61;
  legacyPublicIdentity = [v7 legacyPublicIdentity];
  v60 = v8;
  v10 = [legacyPublicIdentity dataRepresentationWithError:&v60];
  v11 = v60;

  if (![(IDSRegistrationKeyManager *)self requiresKeychainMigration])
  {
    if (![v10 length])
    {
      v13 = +[IMRGLog registration];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100916D0C();
      }

      v12 = 0;
      goto LABEL_57;
    }

    if (self->_needsReRegister)
    {
      v12 = 1;
      goto LABEL_58;
    }

    keychainWrapper = [(IDSRegistrationKeyManager *)self keychainWrapper];
    v59 = v11;
    v13 = [keychainWrapper dataForIdentifier:@"message-protection-public-data-registered" error:&v59];
    v54 = v59;

    if ([v13 length])
    {
      if (([v13 isEqualToData:v10]& 1) != 0)
      {
        v12 = 0;
LABEL_17:
        ngmPublicDeviceIdentity = [v7 ngmPublicDeviceIdentity];
        identityData = [ngmPublicDeviceIdentity identityData];

        ngmPublicDeviceIdentity2 = [v7 ngmPublicDeviceIdentity];
        prekeyData = [ngmPublicDeviceIdentity2 prekeyData];

        if (![identityData length] || !objc_msgSend(prekeyData, "length"))
        {
          v20 = +[IMRGLog registration];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            v45 = @"YES";
            *buf = 138544131;
            v63 = v54;
            if (identityData)
            {
              v46 = @"YES";
            }

            else
            {
              v46 = @"NO";
            }

            if (!prekeyData)
            {
              v45 = @"NO";
            }

            v64 = 2113;
            v65 = v7;
            v66 = 2113;
            v67 = v46;
            v68 = 2113;
            v69 = v45;
            _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "Missing publicNGMIdentityData or publicNGMPrekeyData -- Not checking ngm data {error: %{public}@, publicContainer: %{private}@, publicNGMIdentityData: %{private}@, publicNGMPrekeyData: %{private}@}", buf, 0x2Au);
          }
        }

        ngmVersion = [v7 ngmVersion];
        v22 = ngmVersion;
        v53 = identityData;
        if (!ngmVersion)
        {
          v32 = +[IMRGLog registration];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            sub_100916CA0();
          }

          goto LABEL_47;
        }

        if (!identityData || !prekeyData)
        {
          goto LABEL_48;
        }

        v48 = v13;
        v52 = ngmVersion;
        keychainWrapper2 = [(IDSRegistrationKeyManager *)self keychainWrapper];
        v58 = v54;
        v24 = [keychainWrapper2 dataForIdentifier:@"ngm-message-protection-public-data-registered" error:&v58];
        v25 = v58;

        v26 = v24;
        keychainWrapper3 = [(IDSRegistrationKeyManager *)self keychainWrapper];
        v57 = v25;
        v28 = [keychainWrapper3 dataForIdentifier:@"ngm-message-protection-public-prekey-data-registered" error:&v57];
        v51 = v57;

        v50 = v28;
        if ([v26 length]&& [v28 length])
        {
          if (([v26 isEqualToData:v53]& 1) != 0)
          {
            v29 = [v28 isEqualToData:prekeyData];
            v30 = v52;
            v13 = v48;
            if (v29)
            {
              goto LABEL_38;
            }

            v31 = +[IMRGLog registration];
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138478083;
              v63 = v50;
              v64 = 2113;
              v65 = prekeyData;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Registered ngm prekey data doesn't match current data -- returning YES {registeredNGMPrekeyData: %{private}@, publicNGMPrekeyData: %{private}@}", buf, 0x16u);
            }

LABEL_37:

            v12 = 1;
LABEL_38:
            v47 = keyIndexCopy;
            v49 = v26;
            identityDataSource = [(IDSRegistrationKeyManager *)self identityDataSource];
            v35 = [identityDataSource dataRepresentationForNGMVersion:{objc_msgSend(v30, "unsignedIntValue")}];

            keychainWrapper4 = [(IDSRegistrationKeyManager *)self keychainWrapper];
            v56 = v51;
            v37 = [keychainWrapper4 dataForIdentifier:@"ngm-message-protection-public-data-registered-version" error:&v56];
            v54 = v56;

            v38 = v37;
            if ([v37 length])
            {
              v39 = [v37 isEqual:v35];
              v22 = v52;
              keyIndexCopy = v47;
              if (v39)
              {
LABEL_46:

                v32 = v49;
LABEL_47:

LABEL_48:
                v11 = v54;
                [(NSRecursiveLock *)self->_lock lock];
                if ([(IDSPerServiceApplicationKeyManager *)self->_applicationKeyManager needsPublicDataUpdatedForKeyIndex:indexCopy])
                {
                  v42 = +[IMRGLog registration];
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Application service key needs update", buf, 2u);
                  }

                  v12 = 1;
                }

                if ([(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager needsPublicDataUpdatedForKeyIndex:keyIndexCopy])
                {
                  v43 = +[IMRGLog registration];
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "KT Registration Data needs update", buf, 2u);
                  }

                  v12 = 1;
                }

                [(NSRecursiveLock *)self->_lock unlock];

LABEL_57:
                goto LABEL_58;
              }

              v40 = +[IMRGLog registration];
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v63 = v38;
                v64 = 2114;
                v65 = v35;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Registered ngmVersionData doesn't match current data -- returning YES {registeredNGMVersionData: %{public}@, publicNGMVersionData: %{public}@}", buf, 0x16u);
              }
            }

            else
            {
              v40 = +[IMRGLog registration];
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                config = [(IDSRegistrationKeyManager *)self config];
                *buf = 138543619;
                v63 = v54;
                v64 = 2113;
                v65 = config;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Registered ngm data version is empty -- returning YES {error: %{public}@, config: %{private}@}", buf, 0x16u);
              }

              v22 = v52;
              keyIndexCopy = v47;
            }

            v12 = 1;
            goto LABEL_46;
          }

          v31 = +[IMRGLog registration];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138478083;
            v63 = v26;
            v64 = 2113;
            v65 = v53;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Registered ngm identity data doesn't match current data -- returning YES {registeredNGMIdentityData: %{private}@, publicNGMIdentityData: %{private}@}", buf, 0x16u);
          }
        }

        else
        {
          v31 = +[IMRGLog registration];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            config2 = [(IDSRegistrationKeyManager *)self config];
            *buf = 138543619;
            v63 = v51;
            v64 = 2113;
            v65 = config2;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Registered ngm data is empty -- returning YES { error: %{public}@, config: %{private}@}", buf, 0x16u);
          }
        }

        v30 = v52;
        v13 = v48;
        goto LABEL_37;
      }

      v15 = +[IMRGLog registration];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138478083;
        v63 = v13;
        v64 = 2113;
        v65 = v10;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Registered legacy data doesn't match current data -- returning YES {registeredLegacyData: %{private}@, publicLegacyData: %{private}@}", buf, 0x16u);
      }
    }

    else
    {
      v15 = +[IMRGLog registration];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        config3 = [(IDSRegistrationKeyManager *)self config];
        *buf = 138543619;
        v63 = v54;
        v64 = 2113;
        v65 = config3;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Registered legacy data is empty -- returning YES {error: %{public}@, config: %{private}@}", buf, 0x16u);
      }
    }

    v12 = 1;
    goto LABEL_17;
  }

  v12 = 0;
LABEL_58:

  return v12;
}

- (id)createKTRegistrationDataForServiceTypes:(id)types withPublicIdentity:(id)identity
{
  lock = self->_lock;
  identityCopy = identity;
  typesCopy = types;
  [(NSRecursiveLock *)lock lock];
  v9 = [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager createKTRegistrationDataForServiceTypes:typesCopy usingPublicIdentityData:identityCopy withApplicationKeyManager:self->_applicationKeyManager];

  [(NSRecursiveLock *)self->_lock unlock];

  return v9;
}

- (BOOL)isMigratedKeyPairSignature
{
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:0];
  config = [(IDSRegistrationKeyManager *)self config];
  isMigratedSignature = [config isMigratedSignature];

  return isMigratedSignature;
}

- (BOOL)isUsingSecureStorageForClassA
{
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  [(NSRecursiveLock *)self->_lock lock];
  config = [(IDSRegistrationKeyManager *)self config];
  identityClassA = [config identityClassA];
  v5 = [(IDSRegistrationKeyManager *)self _isSecurelyStoringIdentity:identityClassA withExpectedProtectionClass:1];

  [(NSRecursiveLock *)self->_lock unlock];
  return v5;
}

- (BOOL)isUsingSecureStorageForClassC
{
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  [(NSRecursiveLock *)self->_lock lock];
  config = [(IDSRegistrationKeyManager *)self config];
  identityClassC = [config identityClassC];
  v5 = [(IDSRegistrationKeyManager *)self _isSecurelyStoringIdentity:identityClassC withExpectedProtectionClass:0];

  [(NSRecursiveLock *)self->_lock unlock];
  return v5;
}

- (BOOL)_isSecurelyStoringIdentity:(id)identity withExpectedProtectionClass:(int64_t)class
{
  identityCopy = identity;
  v6 = identityCopy;
  if (identityCopy)
  {
    v13 = 0;
    v7 = [identityCopy dataProtectionClassWithError:&v13];
    v8 = v13;
    v9 = [IDSKeychainWrapper idsKeychainWrapperDataProtectionClassFromIMDataProtectionClass:v7];
    if (v8)
    {
      v10 = +[IMRGLog registration];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218499;
        classCopy = class;
        v16 = 2114;
        v17 = v8;
        v18 = 2113;
        v19 = v6;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to get identity data protection class {expectedProtectionClass: %ld, error: %{public}@, identity: %{private}@}", buf, 0x20u);
      }

      v11 = 0;
    }

    else
    {
      v11 = v9 == class;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)migrateToSecureStorageForClassA
{
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  [(NSRecursiveLock *)self->_lock lock];
  config = [(IDSRegistrationKeyManager *)self config];
  identityClassA = [config identityClassA];
  v5 = [(IDSRegistrationKeyManager *)self _migrateIdentity:identityClassA toProtectionClass:1];

  [(NSRecursiveLock *)self->_lock unlock];
  return v5;
}

- (BOOL)migrateToSecureStorageForClassC
{
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  [(NSRecursiveLock *)self->_lock lock];
  config = [(IDSRegistrationKeyManager *)self config];
  identityClassC = [config identityClassC];
  v5 = [(IDSRegistrationKeyManager *)self _migrateIdentity:identityClassC toProtectionClass:0];

  [(NSRecursiveLock *)self->_lock unlock];
  return v5;
}

- (BOOL)_migrateIdentity:(id)identity toProtectionClass:(int64_t)class
{
  identityCopy = identity;
  if (identityCopy)
  {
    v10 = 0;
    v6 = [identityCopy updateIdentityToDataProtectionClass:+[IDSKeychainWrapper imDataProtectionClassFromDataProtectionClass:](IDSKeychainWrapper error:{"imDataProtectionClassFromDataProtectionClass:", class), &v10}];
    v7 = v10;
    if ((v6 & 1) == 0)
    {
      v8 = +[IMRGLog registration];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543875;
        v12 = v7;
        v13 = 2113;
        v14 = identityCopy;
        v15 = 2048;
        classCopy = class;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to migrate identity data protection class {error: %{public}@, identity: %{private}@, protectionClass: %ld}", buf, 0x20u);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)regenerateRegisteredIdentity
{
  [(NSRecursiveLock *)self->_lock lock];
  config = [(IDSRegistrationKeyManager *)self config];
  unregisteredIdentityContainer = [config unregisteredIdentityContainer];

  v5 = +[IMRGLog registration];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (unregisteredIdentityContainer)
  {
    if (v6)
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Roll of encryption portion of registered identity requested, but we've already generated an unregistered identity -- ignoring request", v10, 2u);
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requesting roll of encryption portion of registered identity", buf, 2u);
    }

    config2 = [(IDSRegistrationKeyManager *)self config];
    registeredIdentityContainer = [config2 registeredIdentityContainer];
    ngmFullDeviceIdentity = [registeredIdentityContainer ngmFullDeviceIdentity];
    [(IDSRegistrationKeyManager *)self _generateUnregisteredIdentityWithExistingLegacyIdentity:0 existingNGMIdentity:ngmFullDeviceIdentity];

    [(IDSRegistrationKeyManager *)self _notifyUnregisteredIdentityRegenerated];
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (BOOL)_shouldRegenerateRegisteredIdentity
{
  if ([(IDSRegistrationKeyManager *)self allowRegenerateRegisteredIdentity])
  {
    [(NSRecursiveLock *)self->_lock lock];
    config = [(IDSRegistrationKeyManager *)self config];
    buildOfIdentityGeneration = [config buildOfIdentityGeneration];

    [(NSRecursiveLock *)self->_lock unlock];
    v5 = buildOfIdentityGeneration == 0;
  }

  else
  {
    v6 = +[IMRGLog registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "returning NO from _shouldRegenerateRegisteredIdentity becuase allowRegenerateRegisteredIdentity == NO", v8, 2u);
    }

    return 0;
  }

  return v5;
}

- (double)_randomizedIdentityRegenerationInterval
{
  +[NSDate timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = +[IMLockdownManager sharedInstance];
  if ([v4 isInternalInstall])
  {
    v5 = 600.0;
  }

  else
  {
    v5 = 2592000.0;
  }

  v6 = +[IMLockdownManager sharedInstance];
  isInternalInstall = [v6 isInternalInstall];

  v8 = v3 + v5;
  if (isInternalInstall)
  {
    v9 = 1800;
  }

  else
  {
    v9 = 2592000;
  }

  return v8 + arc4random_uniform(v9);
}

- (void)_schedulePurgeOfPreviousIdentityAfterDelay:(double)delay
{
  v5 = im_primary_queue();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10033B414;
  v6[3] = &unk_100BD7978;
  v6[4] = self;
  *&v6[5] = delay;
  dispatch_async(v5, v6);
}

- (void)_purgePreviousIdentityTimerFiredOnMain
{
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10033B608;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_purgePreviousIdentityTimerFired
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Purge previous identity timer fired!", buf, 2u);
  }

  v4 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10033B6F8;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v4, block);

  [(IDSRegistrationKeyManager *)self _purgePreviousIdentityFromMemoryAndKeychain];
  IMRemoveAppValueForKey();
}

- (void)_scheduleRegenerationOfRegisteredIdentityAfterDelay:(double)delay
{
  v5 = im_primary_queue();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10033B7D8;
  v6[3] = &unk_100BD7978;
  v6[4] = self;
  *&v6[5] = delay;
  dispatch_async(v5, v6);
}

- (void)_regenerateIdentityTimerFiredOnMain
{
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10033B9CC;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_regenerateIdentityTimerFired
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Regenerate identity timer fired!", buf, 2u);
  }

  v4 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10033BB1C;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v4, block);

  if ([(IDSRegistrationKeyManager *)self _shouldRegenerateRegisteredIdentity])
  {
    [(IDSRegistrationKeyManager *)self regenerateRegisteredIdentity];
  }

  else
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "We no longer need to re-generate our identity -- continuing without re-generation", buf, 2u);
    }
  }

  IMRemoveAppValueForKey();
}

- (double)_notifyKTReregisterDelay
{
  v2 = +[IDSServerBag sharedInstance];
  v3 = [v2 objectForKey:@"kt-rereg-debounce-delay"];

  v4 = 0.0;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 doubleValue];
      v4 = v5;
    }
  }

  return v4;
}

- (double)_purgePreviousIdentityDelay
{
  v2 = IMGetAppValueForKey();
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
    +[NSDate timeIntervalSinceReferenceDate];
    v7 = v5 - v6;
  }

  else
  {
    v7 = 3196800.0;
  }

  if (v7 >= 2.22044605e-16)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1.0;
  }

  v9 = +[IMRGLog registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = v3;
    v13 = 2048;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Queried _purgePreviousIdentityDelay {purgeDateNumber: %{public}@, delay: %f}", &v11, 0x16u);
  }

  return v8;
}

- (double)_identityRegenerationDelay
{
  v3 = IMGetAppValueForKey();
  if (!v3)
  {
    [(IDSRegistrationKeyManager *)self _randomizedIdentityRegenerationInterval];
    v3 = [NSNumber numberWithDouble:?];
    IMSetAppValueForKey();
  }

  [v3 doubleValue];
  v5 = v4;
  +[NSDate timeIntervalSinceReferenceDate];
  v7 = v5 - v6;
  if (v7 >= 2.22044605e-16)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1.0;
  }

  v9 = +[IMRGLog registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = v3;
    v13 = 2048;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Queried _identityRegenrationDelay {regenerationIntervalNumber: %{public}@, delay: %f}", &v11, 0x16u);
  }

  return v8;
}

- (double)_generationRetryDelay
{
  v3 = +[IDSServerBag sharedInstance];
  v4 = [v3 objectForKey:@"key-generation-retry-delay"];

  v5 = 30.0;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 doubleValue];
      v5 = v6;
    }
  }

  v7 = v5 * self->_generationRetryCount;

  return v7;
}

- (BOOL)_shouldCheckUnregisteredKTData
{
  v2 = +[IDSServerBag sharedInstance];
  v3 = [v2 objectForKey:@"should-check-unreg-kt-data"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end