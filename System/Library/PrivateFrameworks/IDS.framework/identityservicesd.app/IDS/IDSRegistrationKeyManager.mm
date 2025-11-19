@interface IDSRegistrationKeyManager
+ (BOOL)setupKeys;
+ (id)sharedInstance;
- (BOOL)_generateUnregisteredIdentityWithExistingLegacyIdentity:(id)a3 existingNGMIdentity:(id)a4;
- (BOOL)_isSecurelyStoringIdentity:(id)a3 withExpectedProtectionClass:(int64_t)a4;
- (BOOL)_isUnderFirstDataProtectionLock;
- (BOOL)_loadClassAIdentityIfNeeded:(id *)a3;
- (BOOL)_loadClassCIdentityIfNeeded:(id *)a3;
- (BOOL)_loadClassDIdentityIfNeeded:(id *)a3;
- (BOOL)_migrateIdentity:(id)a3 toProtectionClass:(int64_t)a4;
- (BOOL)_migrateRegisteredIdentityFromClassDtoClassCIfNeeded;
- (BOOL)_save;
- (BOOL)_serializeAndPersistApplicationKeyIdentitiesDeleteIfNull:(BOOL)a3;
- (BOOL)_serializeAndPersistIdentityContainer:(id)a3 identityIdentifier:(int64_t)a4 deleteIfNull:(BOOL)a5;
- (BOOL)_serializeAndPersistKTRegistrationDataDeleteIfNull:(BOOL)a3;
- (BOOL)_shouldCheckUnregisteredKTData;
- (BOOL)_shouldRegenerateRegisteredIdentity;
- (BOOL)isMigratedKeyPairSignature;
- (BOOL)isUsingSecureStorageForClassA;
- (BOOL)isUsingSecureStorageForClassC;
- (BOOL)migrateToSecureStorageForClassA;
- (BOOL)migrateToSecureStorageForClassC;
- (BOOL)needsPublicDataUpdatedForKeyIndex:(unsigned __int16)a3 ktRegistrationKeyIndex:(unsigned __int16)a4;
- (BOOL)registrationNeedsKTDataUpdated;
- (IDSRegistrationKeyManager)init;
- (IDSRegistrationKeyManager)initWithSystemMonitor:(id)a3 keychainWrapper:(id)a4 loadingRateLimiter:(id)a5 identityDataSource:(id)a6 allowPairingIdentities:(BOOL)a7 allowRegenerateRegisteredIdentity:(BOOL)a8 keyPairProvider:(id)a9 ktRegistrationDataManager:(id)a10;
- (_SecMPFullIdentity)copyMessageProtectionIdentity;
- (_SecMPFullIdentity)copyPreviousMessageProtectionIdentity;
- (_SecMPFullIdentity)latestCopyMessageProtectionIdentityForDataProtectionClass:(unsigned int)a3;
- (__SecKey)copyPublicIdentityDataToRegisterForKeyIndex:(unsigned __int16)a3 withError:(id *)a4;
- (__SecKey)fullIdentityForKeyIndex:(unsigned __int16)a3;
- (__SecKey)identityPrivateKey;
- (__SecKey)identityPublicKey;
- (double)_generationRetryDelay;
- (double)_identityRegenerationDelay;
- (double)_notifyKTReregisterDelay;
- (double)_purgePreviousIdentityDelay;
- (double)_randomizedIdentityRegenerationInterval;
- (id)_generateIdentityWithExistingIdentity:(id)a3 identifier:(int64_t)a4 dataProtectionClass:(int64_t)a5;
- (id)_getPublicMessageProtectionDataForIdentity:(id)a3;
- (id)_loadAndDeserializeBuildOfIdentityGenerationForItemName:(id)a3;
- (id)copyKTRegistrationDataToRegisterForKeyIndex:(unsigned __int16)a3 withError:(id *)a4;
- (id)createKTRegistrationDataForServiceTypes:(id)a3 withPublicIdentity:(id)a4;
- (id)fetchRegistrationStatusProvider;
- (id)fullDeviceIdentityContainerUsableForKeyType:(unint64_t)a3;
- (id)fullMessageProtectionIdentity;
- (id)fullMessageProtectionIdentityForDataProtectionClass:(unsigned int)a3;
- (id)generateCSRForUserID:(id)a3;
- (id)keyPairSignature;
- (id)kvsTrustedDevices;
- (id)latestMessageProtectionFullIdentityForDataProtectionClass:(unsigned int)a3;
- (id)previousFullDeviceIdentityContainer;
- (id)previousFullMessageProtectionIdentity;
- (id)publicMessageProtectionData;
- (id)publicMessageProtectionDataToRegisterForClassA;
- (id)publicMessageProtectionDataToRegisterForClassC;
- (id)publicMessageProtectionDataToRegisterForClassD;
- (id)publicMessageProtectionDeviceIdentityContainerToRegister:(id *)a3;
- (id)publicMessageProtectionIdentityDataToRegisterWithError:(id *)a3;
- (void)_ensureIdentity:(id *)a3 savedIndentity:(id *)a4 protectionClass:(int64_t)a5 didSaveIdentity:(BOOL *)a6;
- (void)_generateKTRegistrationData:(id)a3;
- (void)_handleKVSUpdateResponseForTrustedDevices:(id)a3 withSuccessfulKVSSync:(BOOL)a4;
- (void)_handleTransparencySignatureResponse:(id)a3 error:(id)a4;
- (void)_handleTransparencySignatureResponseForRegistration:(id)a3 error:(id)a4;
- (void)_ktDataNeedsUpdate:(id)a3;
- (void)_loadIfNeeded:(BOOL)a3;
- (void)_notifyUnregisteredIdentityRegenerated;
- (void)_notifyUnregisteredKTData;
- (void)_purgePreviousIdentityFromMemoryAndKeychain;
- (void)_purgePreviousIdentityTimerFired;
- (void)_purgePreviousIdentityTimerFiredOnMain;
- (void)_regenerateIdentityTimerFired;
- (void)_regenerateIdentityTimerFiredOnMain;
- (void)_retryGenerationAfterDelay;
- (void)_retryGenerationIfNeeded;
- (void)_saveClassXIdentity:(id *)a3 savedIdentity:(id *)a4 protectionClass:(int64_t)a5 savedUnsavedIdentity:(BOOL *)a6;
- (void)_schedulePurgeOfPreviousIdentityAfterDelay:(double)a3;
- (void)_scheduleRegenerationOfRegisteredIdentityAfterDelay:(double)a3;
- (void)_serializeAndPersistBuildOfIdentityGeneration:(id)a3 itemName:(id)a4;
- (void)_subscribeForTimeChangeNotification;
- (void)_unsubscribeForTimeChangeNotification;
- (void)dealloc;
- (void)fetchKTSignatureDataForServiceTypes:(id)a3 publicIdentityData:(id)a4 registerID:(id)a5 withCompletion:(id)a6;
- (void)loadPairingIdentities:(BOOL)a3;
- (void)noteBuddyFinishTime;
- (void)noteDidRegisterKTData:(id)a3 forKeyIndex:(unsigned __int16)a4;
- (void)noteManateeAvailableTime;
- (void)notePublicIdentityDidRegisterLegacyData:(id)a3 ngmIdentityData:(id)a4 ngmPrekeyData:(id)a5 keyIndexToIdentityData:(id)a6;
- (void)noteiCloudSignInTime;
- (void)purgeMessageProtectionIdentity;
- (void)regeneratePairingIdentitiesIncludingClassD:(BOOL)a3;
- (void)regenerateRegisteredIdentity;
- (void)setForceRoll:(BOOL)a3;
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
  v3 = [(IDSRegistrationKeyManager *)self config];
  v4 = [v3 registeredIdentityContainer];
  v5 = [v4 legacyFullIdentity];

  LODWORD(v4) = [(IDSRegistrationKeyManager *)self _isSecurelyStoringIdentity:v5 withExpectedProtectionClass:0];
  v6 = +[IMRGLog registration];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
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

    LODWORD(v6) = [(IDSRegistrationKeyManager *)self _migrateIdentity:v5 toProtectionClass:0];
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
  v3 = [(IDSRegistrationKeyManager *)self config];
  v4 = [v3 privateKey];

  return v4;
}

- (__SecKey)identityPublicKey
{
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:0];
  v3 = [(IDSRegistrationKeyManager *)self config];
  v4 = [v3 publicKey];

  return v4;
}

+ (BOOL)setupKeys
{
  v2 = dispatch_get_global_queue(2, 0);
  dispatch_async(v2, &stru_100BD7900);

  return 1;
}

- (BOOL)_isUnderFirstDataProtectionLock
{
  v2 = [(IDSRegistrationKeyManager *)self systemMonitor];
  v3 = [v2 isUnderFirstDataProtectionLock];

  return v3;
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
  v4 = [v3 isSetup];

  if ((v4 & 1) == 0)
  {
    [(NSRecursiveLock *)self->_lock lock];
    [(IDSRegistrationKeyManager *)self noteBuddyFinishTime];
    lock = self->_lock;

    [(NSRecursiveLock *)lock unlock];
  }
}

- (void)_saveClassXIdentity:(id *)a3 savedIdentity:(id *)a4 protectionClass:(int64_t)a5 savedUnsavedIdentity:(BOOL *)a6
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

  if (a5 > 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = qword_1009AB588[a5];
  }

  v13 = *a4;
  if (*a4 || (v13 = *a3) != 0)
  {
    v14 = v13;
    v15 = [(IDSRegistrationKeyManager *)self identityDataSource];
    v27 = 0;
    v16 = [v15 saveLegacyIdentity:v14 withIdentifier:v12 dataProtectionClass:a5 error:&v27];
    v17 = v27;

    if (v16)
    {
      if (*a3)
      {
        objc_storeStrong(a4, *a3);
        v18 = *a3;
        *a3 = 0;

        if (a6)
        {
          *a6 = 1;
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

      v21 = [(IDSRegistrationKeyManager *)self identityDataSource];
      v26 = v17;
      v22 = [v21 removeLegacyIdentity:0 withIdentifier:v12 dataProtectionClass:a5 error:&v26];
      v11 = v26;

      v23 = +[IMRGLog registration];
      v24 = v23;
      if (v22)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [IDSKeychainWrapper shortDescriptionForDataProtectionClass:a5];
          *buf = 138543618;
          v29 = v25;
          v30 = 2114;
          v31 = v11;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Removed keychain data for class %{public}@ message protection identity {error: %{public}@}", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100915810(a5);
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
    v34 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Saving key manager state {self: %@}", &v33, 0xCu);
  }

  [(NSRecursiveLock *)self->_lock lock];
  if (self->_detectedMigrationNeeded)
  {
    v4 = +[IMRGLog registration];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100915900();
    }

    LOBYTE(v5) = 1;
  }

  else
  {
    v6 = [(IDSRegistrationKeyManager *)self config];
    v7 = [v6 registeredIdentityContainer];
    v8 = [(IDSRegistrationKeyManager *)self _serializeAndPersistIdentityContainer:v7 identityIdentifier:2 deleteIfNull:1];

    v9 = [(IDSRegistrationKeyManager *)self config];
    v10 = [v9 unregisteredIdentityContainer];
    v11 = [(IDSRegistrationKeyManager *)self _serializeAndPersistIdentityContainer:v10 identityIdentifier:1 deleteIfNull:1];

    v12 = [(IDSRegistrationKeyManager *)self config];
    v13 = [v12 previousRegisteredIdentityContainer];
    v14 = [(IDSRegistrationKeyManager *)self _serializeAndPersistIdentityContainer:v13 identityIdentifier:3 deleteIfNull:1];

    LODWORD(v12) = [(IDSRegistrationKeyManager *)self _serializeAndPersistApplicationKeyIdentitiesDeleteIfNull:1];
    v5 = [(IDSRegistrationKeyManager *)self _serializeAndPersistKTRegistrationDataDeleteIfNull:1]& v12 & v14 & v11 & v8;
    v15 = [(IDSRegistrationKeyManager *)self config];
    v16 = [v15 buildOfIdentityGeneration];
    [(IDSRegistrationKeyManager *)self _serializeAndPersistBuildOfIdentityGeneration:v16 itemName:@"build-of-identity-generation"];

    v4 = [(IDSRegistrationKeyManager *)self config];
    v17 = [v4 buildOfUnregisteredIdentityGeneration];
    [(IDSRegistrationKeyManager *)self _serializeAndPersistBuildOfIdentityGeneration:v17 itemName:@"build-of-unregistered-identity-generation"];
  }

  v18 = +[IMUserDefaults sharedDefaults];
  v19 = [(IDSRegistrationKeyManager *)self config];
  v20 = [v19 registeredIdentityContainer];
  v21 = [NSNumber numberWithInt:v20 != 0];
  [v18 setAppValue:v21 forKey:@"hasRegIdentityContainer"];

  v22 = +[IMUserDefaults sharedDefaults];
  v23 = [(IDSRegistrationKeyManager *)self config];
  v24 = [v23 unregisteredIdentityContainer];
  v25 = [NSNumber numberWithInt:v24 != 0];
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
      v29 = [(IDSRegistrationKeyManager *)self config];
      [v29 setRegisteredIdentityContainer:0];

      v30 = [(IDSRegistrationKeyManager *)self config];
      [v30 setUnregisteredIdentityContainer:0];

      v31 = [(IDSRegistrationKeyManager *)self config];
      [v31 setPreviousRegisteredIdentityContainer:0];

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

- (BOOL)_serializeAndPersistApplicationKeyIdentitiesDeleteIfNull:(BOOL)a3
{
  v3 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  LOBYTE(v3) = [(IDSPerServiceApplicationKeyManager *)self->_applicationKeyManager serializeAndPersistIdentitiesDeleteIfNull:v3];
  [(NSRecursiveLock *)self->_lock unlock];
  return v3;
}

- (BOOL)_serializeAndPersistKTRegistrationDataDeleteIfNull:(BOOL)a3
{
  v3 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  LOBYTE(v3) = [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager serializeAndPersistKTDatasDeleteIfNull:v3];
  [(NSRecursiveLock *)self->_lock unlock];
  return v3;
}

- (BOOL)_serializeAndPersistIdentityContainer:(id)a3 identityIdentifier:(int64_t)a4 deleteIfNull:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  v9 = +[IMRGLog registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    *buf = 134218499;
    v30 = a4;
    if (v5)
    {
      v10 = @"YES";
    }

    v31 = 2113;
    v32 = v8;
    v33 = 2114;
    v34 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Persisting message protection identity container {identityIdentifier: %ld, identityContainer: %{private}@, deleteIfNull: %{public}@}", buf, 0x20u);
  }

  if (v8)
  {
    v11 = [(IDSRegistrationKeyManager *)self identityDataSource];
    v28 = 0;
    v12 = [v11 saveIdentityContainer:v8 withIdentifier:a4 dataProtectionClass:0 error:&v28];
    v13 = v28;

    v14 = +[IMRGLog registration];
    v15 = v14;
    if (v12)
    {
      v16 = 1;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 134218243;
        v30 = a4;
        v31 = 2113;
        v32 = v8;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Persisted identity {identityIdentifier: %ld, identityContainer: %{private}@}", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543875;
        v30 = v13;
        v31 = 2048;
        v32 = a4;
        v33 = 2113;
        v34 = v8;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to save identity, possibly corrupted -- removing reference from keychain {error: %{public}@, identityIdentifier: %ld, identityContainer: %{private}@}", buf, 0x20u);
      }

      v21 = [(IDSRegistrationKeyManager *)self identityDataSource];
      v27 = v13;
      v22 = [v21 removeIdentityContainer:v8 withIdentifier:a4 dataProtectionClass:0 error:&v27];
      v23 = v27;

      v24 = +[IMRGLog registration];
      v15 = v24;
      if (v22)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218243;
          v30 = a4;
          v31 = 2113;
          v32 = v8;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Removed identity reference from keychain {identityIdentifier: %ld, identityContainer: %{private}@}", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543875;
        v30 = v23;
        v31 = 2048;
        v32 = a4;
        v33 = 2113;
        v34 = v8;
        _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Failed to remove corrupt identity reference from keychain {error: %{public}@, identityIdentifier: %ld, identityContainer: %{private}@}", buf, 0x20u);
      }

      v16 = 0;
      v13 = v23;
    }

LABEL_27:

    goto LABEL_28;
  }

  if (v5)
  {
    v17 = +[IMRGLog registration];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218243;
      v30 = a4;
      v31 = 2113;
      v32 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Removing identity from keychain because deleteIfNull == YES, {identityIdentifier: %ld, identityContainer: %{private}@}", buf, 0x16u);
    }

    v18 = [(IDSRegistrationKeyManager *)self identityDataSource];
    v26 = 0;
    v19 = [v18 removeIdentityContainer:0 withIdentifier:a4 dataProtectionClass:0 error:&v26];
    v13 = v26;

    v20 = +[IMRGLog registration];
    v15 = v20;
    if (v19)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218243;
        v30 = a4;
        v31 = 2113;
        v32 = 0;
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

- (void)_serializeAndPersistBuildOfIdentityGeneration:(id)a3 itemName:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NSRecursiveLock *)self->_lock lock];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = v7;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Persisting build of identity generation {itemName: %@, buildOfIdentityGeneration: %@}", buf, 0x16u);
  }

  if (v6)
  {
    v9 = [v6 dataUsingEncoding:4];
    v10 = [(IDSRegistrationKeyManager *)self keychainWrapper];
    v17 = 0;
    v11 = [v10 saveData:v9 forIdentifier:v7 allowSync:0 dataProtectionClass:2 error:&v17];
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

  v14 = [(IDSRegistrationKeyManager *)self keychainWrapper];
  v16 = 0;
  v15 = [v14 removeDataForIdentifier:v7 dataProtectionClass:2 error:&v16];
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

- (id)_loadAndDeserializeBuildOfIdentityGenerationForItemName:(id)a3
{
  v4 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(IDSRegistrationKeyManager *)self keychainWrapper];
  v14 = 0;
  v6 = [v5 dataForIdentifier:v4 error:&v14];
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
      v16 = v4;
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

- (BOOL)_loadClassAIdentityIfNeeded:(id *)a3
{
  v5 = [(IDSRegistrationKeyManager *)self allowPairingIdentities];
  if (v5)
  {
    [(NSRecursiveLock *)self->_lock lock];
    v6 = [(IDSRegistrationKeyManager *)self config];
    v7 = [v6 identityClassA];

    if (!v7)
    {
      v24 = 0;
      v10 = [(IDSRegistrationKeyManager *)self identityDataSource];
      v11 = [v10 loadLegacyIdentityWithIdentifier:4 serializationDidChange:&v24 error:a3];
      v12 = [(IDSRegistrationKeyManager *)self config];
      [v12 setIdentityClassA:v11];

      v13 = [(IDSRegistrationKeyManager *)self config];
      v14 = [v13 identityClassA];

      v15 = +[IMRGLog registration];
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        if (v16)
        {
          v17 = [(IDSRegistrationKeyManager *)self config];
          v18 = [v17 identityClassA];
          v19 = v18;
          v20 = @"NO";
          if (v24)
          {
            v20 = @"YES";
          }

          *buf = 138478083;
          *&buf[4] = v18;
          v26 = 2114;
          v27 = v20;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Loaded class A message protection identity {identity: %{private}@, serializationDidChange: %{public}@}", buf, 0x16u);
        }

        if (v24 == 1)
        {
          v21 = [(IDSRegistrationKeyManager *)self config];
          *buf = [v21 identityClassA];

          v23 = 0;
          [(IDSRegistrationKeyManager *)self _saveClassXIdentity:buf savedIdentity:&v23 protectionClass:1 savedUnsavedIdentity:0];
        }
      }

      else
      {
        if (v16)
        {
          if (a3)
          {
            v22 = *a3;
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

  return v5;
}

- (BOOL)_loadClassCIdentityIfNeeded:(id *)a3
{
  v5 = [(IDSRegistrationKeyManager *)self allowPairingIdentities];
  if (v5)
  {
    [(NSRecursiveLock *)self->_lock lock];
    v6 = [(IDSRegistrationKeyManager *)self config];
    v7 = [v6 identityClassC];

    if (!v7)
    {
      v24 = 0;
      v10 = [(IDSRegistrationKeyManager *)self identityDataSource];
      v11 = [v10 loadLegacyIdentityWithIdentifier:5 serializationDidChange:&v24 error:a3];
      v12 = [(IDSRegistrationKeyManager *)self config];
      [v12 setIdentityClassC:v11];

      v13 = [(IDSRegistrationKeyManager *)self config];
      v14 = [v13 identityClassC];

      v15 = +[IMRGLog registration];
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        if (v16)
        {
          v17 = [(IDSRegistrationKeyManager *)self config];
          v18 = [v17 identityClassC];
          v19 = v18;
          v20 = @"NO";
          if (v24)
          {
            v20 = @"YES";
          }

          *buf = 138478083;
          *&buf[4] = v18;
          v26 = 2114;
          v27 = v20;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Loaded class C message protection identity {identity: %{private}@, serializationDidChange: %{public}@}", buf, 0x16u);
        }

        if (v24 == 1)
        {
          v21 = [(IDSRegistrationKeyManager *)self config];
          *buf = [v21 identityClassC];

          v23 = 0;
          [(IDSRegistrationKeyManager *)self _saveClassXIdentity:buf savedIdentity:&v23 protectionClass:0 savedUnsavedIdentity:0];
        }
      }

      else
      {
        if (v16)
        {
          if (a3)
          {
            v22 = *a3;
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

  return v5;
}

- (BOOL)_loadClassDIdentityIfNeeded:(id *)a3
{
  v5 = [(IDSRegistrationKeyManager *)self allowPairingIdentities];
  if (v5)
  {
    [(NSRecursiveLock *)self->_lock lock];
    v6 = [(IDSRegistrationKeyManager *)self config];
    v7 = [v6 identityClassD];

    if (!v7)
    {
      v24 = 0;
      v10 = [(IDSRegistrationKeyManager *)self identityDataSource];
      v11 = [v10 loadLegacyIdentityWithIdentifier:6 serializationDidChange:&v24 error:a3];
      v12 = [(IDSRegistrationKeyManager *)self config];
      [v12 setIdentityClassD:v11];

      v13 = [(IDSRegistrationKeyManager *)self config];
      v14 = [v13 identityClassD];

      v15 = +[IMRGLog registration];
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        if (v16)
        {
          v17 = [(IDSRegistrationKeyManager *)self config];
          v18 = [v17 identityClassD];
          v19 = v18;
          v20 = @"NO";
          if (v24)
          {
            v20 = @"YES";
          }

          *buf = 138478083;
          *&buf[4] = v18;
          v26 = 2114;
          v27 = v20;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Loaded class D message protection identity {identity: %{private}@, serializationDidChange: %{public}@}", buf, 0x16u);
        }

        if (v24 == 1)
        {
          v21 = [(IDSRegistrationKeyManager *)self config];
          *buf = [v21 identityClassD];

          v23 = 0;
          [(IDSRegistrationKeyManager *)self _saveClassXIdentity:buf savedIdentity:&v23 protectionClass:2 savedUnsavedIdentity:0];
        }
      }

      else
      {
        if (v16)
        {
          if (a3)
          {
            v22 = *a3;
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

  return v5;
}

- (void)_loadIfNeeded:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  v238 = 0;
  v239 = &v238;
  v240 = 0x2020000000;
  v241 = 0;
  v237 = 0;
  [(NSRecursiveLock *)self->_lock lock];
  if (!v4->_loaded)
  {
    v4->_loaded = 1;
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Registration key manager beginning locked load of identities", buf, 2u);
    }

    v242[0] = 0;
    memset(v236, 0, 10);
    v6 = [(IDSRegistrationKeyManager *)v4 keyPairProvider];
    v235 = 0;
    [v6 copyRegistrationKeyPairForIdentifier:0 publicKey:v242 privateKey:&v236[1] keyPairSignature:&v235 isMigratedSignature:v236 + 1 isUpgradePending:v236];
    v7 = v235;

    v8 = v242[0];
    v9 = [(IDSRegistrationKeyManager *)v4 config];
    [v9 setPublicKey:v8];

    v10 = *&v236[1];
    v11 = [(IDSRegistrationKeyManager *)v4 config];
    [v11 setPrivateKey:v10];

    v12 = [(IDSRegistrationKeyManager *)v4 config];
    [v12 setSignature:v7];

    v13 = HIBYTE(v236[0]);
    v14 = [(IDSRegistrationKeyManager *)v4 config];
    [v14 setIsMigratedSignature:v13];

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
      v220 = [(IDSRegistrationKeyManager *)v4 config];
      if ([v220 publicKey])
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      v18 = [(IDSRegistrationKeyManager *)v4 config];
      if ([v18 privateKey])
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

      v21 = [(IDSRegistrationKeyManager *)v4 config];
      if ([v21 isMigratedSignature])
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

    if (LOBYTE(v236[0]) == 1 && [(IDSRegistrationKeyManager *)v4 _isUnderFirstDataProtectionLock])
    {
      v24 = +[IMRGLog registration];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Unable to load registration key pair; we're under lock, and this requires migration -- we need to migrate", buf, 2u);
      }

      v4->_detectedMigrationNeeded = 1;
      v25 = [(IDSRegistrationKeyManager *)v4 systemMonitor];
      [v25 _addEarlyListener:v4];

      v4->_loaded = 0;
    }

    if (v236[0])
    {
      goto LABEL_49;
    }

    v26 = [(IDSRegistrationKeyManager *)v4 config];
    v27 = [v26 signature];
    if (v27)
    {
      v28 = [(IDSRegistrationKeyManager *)v4 config];
      if ([v28 publicKey])
      {
        v29 = [(IDSRegistrationKeyManager *)v4 config];
        v30 = [v29 privateKey] == 0;

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
          v32 = v4;
          v33 = v3;
          v34 = v32;
          v221 = [(IDSRegistrationKeyManager *)v32 config];
          v35 = [v221 signature];
          if (v35)
          {
            v36 = @"YES";
          }

          else
          {
            v36 = @"NO";
          }

          v37 = [(IDSRegistrationKeyManager *)v34 config];
          if ([v37 publicKey])
          {
            v38 = @"YES";
          }

          else
          {
            v38 = @"NO";
          }

          v39 = [(IDSRegistrationKeyManager *)v34 config];
          if ([v39 privateKey])
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

          v3 = v33;
          v4 = v34;
          v7 = v218;
        }

        v4->_loaded = 0;
        goto LABEL_49;
      }
    }

    goto LABEL_37;
  }

LABEL_50:
  if (v3 && !v4->_identityLoaded)
  {
    if ([(IDSRegistrationKeyManager *)v4 _isUnderFirstDataProtectionLock])
    {
      v41 = +[IMRGLog registration];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "We are under first data protection lock, we can not load our identity now", buf, 2u);
      }

      v4->_identityLoaded = 0;
      v42 = [(IDSRegistrationKeyManager *)v4 systemMonitor];
      [v42 _addEarlyListener:v4];

      if (!v4->_detectedMigrationNeeded)
      {
        [(IDSRegistrationKeyManager *)v4 loadPairingIdentities:1];
      }

      goto LABEL_180;
    }

    [(IDSRateLimiter *)v4->_loadingRateLimiter noteItem:@"registrationKeyManagerRateLimit"];
    v4->_identityLoaded = 1;
    v43 = objc_alloc_init(IDSNGMKeyLoadingErrorContainer);
    recentKeyLoadingErrors = v4->_recentKeyLoadingErrors;
    v4->_recentKeyLoadingErrors = v43;

    v45 = +[IMUserDefaults sharedDefaults];
    v46 = [v45 appValueForKey:@"hasRegIdentityContainer"];
    [(IDSNGMKeyLoadingErrorContainer *)v4->_recentKeyLoadingErrors setShouldHaveRegisteredIdentity:v46];

    v47 = +[IMUserDefaults sharedDefaults];
    v48 = [v47 appValueForKey:@"hasUnregIdentityContainer"];
    [(IDSNGMKeyLoadingErrorContainer *)v4->_recentKeyLoadingErrors setShouldHaveUnregisteredIdentity:v48];

    v49 = +[IMUserDefaults sharedDefaults];
    v4->_failedToGeneratedPublicDataForNGMIdentity = [v49 appBoolForKey:@"failedToGeneratedPublicDataForNGMIdentity"];

    v50 = [(IDSRegistrationKeyManager *)v4 identityDataSource];
    v233 = 0;
    v234 = 0;
    v51 = [v50 loadIdentityContainerWithIdentifier:2 withLegacyFallback:1 serializationDidChange:v239 + 3 deserializationDidFail:&v237 + 1 needsEncryptionIdentityRoll:&v237 nonLegacyError:&v234 error:&v233];
    v219 = v234;
    v222 = v233;
    v52 = [(IDSRegistrationKeyManager *)v4 config];
    [v52 setRegisteredIdentityContainer:v51];

    v53 = [(IDSRegistrationKeyManager *)v4 config];
    v54 = [v53 registeredIdentityContainer];

    if (v54)
    {
      v55 = [(IDSRegistrationKeyManager *)v4 _loadAndDeserializeBuildOfIdentityGenerationForItemName:@"build-of-identity-generation"];
      v56 = [(IDSRegistrationKeyManager *)v4 config];
      [v56 setBuildOfIdentityGeneration:v55];

      v57 = +[IMRGLog registration];
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = [(IDSRegistrationKeyManager *)v4 config];
        v59 = [v58 registeredIdentityContainer];
        v60 = [(IDSRegistrationKeyManager *)v4 config];
        v61 = [v60 buildOfIdentityGeneration];
        *buf = 138478083;
        v244 = v59;
        v245 = 2112;
        v246 = v61;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Successfully loaded message protection identity from keychain {_config.registeredIdentityContainer: %{private}@, buildOfGeneration: %@}", buf, 0x16u);
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

      if (![IDSKeychainWrapper isUpgradePendingError:v222]|| ![(IDSRegistrationKeyManager *)v4 _isUnderFirstDataProtectionLock])
      {
LABEL_70:
        v65 = v4->_recentKeyLoadingErrors;
        if ((v237 & 0x100) != 0)
        {
          [(IDSNGMKeyLoadingErrorContainer *)v65 setRegisteredDeserializationError:v219];
        }

        else
        {
          [(IDSNGMKeyLoadingErrorContainer *)v65 setRegisteredKeychainError:v219];
        }

        if (v4->_detectedMigrationNeeded)
        {
          v66 = +[IMRGLog registration];
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "We're under first lock, and this requires migration -- not doing anything here", buf, 2u);
          }

          v4->_identityLoaded = 0;
LABEL_179:

LABEL_180:
          v172 = [(IDSRegistrationKeyManager *)v4 config];
          v173 = [v172 registeredIdentityContainer];
          v174 = [v173 legacyFullIdentity];
          v175 = [(IDSRegistrationKeyManager *)v4 _getPublicMessageProtectionDataForIdentity:v174];

          v176 = [(IDSRegistrationKeyManager *)v4 config];
          v177 = [v176 unregisteredIdentityContainer];
          v178 = [v177 legacyFullIdentity];
          v179 = [(IDSRegistrationKeyManager *)v4 _getPublicMessageProtectionDataForIdentity:v178];

          v180 = [(IDSRegistrationKeyManager *)v4 config];
          v181 = [v180 identityClassA];
          v182 = [(IDSRegistrationKeyManager *)v4 _getPublicMessageProtectionDataForIdentity:v181];

          v183 = [(IDSRegistrationKeyManager *)v4 config];
          v184 = [v183 identityClassC];
          v185 = [(IDSRegistrationKeyManager *)v4 _getPublicMessageProtectionDataForIdentity:v184];

          v186 = [(IDSRegistrationKeyManager *)v4 config];
          v187 = [v186 identityClassD];
          v188 = [(IDSRegistrationKeyManager *)v4 _getPublicMessageProtectionDataForIdentity:v187];

          goto LABEL_181;
        }

        *(v236 + 1) = 0;
        v67 = [(IDSRegistrationKeyManager *)v4 identityDataSource];
        v231 = v222;
        v232 = 0;
        v68 = [v67 loadIdentityContainerWithIdentifier:1 withLegacyFallback:0 serializationDidChange:v239 + 3 deserializationDidFail:&v236[1] needsEncryptionIdentityRoll:v236 + 1 nonLegacyError:&v232 error:&v231];
        v217 = v232;
        v69 = v231;

        v70 = [(IDSRegistrationKeyManager *)v4 config];
        [v70 setUnregisteredIdentityContainer:v68];

        v237 = (v237 | *(v236 + 1)) & 0x101;
        v71 = [(IDSRegistrationKeyManager *)v4 config];
        v72 = [v71 unregisteredIdentityContainer];

        if (v72)
        {
          v73 = [(IDSRegistrationKeyManager *)v4 _loadAndDeserializeBuildOfIdentityGenerationForItemName:@"build-of-unregistered-identity-generation"];
          v74 = [(IDSRegistrationKeyManager *)v4 config];
          [v74 setBuildOfUnregisteredIdentityGeneration:v73];

          v75 = +[IMRGLog registration];
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            v76 = [(IDSRegistrationKeyManager *)v4 config];
            v77 = [v76 unregisteredIdentityContainer];
            v78 = [(IDSRegistrationKeyManager *)v4 config];
            v79 = [v78 buildOfUnregisteredIdentityGeneration];
            *buf = 138478083;
            v244 = v77;
            v245 = 2112;
            v246 = v79;
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

        v81 = v4->_recentKeyLoadingErrors;
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
        v82 = [(IDSRegistrationKeyManager *)v4 identityDataSource];
        v229 = v69;
        v83 = [v82 loadIdentityContainerWithIdentifier:3 withLegacyFallback:1 serializationDidChange:v239 + 3 deserializationDidFail:v236 needsEncryptionIdentityRoll:&v230 nonLegacyError:0 error:&v229];
        v222 = v229;

        v84 = [(IDSRegistrationKeyManager *)v4 config];
        [v84 setPreviousRegisteredIdentityContainer:v83];

        v85 = [(IDSRegistrationKeyManager *)v4 config];
        v86 = [v85 previousRegisteredIdentityContainer];

        if (v86)
        {
          v87 = +[IMRGLog registration];
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            v88 = [(IDSRegistrationKeyManager *)v4 config];
            v89 = [v88 previousRegisteredIdentityContainer];
            *buf = 138477827;
            v244 = v89;
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

        v91 = [(IDSRegistrationKeyManager *)v4 config];
        v92 = [v91 previousRegisteredIdentityContainer];

        if (v92)
        {
          [(IDSRegistrationKeyManager *)v4 _purgePreviousIdentityDelay];
          [(IDSRegistrationKeyManager *)v4 _schedulePurgeOfPreviousIdentityAfterDelay:?];
        }

        [(IDSRegistrationKeyManager *)v4 loadPairingIdentities:1];
        v93 = +[IMRGLog registration];
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          v215 = [(IDSRegistrationKeyManager *)v4 config];
          v213 = [v215 registeredIdentityContainer];
          if (v213)
          {
            v94 = @"YES";
          }

          else
          {
            v94 = @"NO";
          }

          v205 = v94;
          v212 = [(IDSRegistrationKeyManager *)v4 config];
          v211 = [v212 registeredIdentityContainer];
          if ([v211 hasNGMIdentity])
          {
            v95 = @"YES";
          }

          else
          {
            v95 = @"NO";
          }

          v204 = v95;
          v210 = [(IDSRegistrationKeyManager *)v4 config];
          v209 = [v210 unregisteredIdentityContainer];
          if (v209)
          {
            v96 = @"YES";
          }

          else
          {
            v96 = @"NO";
          }

          v203 = v96;
          v208 = [(IDSRegistrationKeyManager *)v4 config];
          v207 = [v208 unregisteredIdentityContainer];
          if ([v207 hasNGMIdentity])
          {
            v97 = @"YES";
          }

          else
          {
            v97 = @"NO";
          }

          v206 = [(IDSRegistrationKeyManager *)v4 config];
          v98 = [v206 registeredIdentityContainer];
          v99 = [v98 ngmVersion];
          v100 = [(IDSRegistrationKeyManager *)v4 config];
          v101 = [v100 unregisteredIdentityContainer];
          v102 = [v101 ngmVersion];
          v103 = [(IDSRegistrationKeyManager *)v4 identityDataSource];
          v104 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v103 ngmVersion]);
          *buf = 138413826;
          v244 = v205;
          v245 = 2112;
          v246 = v204;
          v247 = 2112;
          v248 = v203;
          v249 = 2112;
          v250 = v97;
          v251 = 2112;
          v252 = v99;
          v253 = 2112;
          v254 = v102;
          v255 = 2112;
          v256 = v104;
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Considering regeneration {registeredIdentity: %@, registeredNGM: %@, unregisteredIdentity: %@, unregisteredNGM: %@, registeredVersion: %@, unregisteredVersion: %@, currentVersion: %@}", buf, 0x48u);
        }

        if (LOBYTE(v236[1]) == 1)
        {
          v105 = [(IDSRegistrationKeyManager *)v4 config];
          v106 = [v105 unregisteredIdentityContainer];
          v216 = v106 == 0;
        }

        else
        {
          v216 = 0;
        }

        v107 = [(IDSRegistrationKeyManager *)v4 config];
        v108 = [v107 registeredIdentityContainer];

        v109 = [(IDSRegistrationKeyManager *)v4 config];
        v110 = [v109 registeredIdentityContainer];
        if ([v110 hasNGMIdentity])
        {
          v111 = [(IDSRegistrationKeyManager *)v4 config];
          v112 = [v111 registeredIdentityContainer];
          v113 = [v112 ngmVersion];
          v114 = [(IDSRegistrationKeyManager *)v4 identityDataSource];
          v115 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v114 ngmVersion]);
          v116 = [v113 isEqualToNumber:v115];

          v117 = v116 ^ 1;
        }

        else
        {
          v117 = 1;
        }

        v214 = v117;

        v118 = [(IDSRegistrationKeyManager *)v4 config];
        v119 = [v118 unregisteredIdentityContainer];
        if ([v119 hasNGMIdentity])
        {
          v120 = [(IDSRegistrationKeyManager *)v4 config];
          v121 = [v120 unregisteredIdentityContainer];
          v122 = [v121 ngmVersion];
          v123 = [(IDSRegistrationKeyManager *)v4 identityDataSource];
          v124 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v123 ngmVersion]);
          v125 = [v122 isEqualToNumber:v124];

          v126 = v125 ^ 1;
        }

        else
        {
          v126 = 1;
        }

        v127 = [(IDSRegistrationKeyManager *)v4 config];
        v128 = [v127 unregisteredIdentityContainer];
        v129 = v128 != 0;
        if (!((v128 == 0) | v126 & 1))
        {
          v130 = [(IDSRegistrationKeyManager *)v4 config];
          v131 = [v130 unregisteredIdentityContainer];
          v132 = [v131 legacyFullIdentity];
          v129 = v132 == 0;
        }

        if ((v216 | v214) & 1 | (v108 == 0) | v129)
        {
          if ((v126 & 1) != 0 || (-[IDSRegistrationKeyManager config](v4, "config"), v133 = objc_claimAutoreleasedReturnValue(), [v133 unregisteredIdentityContainer], v134 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v134, "legacyFullIdentity"), v135 = objc_claimAutoreleasedReturnValue(), v136 = v135 == 0, v135, v134, v133, v136))
          {
            v142 = +[IMRGLog registration];
            if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
            {
              v143 = [(IDSRegistrationKeyManager *)v4 config];
              v144 = [v143 registeredIdentityContainer];
              v145 = [(IDSRegistrationKeyManager *)v4 config];
              v146 = [v145 unregisteredIdentityContainer];
              v147 = [(IDSRegistrationKeyManager *)v4 identityDataSource];
              v148 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v147 ngmVersion]);
              *buf = 138412802;
              v244 = v144;
              v245 = 2112;
              v246 = v146;
              v247 = 2112;
              v248 = v148;
              _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "We have no registered or unregistered identity loaded -- generating a new message protection identity {registeredIdentityContainer: %@, unregisteredIdentityContainer: %@, identityDataSource.ngmVersion: %@}", buf, 0x20u);
            }

            v149 = [(IDSNGMKeyLoadingErrorContainer *)v4->_recentKeyLoadingErrors shouldHaveUnregisteredIdentity];

            if (v149)
            {
              v150 = [(IDSNGMKeyLoadingErrorContainer *)v4->_recentKeyLoadingErrors unregisteredDeserializationError];

              if (v150)
              {
                v151 = +[IMRGLog registration];
                if (os_log_type_enabled(v151, OS_LOG_TYPE_FAULT))
                {
                  [(IDSNGMKeyLoadingErrorContainer *)v4->_recentKeyLoadingErrors registeredDeserializationError];
                  objc_claimAutoreleasedReturnValue();
                  sub_100915BE0();
                }
              }

              else
              {
                v156 = [(IDSNGMKeyLoadingErrorContainer *)v4->_recentKeyLoadingErrors unregisteredKeychainError];

                if (v156)
                {
                  v151 = +[IMRGLog registration];
                  if (os_log_type_enabled(v151, OS_LOG_TYPE_FAULT))
                  {
                    [(IDSNGMKeyLoadingErrorContainer *)v4->_recentKeyLoadingErrors registeredKeychainError];
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

            v158 = [(IDSNGMKeyLoadingErrorContainer *)v4->_recentKeyLoadingErrors shouldHaveRegisteredIdentity];

            if (v158)
            {
              v159 = [(IDSNGMKeyLoadingErrorContainer *)v4->_recentKeyLoadingErrors registeredDeserializationError];

              if (v159)
              {
                v160 = +[IMRGLog registration];
                if (os_log_type_enabled(v160, OS_LOG_TYPE_FAULT))
                {
                  [(IDSNGMKeyLoadingErrorContainer *)v4->_recentKeyLoadingErrors registeredDeserializationError];
                  objc_claimAutoreleasedReturnValue();
                  sub_100915B0C();
                }
              }

              else
              {
                v161 = [(IDSNGMKeyLoadingErrorContainer *)v4->_recentKeyLoadingErrors registeredKeychainError];

                if (v161)
                {
                  v160 = +[IMRGLog registration];
                  if (os_log_type_enabled(v160, OS_LOG_TYPE_FAULT))
                  {
                    [(IDSNGMKeyLoadingErrorContainer *)v4->_recentKeyLoadingErrors registeredKeychainError];
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

            v162 = [(IDSRegistrationKeyManager *)v4 config];
            v163 = [v162 unregisteredIdentityContainer];
            v164 = [(IDSRegistrationKeyManager *)v4 config];
            if (v163)
            {
              [v164 unregisteredIdentityContainer];
            }

            else
            {
              [v164 registeredIdentityContainer];
            }
            v137 = ;

            v165 = [v137 legacyFullIdentity];
            v166 = [(IDSRegistrationKeyManager *)v4 _generateUnregisteredIdentityWithExistingLegacyIdentity:v165 existingNGMIdentity:0];

            if (v166)
            {
              [(IDSRegistrationKeyManager *)v4 _notifyUnregisteredIdentityRegenerated];
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
          if ([(IDSRegistrationKeyManager *)v4 _shouldRegenerateRegisteredIdentity])
          {
            v138 = +[IMRGLog registration];
            if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "We need to regenerate the registered identity", buf, 2u);
            }

            v139 = [(IDSNGMKeyLoadingErrorContainer *)v4->_recentKeyLoadingErrors shouldHaveRegisteredIdentity];

            if (v139)
            {
              v140 = [(IDSNGMKeyLoadingErrorContainer *)v4->_recentKeyLoadingErrors registeredDeserializationError];

              if (v140)
              {
                v141 = +[IMRGLog registration];
                if (os_log_type_enabled(v141, OS_LOG_TYPE_FAULT))
                {
                  [(IDSNGMKeyLoadingErrorContainer *)v4->_recentKeyLoadingErrors registeredDeserializationError];
                  objc_claimAutoreleasedReturnValue();
                  sub_100915B0C();
                }
              }

              else
              {
                v157 = [(IDSNGMKeyLoadingErrorContainer *)v4->_recentKeyLoadingErrors registeredKeychainError];

                if (v157)
                {
                  v141 = +[IMRGLog registration];
                  if (os_log_type_enabled(v141, OS_LOG_TYPE_FAULT))
                  {
                    [(IDSNGMKeyLoadingErrorContainer *)v4->_recentKeyLoadingErrors registeredKeychainError];
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

            [(IDSRegistrationKeyManager *)v4 _identityRegenerationDelay];
            [(IDSRegistrationKeyManager *)v4 _scheduleRegenerationOfRegisteredIdentityAfterDelay:?];
            goto LABEL_170;
          }

          v137 = +[IMRGLog registration];
          if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
          {
            v152 = [(IDSRegistrationKeyManager *)v4 config];
            v153 = [v152 registeredIdentityContainer];
            v154 = [(IDSRegistrationKeyManager *)v4 config];
            v155 = [v154 unregisteredIdentityContainer];
            *buf = 138412546;
            v244 = v153;
            v245 = 2112;
            v246 = v155;
            _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "No need to regenerate message protection identity {identity: %@, unregisteredIdentity: %@}", buf, 0x16u);
          }
        }

LABEL_170:
        v228 = 0;
        [(IDSPerServiceApplicationKeyManager *)v4->_applicationKeyManager loadIdentitiesWithSerializationDidChange:v239 + 3 deserializationDidFail:&v237 + 1 identityGenerated:&v228];
        if (v228 == 1)
        {
          [(IDSRegistrationKeyManager *)v4 _notifyUnregisteredIdentityRegenerated];
        }

        if (+[IDSKeyTransparencyVerifier isKeyTransparencyEnabled])
        {
          v227 = 0;
          [(IDSKTRegistrationDataManager *)v4->_ktRegistrationDataManager loadKTRegistrationDatasWithShouldGenerateKTData:&v227];
          if (v227 == 1)
          {
            v226 = 0;
            v167 = [(IDSRegistrationKeyManager *)v4 publicMessageProtectionIdentityDataToRegisterWithError:&v226];
            v168 = v226;
            v169 = im_primary_queue();
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1003347F4;
            block[3] = &unk_100BD6E40;
            block[4] = v4;
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

      v4->_detectedMigrationNeeded = 1;
      v57 = [(IDSRegistrationKeyManager *)v4 systemMonitor];
      [v57 _addEarlyListener:v4];
    }

    goto LABEL_70;
  }

LABEL_181:
  [(NSRecursiveLock *)v4->_lock unlock];
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
    if (![(IDSRegistrationKeyManager *)v4 _save])
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

      v4->_needsReRegister = 1;
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
    [v199 __mainThreadPostNotificationName:@"__kIDSRegistrationKeyManagerPrivateIdentityRebuiltNotification" object:v4];
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
    [v199 __mainThreadPostNotificationName:@"__kIDSRegistrationKeyManagerEncryptionIdentityNeedsRollNotification" object:v4];
    goto LABEL_218;
  }

LABEL_219:
  _Block_object_dispose(&v238, 8);
}

- (IDSRegistrationKeyManager)initWithSystemMonitor:(id)a3 keychainWrapper:(id)a4 loadingRateLimiter:(id)a5 identityDataSource:(id)a6 allowPairingIdentities:(BOOL)a7 allowRegenerateRegisteredIdentity:(BOOL)a8 keyPairProvider:(id)a9 ktRegistrationDataManager:(id)a10
{
  v15 = a3;
  v16 = a4;
  v36 = a5;
  v17 = a6;
  v35 = a9;
  v34 = a10;
  v37 = v15;
  if (!v15)
  {
    sub_100915CE8(a2, self);
  }

  v18 = v16;
  if (v16)
  {
    if (v17)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_100915D64(a2, self);
    if (v17)
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
    objc_storeStrong(&v19->_systemMonitor, a3);
    [(IMSystemMonitor *)v20->_systemMonitor addListener:v20];
    [(IMSystemMonitor *)v20->_systemMonitor setActive:1];
    [(IMSystemMonitor *)v20->_systemMonitor setWatchesDataProtectionLockState:1];
    objc_storeStrong(&v20->_keychainWrapper, a4);
    objc_storeStrong(&v20->_loadingRateLimiter, a5);
    objc_storeStrong(&v20->_identityDataSource, a6);
    v21 = [[IDSPerServiceApplicationKeyManager alloc] initWithIdentityDataSource:v17];
    applicationKeyManager = v20->_applicationKeyManager;
    v20->_applicationKeyManager = v21;

    v20->_allowPairingIdentities = a7;
    v20->_allowRegenerateRegisteredIdentity = a8;
    objc_storeStrong(&v20->_keyPairProvider, a9);
    v23 = objc_alloc_init(IDSNGMKeyLoadingErrorContainer);
    recentKeyLoadingErrors = v20->_recentKeyLoadingErrors;
    v20->_recentKeyLoadingErrors = v23;

    objc_storeStrong(&v20->_ktRegistrationDataManager, a10);
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
  v3 = [(IDSRegistrationKeyManager *)self systemMonitor];
  [v3 _removeEarlyListener:self];

  v4 = [(IDSRegistrationKeyManager *)self systemMonitor];
  [v4 removeListener:self];

  [(IDSRegistrationKeyManager *)self _unsubscribeForTimeChangeNotification];
  v5.receiver = self;
  v5.super_class = IDSRegistrationKeyManager;
  [(IDSRegistrationKeyManager *)&v5 dealloc];
}

- (void)setForceRoll:(BOOL)a3
{
  if (self->_forceRoll != a3)
  {
    v12 = v3;
    v13 = v4;
    v5 = a3;
    self->_forceRoll = a3;
    v6 = +[IMRGLog registration];
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
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

- (id)generateCSRForUserID:(id)a3
{
  v4 = a3;
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:0];
  if (v4)
  {
    v5 = [(IDSRegistrationKeyManager *)self config];
    if ([v5 privateKey])
    {
      v6 = [(IDSRegistrationKeyManager *)self config];
      v7 = [v6 publicKey];

      if (v7)
      {
        v8 = [v4 dataUsingEncoding:4];
        v9 = [v8 SHA1HexString];

        v21[0] = kSecOidCommonName;
        v21[1] = v9;
        v10 = [NSArray arrayWithObjects:v21 count:2];
        v22 = v10;
        v11 = [NSArray arrayWithObjects:&v22 count:1];
        v23 = v11;
        v12 = [NSArray arrayWithObjects:&v23 count:1];

        v13 = [(IDSRegistrationKeyManager *)self config];
        [v13 publicKey];
        v14 = [(IDSRegistrationKeyManager *)self config];
        [v14 privateKey];
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

  v9 = +[IMRGLog registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(IDSRegistrationKeyManager *)self config];
    v18 = [v17 privateKey];
    v19 = [(IDSRegistrationKeyManager *)self config];
    *buf = 138412802;
    v25 = v4;
    v26 = 2048;
    v27 = v18;
    v28 = 2112;
    v29 = [v19 publicKey];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed generating CSR due to insufficient context {userID: %@, privateKey: %p, publicKey: %@}", buf, 0x20u);
  }

  CertificateRequest = 0;
LABEL_11:

  return CertificateRequest;
}

- (__SecKey)fullIdentityForKeyIndex:(unsigned __int16)a3
{
  v3 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  v5 = [(IDSPerServiceApplicationKeyManager *)self->_applicationKeyManager fullIdentityForKeyIndex:v3];
  [(NSRecursiveLock *)self->_lock unlock];
  return v5;
}

- (id)fullDeviceIdentityContainerUsableForKeyType:(unint64_t)a3
{
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  if (a3 >= 2 && (a3 != 2 || self->_failedToGeneratedPublicDataForNGMIdentity))
  {
    goto LABEL_9;
  }

  v5 = [(IDSRegistrationKeyManager *)self config];
  v6 = [v5 unregisteredIdentityContainer];
  v7 = [(IDSRegistrationKeyManager *)self config];
  v8 = v7;
  if (v6)
  {
    [v7 unregisteredIdentityContainer];
  }

  else
  {
    [v7 registeredIdentityContainer];
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
  v3 = [(IDSRegistrationKeyManager *)self config];
  v4 = [v3 previousRegisteredIdentityContainer];

  if (!v4)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100915EE8(self);
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];

  return v4;
}

- (__SecKey)copyPublicIdentityDataToRegisterForKeyIndex:(unsigned __int16)a3 withError:(id *)a4
{
  v5 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  v7 = [(IDSPerServiceApplicationKeyManager *)self->_applicationKeyManager copyPublicIdentityDataToRegisterForKeyIndex:v5 withError:a4];
  [(NSRecursiveLock *)self->_lock unlock];
  return v7;
}

- (id)copyKTRegistrationDataToRegisterForKeyIndex:(unsigned __int16)a3 withError:(id *)a4
{
  v4 = a3;
  [(NSRecursiveLock *)self->_lock lock:a3];
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  ktRegistrationDataManager = self->_ktRegistrationDataManager;
  v12 = 0;
  v7 = [(IDSKTRegistrationDataManager *)ktRegistrationDataManager copyKTRegistrationDataToRegisterForKeyIndex:v4 isRegistered:0 withError:&v12];
  v8 = v12;
  if (!v7)
  {
    v9 = self->_ktRegistrationDataManager;
    v11 = 0;
    v7 = [(IDSKTRegistrationDataManager *)v9 copyKTRegistrationDataToRegisterForKeyIndex:v4 isRegistered:1 withError:&v11];
  }

  [(NSRecursiveLock *)self->_lock unlock];

  return v7;
}

- (id)fetchRegistrationStatusProvider
{
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  v3 = [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager createRegistrationStatusProvider];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)_handleTransparencySignatureResponse:(id)a3 error:(id)a4
{
  lock = self->_lock;
  v7 = a4;
  v8 = a3;
  [(NSRecursiveLock *)lock lock];
  LODWORD(lock) = [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager handleTransparencySignatureResponse:v8 error:v7];

  if (lock)
  {
    [(IDSRegistrationKeyManager *)self _notifyUnregisteredKTData];
  }

  v9 = self->_lock;

  [(NSRecursiveLock *)v9 unlock];
}

- (void)_handleTransparencySignatureResponseForRegistration:(id)a3 error:(id)a4
{
  lock = self->_lock;
  v7 = a4;
  v8 = a3;
  [(NSRecursiveLock *)lock lock];
  [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager handleTransparencySignatureResponse:v8 error:v7];

  v9 = self->_lock;

  [(NSRecursiveLock *)v9 unlock];
}

- (id)publicMessageProtectionIdentityDataToRegisterWithError:(id *)a3
{
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  v5 = [(IDSRegistrationKeyManager *)self config];
  v6 = [v5 unregisteredIdentityContainer];
  v7 = [(IDSRegistrationKeyManager *)self config];
  v8 = v7;
  if (v6)
  {
    [v7 unregisteredIdentityContainer];
  }

  else
  {
    [v7 registeredIdentityContainer];
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

    v12 = [v9 legacyFullIdentity];
    v13 = [(IDSRegistrationKeyManager *)self _generateUnregisteredIdentityWithExistingLegacyIdentity:v12 existingNGMIdentity:0];

    if (v13)
    {
      v14 = [(IDSRegistrationKeyManager *)self config];
      v15 = [v14 unregisteredIdentityContainer];
      v16 = [(IDSRegistrationKeyManager *)self config];
      v17 = v16;
      if (v15)
      {
        [v16 unregisteredIdentityContainer];
      }

      else
      {
        [v16 registeredIdentityContainer];
      }
      v18 = ;

      v9 = v18;
    }
  }

  v19 = [(IDSRegistrationKeyManager *)self config];
  v20 = [v19 unregisteredIdentityContainer];
  [(IDSNGMKeyLoadingErrorContainer *)self->_recentKeyLoadingErrors setHasUnregisteredContainer:v20 != 0];

  v21 = [(IDSRegistrationKeyManager *)self config];
  v22 = [v21 registeredIdentityContainer];
  [(IDSNGMKeyLoadingErrorContainer *)self->_recentKeyLoadingErrors setHasRegisteredContainer:v22 != 0];

  if (v9)
  {
    v23 = [v9 publicIdentityWithError:a3];
    if (!v23)
    {
      v30 = +[IMRGLog registration];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_10091609C(a3, self);
      }

      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      goto LABEL_70;
    }

    if (([v9 shouldRollNGMEncryptionIdentity] & 1) == 0)
    {
      v24 = [(IDSRegistrationKeyManager *)self config];
      v25 = [v24 unappliedRollingTicket];
      if (v25)
      {
      }

      else
      {
        forceRoll = self->_forceRoll;

        if (!forceRoll)
        {
          v28 = 0;
          v27 = 0;
          v30 = 0;
LABEL_57:
          v48 = [v23 ngmPublicDeviceIdentity];
          v49 = [v48 identityData];

          v50 = [v23 ngmPublicDeviceIdentity];
          v51 = [v50 prekeyData];

          v27 = v51;
          v28 = v49;
LABEL_58:
          failedToGeneratedPublicDataForNGMIdentity = self->_failedToGeneratedPublicDataForNGMIdentity;
          if (v28 && v27)
          {
            v53 = 0;
          }

          else
          {
            v54 = +[IMRGLog registration];
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              v66 = [v23 ngmPublicDeviceIdentity];
              v61 = [v66 debugDescription];
              v62 = v61;
              v63 = @"NO";
              if (v28)
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

          v56 = [v23 legacyPublicIdentity];
          v29 = [v56 dataRepresentationWithError:a3];

          if (!v29)
          {
            v57 = +[IMRGLog registration];
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              sub_100915FE4(a3, v23);
            }
          }

          v26 = [v23 ngmVersion];
LABEL_70:

          goto LABEL_71;
        }
      }
    }

    v32 = [(IDSRegistrationKeyManager *)self config];
    v33 = [v32 unappliedRollingTicket];

    if (v33)
    {
      v30 = 0;
    }

    else
    {
      v67 = 0;
      v33 = [v9 ngmKeyRollingTicketWithError:&v67];
      v30 = v67;
      if (IMGetAppBoolForKey())
      {
        if (v33)
        {
          v34 = @"Rolling key";
        }

        else
        {
          v34 = @"Tried and failed to generate new key to roll";
        }

        sub_100450174(1, @"NGM Key Rolling", v34, 1109);
      }

      if (!v33)
      {
        v42 = +[IMRGLog registration];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_100915F74();
        }

        v33 = 0;
        v27 = 0;
        v28 = 0;
        goto LABEL_48;
      }
    }

    v35 = [(IDSRegistrationKeyManager *)self config];
    [v35 setUnappliedRollingTicket:v33];

    v36 = [(IDSRegistrationKeyManager *)self config];
    v37 = [v36 unregisteredIdentityContainer];

    if (!v37)
    {
      v38 = [(IDSRegistrationKeyManager *)self config];
      v39 = [v38 registeredIdentityContainer];
      v40 = [(IDSRegistrationKeyManager *)self config];
      [v40 setUnregisteredIdentityContainer:v39];

      if (![(IDSRegistrationKeyManager *)self _save])
      {
        [(NSRecursiveLock *)self->_lock unlock];

        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        goto LABEL_76;
      }
    }

    v28 = [v33 identityData];
    v41 = [v33 prekeyData];
    v27 = v41;
    if (v28 && v41)
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

      if (v28 && v27)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    v42 = +[IMRGLog registration];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v65 = [v23 ngmPublicDeviceIdentity];
      v43 = [v65 debugDescription];
      v44 = v43;
      v45 = @"NO";
      *buf = 138413058;
      v69 = v33;
      if (v28)
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

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
LABEL_71:

  if (a3)
  {
    v58 = *a3;
  }

  else
  {
    v58 = 0;
  }

  [(IDSNGMKeyLoadingErrorContainer *)self->_recentKeyLoadingErrors setIdentityToRegisterError:v58];
  [(NSRecursiveLock *)self->_lock unlock];
  if (v29)
  {
    v59 = [[IDSPublicIdentityData alloc] initWithPublicLegacyIdentityData:v29 publicNGMIdentityData:v28 publicNGMPrekeyData:v27 NGMVersion:v26];
    goto LABEL_77;
  }

LABEL_76:
  v59 = 0;
LABEL_77:

  return v59;
}

- (id)publicMessageProtectionDeviceIdentityContainerToRegister:(id *)a3
{
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  v5 = [(IDSRegistrationKeyManager *)self config];
  v6 = [v5 unregisteredIdentityContainer];
  v7 = [(IDSRegistrationKeyManager *)self config];
  v8 = v7;
  if (v6)
  {
    [v7 unregisteredIdentityContainer];
  }

  else
  {
    [v7 registeredIdentityContainer];
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

  v10 = [v9 publicIdentityWithError:a3];
  v11 = +[IMRGLog registration];
  v12 = v11;
  if (!v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10091609C(a3, self);
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(IDSRegistrationKeyManager *)self config];
    v14 = [v13 unregisteredIdentityContainer];
    v15 = [(IDSRegistrationKeyManager *)self config];
    v16 = [v15 registeredIdentityContainer];
    v18 = 138478339;
    v19 = v10;
    v20 = 2113;
    v21 = v14;
    v22 = 2113;
    v23 = v16;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Returning publicIdentity to register {publicIdentityContainer: %{private}@, unregisteredContainer: %{private}@, registeredContainer: %{private}@}", &v18, 0x20u);
  }

LABEL_13:

  [(NSRecursiveLock *)self->_lock unlock];

  return v10;
}

- (id)_generateIdentityWithExistingIdentity:(id)a3 identifier:(int64_t)a4 dataProtectionClass:(int64_t)a5
{
  v8 = a3;
  if (v8)
  {
    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Immediately returning existing message protection identity {identity: %@}", buf, 0xCu);
    }

    v10 = v8;
  }

  else
  {
    v11 = [(IDSRegistrationKeyManager *)self identityDataSource];
    v17 = 0;
    v12 = [v11 generateLegacyIdentityWithIdentifier:a4 dataProtectionClass:a5 error:&v17];
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
        v21 = a5;
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

- (id)_getPublicMessageProtectionDataForIdentity:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v14 = 0;
    v5 = [v3 publicIdentityWithError:&v14];
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
  v3 = [(IDSRegistrationKeyManager *)self config];
  v4 = [v3 registeredIdentityContainer];
  v5 = [v4 legacyFullIdentity];

  v6 = [v5 fullIdentity];
  v7 = v6;
  if (v6)
  {
    CFRetain(v6);
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

- (_SecMPFullIdentity)latestCopyMessageProtectionIdentityForDataProtectionClass:(unsigned int)a3
{
  v3 = [(IDSRegistrationKeyManager *)self latestMessageProtectionFullIdentityForDataProtectionClass:*&a3];
  v4 = [v3 fullIdentity];
  v5 = v4;
  if (v4)
  {
    CFRetain(v4);
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
  v3 = [(IDSRegistrationKeyManager *)self config];
  v4 = [v3 previousRegisteredIdentityContainer];
  v5 = [v4 legacyFullIdentity];

  v6 = [v5 fullIdentity];
  v7 = v6;
  if (v6)
  {
    CFRetain(v6);
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

- (id)latestMessageProtectionFullIdentityForDataProtectionClass:(unsigned int)a3
{
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  if (a3)
  {
    if (a3 == 1)
    {
      v13 = 0;
      [(IDSRegistrationKeyManager *)self _loadClassAIdentityIfNeeded:&v13];
      v5 = v13;
      v6 = [(IDSRegistrationKeyManager *)self config];
      v7 = [v6 identityClassA];
    }

    else
    {
      v11 = 0;
      [(IDSRegistrationKeyManager *)self _loadClassDIdentityIfNeeded:&v11];
      v5 = v11;
      v6 = [(IDSRegistrationKeyManager *)self config];
      v7 = [v6 identityClassD];
    }
  }

  else
  {
    v12 = 0;
    [(IDSRegistrationKeyManager *)self _loadClassCIdentityIfNeeded:&v12];
    v5 = v12;
    v6 = [(IDSRegistrationKeyManager *)self config];
    v7 = [v6 identityClassC];
  }

  v8 = v7;

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
  v3 = [(IDSRegistrationKeyManager *)self config];
  v4 = [v3 registeredIdentityContainer];
  v5 = [v4 legacyFullIdentity];
  v6 = [(IDSRegistrationKeyManager *)self _getPublicMessageProtectionDataForIdentity:v5];

  return v6;
}

- (void)_ensureIdentity:(id *)a3 savedIndentity:(id *)a4 protectionClass:(int64_t)a5 didSaveIdentity:(BOOL *)a6
{
  if (*a4)
  {
    goto LABEL_2;
  }

  if (!*a3)
  {
    if (a5 > 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = qword_1009AB588[a5];
    }

    v12 = [(IDSRegistrationKeyManager *)self _generateIdentityWithExistingIdentity:0 identifier:v11 dataProtectionClass:a5];
    v13 = *a3;
    *a3 = v12;

    [(IDSRegistrationKeyManager *)self _save];
LABEL_2:
    if (!*a3)
    {
      return;
    }
  }

  [(IDSRegistrationKeyManager *)self _saveClassXIdentity:a3 savedIdentity:a4 protectionClass:a5 savedUnsavedIdentity:a6];
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
    v3 = [(IDSRegistrationKeyManager *)self config];
    v4 = [v3 unregisteredIdentityContainer];
    v5 = [(IDSRegistrationKeyManager *)self config];
    v6 = v5;
    if (v4)
    {
      [v5 unregisteredIdentityContainer];
    }

    else
    {
      [v5 registeredIdentityContainer];
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

      v10 = [v7 legacyFullIdentity];
      v11 = [(IDSRegistrationKeyManager *)self _generateUnregisteredIdentityWithExistingLegacyIdentity:v10 existingNGMIdentity:0];

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

- (BOOL)_generateUnregisteredIdentityWithExistingLegacyIdentity:(id)a3 existingNGMIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSRegistrationKeyManager *)self config];
  v9 = [v8 unregisteredIdentityContainer];
  v54 = self;
  if (([v9 hasNGMIdentity] & 1) == 0)
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

    v23 = [(IDSRegistrationKeyManager *)v54 identityDataSource];
    v55 = 0;
    v56 = 0;
    v24 = [v23 generateIdentityContainerWithIdentifier:1 existingLegacyIdentity:v6 existingNGMIdentity:v7 dataProtectionClass:0 nonLegacyError:&v56 error:&v55];
    v25 = v56;
    v18 = v55;

    [(IDSNGMKeyLoadingErrorContainer *)v54->_recentKeyLoadingErrors setGenerationError:v25];
    v26 = [(IDSRegistrationKeyManager *)v54 config];
    v27 = [v26 registeredIdentityContainer];
    v28 = [v24 isEqual:v27];

    if (v28)
    {
      v29 = +[IMRGLog registration];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [(IDSRegistrationKeyManager *)v54 config];
        v31 = [v30 registeredIdentityContainer];
        *buf = 138412546;
        v58 = v24;
        v59 = 2112;
        v60 = v31;
        v32 = "generatedIdentityContainer isEqual to registeredIdentityContainer -- no changes {generatedIdentityContainer: %@, registeredIdentityContainer: %@}";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v32, buf, 0x16u);

        goto LABEL_18;
      }

      goto LABEL_18;
    }

    v33 = [(IDSRegistrationKeyManager *)v54 config];
    v34 = [v33 unregisteredIdentityContainer];
    v35 = [v24 isEqual:v34];

    v29 = +[IMRGLog registration];
    v36 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    if (v35)
    {
      if (v36)
      {
        v30 = [(IDSRegistrationKeyManager *)v54 config];
        v31 = [v30 unregisteredIdentityContainer];
        *buf = 138412546;
        v58 = v24;
        v59 = 2112;
        v60 = v31;
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

    v37 = [(IDSRegistrationKeyManager *)v54 config];
    [v37 setUnregisteredIdentityContainer:v24];

    v38 = [(IDSRegistrationKeyManager *)v54 config];
    v39 = [v38 unregisteredIdentityContainer];

    if (v39)
    {
      v40 = +[FTDeviceSupport sharedInstance];
      v41 = [v40 productBuildVersion];
      v42 = [(IDSRegistrationKeyManager *)v54 config];
      [v42 setBuildOfUnregisteredIdentityGeneration:v41];

      v43 = +[IMRGLog registration];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = [(IDSRegistrationKeyManager *)v54 config];
        v45 = [v44 buildOfUnregisteredIdentityGeneration];
        *buf = 138412290;
        v58 = v45;
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
    v47 = [(IDSRegistrationKeyManager *)v54 config];
    v48 = [v47 unregisteredIdentityContainer];
    if ([v48 hasNGMIdentity])
    {
      v49 = [(IDSRegistrationKeyManager *)v54 config];
      v50 = [v49 unregisteredIdentityContainer];
      v51 = [v50 ngmVersion];

      if (v51)
      {
        v54->_generationRetryCount = 0;
LABEL_34:
        [(IDSRegistrationKeyManager *)v54 _save];
        v21 = 1;
        v6 = v53;
        goto LABEL_35;
      }
    }

    else
    {
    }

    ++v54->_generationRetryCount;
    [(IDSRegistrationKeyManager *)v54 _retryGenerationAfterDelay];
    goto LABEL_34;
  }

  v10 = [(IDSRegistrationKeyManager *)self config];
  v11 = [v10 unregisteredIdentityContainer];
  v12 = [v11 ngmVersion];
  [(IDSRegistrationKeyManager *)self identityDataSource];
  v13 = v7;
  v15 = v14 = v6;
  v16 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v15 ngmVersion]);
  v17 = [v12 isEqualToNumber:v16];

  v6 = v14;
  v7 = v13;

  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }

  v18 = +[IMRGLog registration];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(IDSRegistrationKeyManager *)v54 config];
    v20 = [v19 unregisteredIdentityContainer];
    *buf = 138412290;
    v58 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Called _generateUnregisteredIdentityWithExistingLegacyIdentity but we have a valid unregisteredIdentity -- no changed {unregisteredIdentityContainer: %@}", buf, 0xCu);
  }

  v21 = 0;
LABEL_36:

  return v21;
}

- (void)_notifyUnregisteredIdentityRegenerated
{
  v3 = [(IDSRegistrationKeyManager *)self config];
  v4 = [v3 unregisteredIdentityContainer];
  if (v4)
  {
  }

  else
  {
    v5 = [(IDSPerServiceApplicationKeyManager *)self->_applicationKeyManager hasUnregisteredIdentity];

    if ((v5 & 1) == 0)
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
  v3 = [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager registrationNeedKTDataUpdated];
  [(NSRecursiveLock *)self->_lock unlock];
  return v3;
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
  v3 = [(IDSRegistrationKeyManager *)self config];
  v4 = [v3 registeredIdentityContainer];
  v5 = [v4 legacyFullIdentity];

  [(NSRecursiveLock *)self->_lock unlock];

  return v5;
}

- (id)previousFullMessageProtectionIdentity
{
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  v3 = [(IDSRegistrationKeyManager *)self config];
  v4 = [v3 previousRegisteredIdentityContainer];
  v5 = [v4 legacyFullIdentity];

  [(NSRecursiveLock *)self->_lock unlock];

  return v5;
}

- (id)fullMessageProtectionIdentityForDataProtectionClass:(unsigned int)a3
{
  v3 = [(IDSRegistrationKeyManager *)self latestCopyMessageProtectionIdentityForDataProtectionClass:*&a3];
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

- (void)notePublicIdentityDidRegisterLegacyData:(id)a3 ngmIdentityData:(id)a4 ngmPrekeyData:(id)a5 keyIndexToIdentityData:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(NSRecursiveLock *)self->_lock lock];
  v14 = +[IMRGLog registration];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v154 = v10;
    v155 = 2112;
    v156 = v11;
    v157 = 2112;
    v158 = v12;
    v159 = 2112;
    v160 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Registration key manager noting registration of keys { legacyData: %@, ngmIdentityData: %@, ngmPrekeyData: %@, keyIndexToIdentityData: %@ }", buf, 0x2Au);
  }

  v15 = [(IDSRegistrationKeyManager *)self config];
  v16 = [v15 unregisteredIdentityContainer];

  v129 = v11;
  v130 = v12;
  if (v16)
  {
    v135 = v13;
    v17 = [(IDSRegistrationKeyManager *)self config];
    v18 = [v17 unregisteredIdentityContainer];
    v151 = 0;
    v19 = [v18 publicIdentityWithError:&v151];
    v20 = v151;

    if (v19)
    {
      v21 = [v19 legacyPublicIdentity];
      v150 = v20;
      v22 = [v21 dataRepresentationWithError:&v150];
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

      v25 = [(IDSRegistrationKeyManager *)self config];
      v26 = [v25 unappliedRollingTicket];

      if (v26)
      {
        v27 = [(IDSRegistrationKeyManager *)self config];
        v28 = [v27 unappliedRollingTicket];
        v29 = [v28 identityData];

        v30 = [(IDSRegistrationKeyManager *)self config];
        v31 = [v30 unappliedRollingTicket];
        v32 = [v31 prekeyData];
      }

      else
      {
        v34 = [v19 ngmPublicDeviceIdentity];
        v29 = [v34 identityData];

        v30 = [v19 ngmPublicDeviceIdentity];
        v32 = [v30 prekeyData];
      }

      if (v29 && v32)
      {
LABEL_19:

        v35 = [(IDSRegistrationKeyManager *)self config];
        v36 = [v35 unregisteredIdentityContainer];
        v37 = [v36 legacyFullIdentity];
        v38 = [(IDSRegistrationKeyManager *)self _getPublicMessageProtectionDataForIdentity:v37];

        if (v10)
        {
          v39 = [v137 isEqualToData:v10];
        }

        else
        {
          v39 = 0;
        }

        if (v29 == v11)
        {
          v40 = 1;
        }

        else if (v11)
        {
          v40 = [v29 isEqualToData:v11];
        }

        else
        {
          v40 = 0;
        }

        if (v32 == v130)
        {
          v41 = 1;
        }

        else
        {
          if (!v130)
          {
            LODWORD(v41) = 0;
            goto LABEL_40;
          }

          v41 = [v32 isEqualToData:v130];
        }

        if ((v39 & v40) == 1 && v41)
        {
          v42 = [(IDSRegistrationKeyManager *)self config];
          v43 = [v42 unappliedRollingTicket];

          if (v43)
          {
            v44 = [(IDSRegistrationKeyManager *)self config];
            v45 = [v44 unregisteredIdentityContainer];
            v41 = [(IDSRegistrationKeyManager *)self config];
            v46 = [v41 unappliedRollingTicket];
            v149 = 0;
            v47 = [v45 updateNGMIdentityWithRegisteredTicket:v46 error:&v149];
            v48 = v149;

            v49 = [(IDSRegistrationKeyManager *)self config];
            [v49 setUnappliedRollingTicket:0];

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
              v13 = v135;
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

          v53 = [(IDSRegistrationKeyManager *)self config];
          v54 = [v53 registeredIdentityContainer];
          v55 = [(IDSRegistrationKeyManager *)self config];
          [v55 setPreviousRegisteredIdentityContainer:v54];

          v56 = [(IDSRegistrationKeyManager *)self config];
          v57 = [v56 unregisteredIdentityContainer];
          v58 = [(IDSRegistrationKeyManager *)self config];
          [v58 setRegisteredIdentityContainer:v57];

          v59 = [(IDSRegistrationKeyManager *)self config];
          [v59 setUnregisteredIdentityContainer:0];

          v60 = [(IDSRegistrationKeyManager *)self config];
          v61 = [v60 buildOfUnregisteredIdentityGeneration];
          v62 = v61;
          if (!v61)
          {
            v41 = [(IDSRegistrationKeyManager *)self config];
            v62 = [v41 buildOfIdentityGeneration];
          }

          v63 = [(IDSRegistrationKeyManager *)self config];
          [v63 setBuildOfIdentityGeneration:v62];

          if (!v61)
          {
          }

          v64 = [(IDSRegistrationKeyManager *)self config];
          [v64 setBuildOfUnregisteredIdentityGeneration:0];

          v65 = +[IMRGLog registration];
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            v131 = [(IDSRegistrationKeyManager *)self config];
            v66 = [v131 previousRegisteredIdentityContainer];
            v67 = [(IDSRegistrationKeyManager *)self config];
            v68 = [v67 registeredIdentityContainer];
            [(IDSRegistrationKeyManager *)self config];
            v69 = v133 = v48;
            [v69 buildOfIdentityGeneration];
            v71 = v70 = v10;
            *buf = 138412802;
            v154 = v66;
            v155 = 2112;
            v156 = v68;
            v157 = 2112;
            v158 = v71;
            _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Completed registration of previously unregistered identity {previousIdentity: %@, identity: %@, buildOfIdentityGeneration: %@}", buf, 0x20u);

            v10 = v70;
            v48 = v133;
          }

          if (IMGetAppBoolForKey())
          {
            sub_100450174(1, @"Key Rolling", @"Registered new identity", 1109);
          }

          [(IDSRegistrationKeyManager *)self _save];
          v72 = [(IDSRegistrationKeyManager *)self config];
          v73 = [v72 previousRegisteredIdentityContainer];

          v13 = v135;
          if (v73)
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
          if (v41)
          {
            v119 = @"YES";
          }

          v157 = 2112;
          v158 = v119;
          _os_log_fault_impl(&_mh_execute_header, v52, OS_LOG_TYPE_FAULT, "Completed registration of public identity, but it's not the identity we expected {legacyDataMatches: %@, ngmIdentityDataMatches: %@, ngmPrekeyDataMatches: %@}", buf, 0x20u);
        }

        v13 = v135;
        if (IMGetAppBoolForKey())
        {
          sub_100450174(1, @"Key Rolling", @"Failed to compare registered identity", 1109);
        }

        goto LABEL_59;
      }

      v33 = +[IMRGLog registration];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v122 = [(IDSRegistrationKeyManager *)self config];
        v123 = [v122 unappliedRollingTicket];
        v124 = v123;
        v125 = @"NO";
        *buf = 138544387;
        v154 = v23;
        v155 = 2112;
        if (v29)
        {
          v126 = @"YES";
        }

        else
        {
          v126 = @"NO";
        }

        v156 = v123;
        if (v32)
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

      v32 = 0;
      v29 = 0;
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
  v79 = [v77 legacyPublicIdentity];
  v147 = v78;
  v80 = [v79 dataRepresentationWithError:&v147];
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

  v84 = [(IDSRegistrationKeyManager *)self keychainWrapper];
  v146 = v81;
  v85 = [v84 saveData:v80 forIdentifier:@"message-protection-public-data-registered" allowSync:0 dataProtectionClass:0 error:&v146];
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

  v87 = [v138 ngmPublicDeviceIdentity];
  v88 = [v87 identityData];

  v89 = [v138 ngmPublicDeviceIdentity];
  v90 = [v89 prekeyData];

  v91 = +[IMRGLog registration];
  v92 = v91;
  v132 = v90;
  v134 = v88;
  if (!v88 || !v90)
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
    v156 = v88;
    _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "Saving public ngm message protection identity data {identifier: %@, data: %@}", buf, 0x16u);
  }

  v93 = [(IDSRegistrationKeyManager *)self keychainWrapper];
  v145 = v86;
  v94 = [v93 saveData:v88 forIdentifier:@"ngm-message-protection-public-data-registered" allowSync:0 dataProtectionClass:0 error:&v145];
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

  v98 = [(IDSRegistrationKeyManager *)self keychainWrapper];
  v144 = v95;
  v99 = [v98 saveData:v132 forIdentifier:@"ngm-message-protection-public-prekey-data-registered" allowSync:0 dataProtectionClass:0 error:&v144];
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

  v100 = [v138 ngmVersion];
  if (v100)
  {
    v101 = [(IDSRegistrationKeyManager *)self identityDataSource];
    v102 = [v101 dataRepresentationForNGMVersion:{objc_msgSend(v100, "unsignedIntValue")}];

    v103 = +[IMRGLog registration];
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v154 = @"ngm-message-protection-public-data-registered-version";
      v155 = 2114;
      v156 = v100;
      v157 = 2114;
      v158 = v102;
      _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "Saving public ngm version data {identifier: %{public}@, ngmVersion: %{public}@, ngmVersionData: %{public}@}", buf, 0x20u);
    }

    v104 = v100;

    v105 = [(IDSRegistrationKeyManager *)self keychainWrapper];
    v143 = v86;
    v106 = [v105 saveData:v102 forIdentifier:@"ngm-message-protection-public-data-registered-version" allowSync:0 dataProtectionClass:0 error:&v143];
    v107 = v143;

    if (v106)
    {
      v100 = v104;
    }

    else
    {
      v108 = +[IMRGLog registration];
      v100 = v104;
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
  v109 = v13;
  v110 = [(__CFString *)v109 countByEnumeratingWithState:&v139 objects:v152 count:16];
  if (v110)
  {
    v111 = v110;
    v127 = v100;
    v112 = v10;
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

    v10 = v112;
    v100 = v127;
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

- (void)noteDidRegisterKTData:(id)a3 forKeyIndex:(unsigned __int16)a4
{
  v4 = a4;
  v6 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  if (+[IDSKeyTransparencyVerifier isKeyTransparencyEnabled])
  {
    if (v6)
    {
      [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager notePublicIdentityDidRegisterKTData:v6 forKeyIndex:v4];
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
  v4 = [(IDSRegistrationKeyManager *)self config];
  [v4 setPrivateKey:0];

  v5 = [(IDSRegistrationKeyManager *)self config];
  [v5 setPublicKey:0];

  v6 = [(IDSRegistrationKeyManager *)self config];
  [v6 setSignature:0];

  v7 = [(IDSRegistrationKeyManager *)self identityDataSource];
  v8 = [(IDSRegistrationKeyManager *)self config];
  v9 = [v8 registeredIdentityContainer];
  v30 = 0;
  v10 = [v7 removeIdentityContainer:v9 withIdentifier:2 dataProtectionClass:0 error:&v30];
  v11 = v30;

  if ((v10 & 1) == 0)
  {
    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1009168C0();
    }
  }

  v13 = [(IDSRegistrationKeyManager *)self identityDataSource];
  v14 = [(IDSRegistrationKeyManager *)self config];
  v15 = [v14 unregisteredIdentityContainer];
  v29 = v11;
  v16 = [v13 removeIdentityContainer:v15 withIdentifier:1 dataProtectionClass:0 error:&v29];
  v17 = v29;

  if ((v16 & 1) == 0)
  {
    v18 = +[IMRGLog registration];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_100916930();
    }
  }

  v19 = [(IDSRegistrationKeyManager *)self identityDataSource];
  v20 = [(IDSRegistrationKeyManager *)self config];
  v21 = [v20 previousRegisteredIdentityContainer];
  v28 = v17;
  v22 = [v19 removeIdentityContainer:v21 withIdentifier:3 dataProtectionClass:0 error:&v28];
  v23 = v28;

  if ((v22 & 1) == 0)
  {
    v24 = +[IMRGLog registration];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      sub_1009169A0();
    }
  }

  v25 = [(IDSRegistrationKeyManager *)self config];
  [v25 setRegisteredIdentityContainer:0];

  v26 = [(IDSRegistrationKeyManager *)self config];
  [v26 setUnregisteredIdentityContainer:0];

  v27 = [(IDSRegistrationKeyManager *)self config];
  [v27 setPreviousRegisteredIdentityContainer:0];

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
  v4 = [(IDSRegistrationKeyManager *)self config];
  v5 = [v4 previousRegisteredIdentityContainer];
  if (v5)
  {
    v6 = v5;
    v7 = [(IDSRegistrationKeyManager *)self config];
    v8 = [v7 previousRegisteredIdentityContainer];
    v9 = [(IDSRegistrationKeyManager *)self config];
    v10 = [v9 registeredIdentityContainer];

    if (v8 != v10)
    {
      v11 = [(IDSRegistrationKeyManager *)self identityDataSource];
      v12 = [(IDSRegistrationKeyManager *)self config];
      v13 = [v12 previousRegisteredIdentityContainer];
      v26 = 0;
      v14 = [v11 removeIdentityContainer:v13 withIdentifier:3 dataProtectionClass:0 error:&v26];
      v15 = v26;

      v16 = +[IMRGLog registration];
      v17 = v16;
      if (v14)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [(IDSRegistrationKeyManager *)self config];
          v19 = [v18 previousRegisteredIdentityContainer];
          *buf = 138477827;
          v28 = v19;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Removed previous identity from memory and keychain {previousIdentity: %{private}@}", buf, 0xCu);
        }

        v20 = [(IDSRegistrationKeyManager *)self config];
        [v20 setPreviousRegisteredIdentityContainer:0];

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
    v22 = [(IDSRegistrationKeyManager *)self config];
    v23 = [v22 previousRegisteredIdentityContainer];
    v24 = [(IDSRegistrationKeyManager *)self config];
    v25 = [v24 registeredIdentityContainer];
    *buf = 138412546;
    v28 = v23;
    v29 = 2112;
    v30 = v25;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No previous identity to purge -- ignoring request {previousIdentity: %@, identity: %@}", buf, 0x16u);
  }

LABEL_19:

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)_ktDataNeedsUpdate:(id)a3
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

- (void)_generateKTRegistrationData:(id)a3
{
  lock = self->_lock;
  v5 = a3;
  [(NSRecursiveLock *)lock lock];
  [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager requestGenerationOfUnregisteredKTRegDataWithPublicIdentityData:v5 applicationKeyManager:self->_applicationKeyManager];

  v6 = self->_lock;

  [(NSRecursiveLock *)v6 unlock];
}

- (void)fetchKTSignatureDataForServiceTypes:(id)a3 publicIdentityData:(id)a4 registerID:(id)a5 withCompletion:(id)a6
{
  lock = self->_lock;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  [(NSRecursiveLock *)lock lock];
  [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager fetchKTSignatureDataForServiceTypes:v14 publicIdentityData:v13 registerID:v12 applicationKeyManager:self->_applicationKeyManager withCompletion:v11];

  v15 = self->_lock;

  [(NSRecursiveLock *)v15 unlock];
}

- (void)_handleKVSUpdateResponseForTrustedDevices:(id)a3 withSuccessfulKVSSync:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  v7 = +[IMRGLog registration];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v8)
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully synced KVS with trusted devices. { trustedDevices: %@ }", &v9, 0xCu);
    }

    [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager noteSuccessfulKVSSyncOfTrustedDevices:v6];
  }

  else
  {
    if (v8)
    {
      v9 = 138412290;
      v10 = v6;
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

- (void)loadPairingIdentities:(BOOL)a3
{
  v3 = a3;
  if ([(IDSRegistrationKeyManager *)self allowPairingIdentities])
  {
    [(NSRecursiveLock *)self->_lock lock];
    v55 = 0;
    [(IDSRegistrationKeyManager *)self _loadClassAIdentityIfNeeded:&v55];
    v5 = v55;
    v6 = [(IDSRegistrationKeyManager *)self config];
    v7 = [v6 identityClassA];
    v8 = [(IDSRegistrationKeyManager *)self _getPublicMessageProtectionDataForIdentity:v7];

    v54 = 0;
    [(IDSRegistrationKeyManager *)self _loadClassCIdentityIfNeeded:&v54];
    v9 = v54;
    v10 = [(IDSRegistrationKeyManager *)self config];
    v11 = [v10 identityClassC];
    v12 = [(IDSRegistrationKeyManager *)self _getPublicMessageProtectionDataForIdentity:v11];

    v53 = 0;
    [(IDSRegistrationKeyManager *)self _loadClassDIdentityIfNeeded:&v53];
    v13 = v53;
    v14 = [(IDSRegistrationKeyManager *)self config];
    v15 = [v14 identityClassD];
    v16 = [(IDSRegistrationKeyManager *)self _getPublicMessageProtectionDataForIdentity:v15];

    if (v3)
    {
      v52 = 0;
      v51 = 0;
      v17 = [(IDSRegistrationKeyManager *)self config];
      v18 = [v17 identityClassA];
      if (v18)
      {
      }

      else
      {
        v19 = [IDSKeychainWrapper isInteractionNotAllowedError:v5];

        if ((v19 & 1) == 0)
        {
          v20 = [(IDSRegistrationKeyManager *)self config];
          *buf = [v20 unSavedidentityClassA];

          v21 = [(IDSRegistrationKeyManager *)self config];
          v49 = [v21 identityClassA];

          [(IDSRegistrationKeyManager *)self _ensureIdentity:buf savedIndentity:&v49 protectionClass:1 didSaveIdentity:&v52 + 1];
          v22 = *buf;
          v23 = [(IDSRegistrationKeyManager *)self config];
          [v23 setUnSavedidentityClassA:v22];

          v24 = v49;
          v25 = [(IDSRegistrationKeyManager *)self config];
          [v25 setIdentityClassA:v24];
        }
      }

      v26 = [(IDSRegistrationKeyManager *)self config];
      v27 = [v26 identityClassC];
      if (v27)
      {
      }

      else
      {
        v28 = [IDSKeychainWrapper isInteractionNotAllowedError:v9];

        if ((v28 & 1) == 0)
        {
          v29 = [(IDSRegistrationKeyManager *)self config];
          *buf = [v29 unSavedidentityClassC];

          v30 = [(IDSRegistrationKeyManager *)self config];
          v49 = [v30 identityClassC];

          [(IDSRegistrationKeyManager *)self _ensureIdentity:buf savedIndentity:&v49 protectionClass:0 didSaveIdentity:&v52];
          v31 = *buf;
          v32 = [(IDSRegistrationKeyManager *)self config];
          [v32 setUnSavedidentityClassC:v31];

          v33 = v49;
          v34 = [(IDSRegistrationKeyManager *)self config];
          [v34 setIdentityClassC:v33];
        }
      }

      v35 = [(IDSRegistrationKeyManager *)self config];
      v36 = [v35 identityClassD];
      if (v36)
      {
      }

      else
      {
        v37 = [IDSKeychainWrapper isInteractionNotAllowedError:v13];

        if ((v37 & 1) == 0)
        {
          v38 = [(IDSRegistrationKeyManager *)self config];
          *buf = [v38 unSavedidentityClassD];

          v39 = [(IDSRegistrationKeyManager *)self config];
          v49 = [v39 identityClassD];

          [(IDSRegistrationKeyManager *)self _ensureIdentity:buf savedIndentity:&v49 protectionClass:2 didSaveIdentity:&v51];
          v40 = *buf;
          v41 = [(IDSRegistrationKeyManager *)self config];
          [v41 setUnSavedidentityClassD:v40];

          v42 = v49;
          v43 = [(IDSRegistrationKeyManager *)self config];
          [v43 setIdentityClassD:v42];
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

- (void)regeneratePairingIdentitiesIncludingClassD:(BOOL)a3
{
  v3 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  v5 = [(IDSRegistrationKeyManager *)self systemMonitor];
  v6 = [v5 isUnderDataProtectionLock];

  if (v6)
  {
    self->_pendingIdentityRegeneration = 1;
  }

  else
  {
    v7 = [(IDSRegistrationKeyManager *)self identityDataSource];
    v8 = [(IDSRegistrationKeyManager *)self config];
    v9 = [v8 identityClassA];
    v44 = 0;
    v10 = [v7 removeLegacyIdentity:v9 withIdentifier:4 dataProtectionClass:1 error:&v44];
    v11 = v44;

    if ((v10 & 1) == 0)
    {
      v12 = +[IMRGLog registration];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100916AB4();
      }
    }

    v13 = [(IDSRegistrationKeyManager *)self config];
    [v13 setIdentityClassA:0];

    v14 = [(IDSRegistrationKeyManager *)self config];
    v15 = [v14 unSavedidentityClassA];
    v43 = v11;
    [v15 purgeFromKeychain:&v43];
    v16 = v43;

    v17 = [(IDSRegistrationKeyManager *)self config];
    [v17 setUnSavedidentityClassA:0];

    v18 = [(IDSRegistrationKeyManager *)self identityDataSource];
    v19 = [(IDSRegistrationKeyManager *)self config];
    v20 = [v19 identityClassC];
    v42 = v16;
    v21 = [v18 removeLegacyIdentity:v20 withIdentifier:5 dataProtectionClass:0 error:&v42];
    v22 = v42;

    if ((v21 & 1) == 0)
    {
      v23 = +[IMRGLog registration];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100916B58();
      }
    }

    v24 = [(IDSRegistrationKeyManager *)self config];
    [v24 setIdentityClassC:0];

    v25 = [(IDSRegistrationKeyManager *)self config];
    v26 = [v25 unSavedidentityClassC];
    v41 = v22;
    [v26 purgeFromKeychain:&v41];
    v27 = v41;

    v28 = [(IDSRegistrationKeyManager *)self config];
    [v28 setUnSavedidentityClassC:0];

    if (v3)
    {
      v29 = [(IDSRegistrationKeyManager *)self identityDataSource];
      v30 = [(IDSRegistrationKeyManager *)self config];
      v31 = [v30 identityClassD];
      v40 = v27;
      v32 = [v29 removeLegacyIdentity:v31 withIdentifier:6 dataProtectionClass:2 error:&v40];
      v33 = v40;

      if ((v32 & 1) == 0)
      {
        v34 = +[IMRGLog registration];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_100916BFC();
        }
      }

      v35 = [(IDSRegistrationKeyManager *)self config];
      [v35 setIdentityClassD:0];

      v36 = [(IDSRegistrationKeyManager *)self config];
      v37 = [v36 unSavedidentityClassD];
      v39 = v33;
      [v37 purgeFromKeychain:&v39];
      v27 = v39;

      v38 = [(IDSRegistrationKeyManager *)self config];
      [v38 setUnSavedidentityClassD:0];
    }

    [(IDSRegistrationKeyManager *)self loadPairingIdentities:1];
    self->_pendingIdentityRegeneration = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (id)keyPairSignature
{
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:0];
  v3 = [(IDSRegistrationKeyManager *)self config];
  v4 = [v3 signature];

  return v4;
}

- (BOOL)needsPublicDataUpdatedForKeyIndex:(unsigned __int16)a3 ktRegistrationKeyIndex:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  v61 = 0;
  v7 = [(IDSRegistrationKeyManager *)self publicMessageProtectionDeviceIdentityContainerToRegister:&v61];
  v8 = v61;
  v9 = [v7 legacyPublicIdentity];
  v60 = v8;
  v10 = [v9 dataRepresentationWithError:&v60];
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

    v14 = [(IDSRegistrationKeyManager *)self keychainWrapper];
    v59 = v11;
    v13 = [v14 dataForIdentifier:@"message-protection-public-data-registered" error:&v59];
    v54 = v59;

    if ([v13 length])
    {
      if (([v13 isEqualToData:v10]& 1) != 0)
      {
        v12 = 0;
LABEL_17:
        v17 = [v7 ngmPublicDeviceIdentity];
        v18 = [v17 identityData];

        v19 = [v7 ngmPublicDeviceIdentity];
        v55 = [v19 prekeyData];

        if (![v18 length] || !objc_msgSend(v55, "length"))
        {
          v20 = +[IMRGLog registration];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            v45 = @"YES";
            *buf = 138544131;
            v63 = v54;
            if (v18)
            {
              v46 = @"YES";
            }

            else
            {
              v46 = @"NO";
            }

            if (!v55)
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

        v21 = [v7 ngmVersion];
        v22 = v21;
        v53 = v18;
        if (!v21)
        {
          v32 = +[IMRGLog registration];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            sub_100916CA0();
          }

          goto LABEL_47;
        }

        if (!v18 || !v55)
        {
          goto LABEL_48;
        }

        v48 = v13;
        v52 = v21;
        v23 = [(IDSRegistrationKeyManager *)self keychainWrapper];
        v58 = v54;
        v24 = [v23 dataForIdentifier:@"ngm-message-protection-public-data-registered" error:&v58];
        v25 = v58;

        v26 = v24;
        v27 = [(IDSRegistrationKeyManager *)self keychainWrapper];
        v57 = v25;
        v28 = [v27 dataForIdentifier:@"ngm-message-protection-public-prekey-data-registered" error:&v57];
        v51 = v57;

        v50 = v28;
        if ([v26 length]&& [v28 length])
        {
          if (([v26 isEqualToData:v53]& 1) != 0)
          {
            v29 = [v28 isEqualToData:v55];
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
              v65 = v55;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Registered ngm prekey data doesn't match current data -- returning YES {registeredNGMPrekeyData: %{private}@, publicNGMPrekeyData: %{private}@}", buf, 0x16u);
            }

LABEL_37:

            v12 = 1;
LABEL_38:
            v47 = v4;
            v49 = v26;
            v34 = [(IDSRegistrationKeyManager *)self identityDataSource];
            v35 = [v34 dataRepresentationForNGMVersion:{objc_msgSend(v30, "unsignedIntValue")}];

            v36 = [(IDSRegistrationKeyManager *)self keychainWrapper];
            v56 = v51;
            v37 = [v36 dataForIdentifier:@"ngm-message-protection-public-data-registered-version" error:&v56];
            v54 = v56;

            v38 = v37;
            if ([v37 length])
            {
              v39 = [v37 isEqual:v35];
              v22 = v52;
              v4 = v47;
              if (v39)
              {
LABEL_46:

                v32 = v49;
LABEL_47:

LABEL_48:
                v11 = v54;
                [(NSRecursiveLock *)self->_lock lock];
                if ([(IDSPerServiceApplicationKeyManager *)self->_applicationKeyManager needsPublicDataUpdatedForKeyIndex:v5])
                {
                  v42 = +[IMRGLog registration];
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Application service key needs update", buf, 2u);
                  }

                  v12 = 1;
                }

                if ([(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager needsPublicDataUpdatedForKeyIndex:v4])
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
                v41 = [(IDSRegistrationKeyManager *)self config];
                *buf = 138543619;
                v63 = v54;
                v64 = 2113;
                v65 = v41;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Registered ngm data version is empty -- returning YES {error: %{public}@, config: %{private}@}", buf, 0x16u);
              }

              v22 = v52;
              v4 = v47;
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
            v33 = [(IDSRegistrationKeyManager *)self config];
            *buf = 138543619;
            v63 = v51;
            v64 = 2113;
            v65 = v33;
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
        v16 = [(IDSRegistrationKeyManager *)self config];
        *buf = 138543619;
        v63 = v54;
        v64 = 2113;
        v65 = v16;
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

- (id)createKTRegistrationDataForServiceTypes:(id)a3 withPublicIdentity:(id)a4
{
  lock = self->_lock;
  v7 = a4;
  v8 = a3;
  [(NSRecursiveLock *)lock lock];
  v9 = [(IDSKTRegistrationDataManager *)self->_ktRegistrationDataManager createKTRegistrationDataForServiceTypes:v8 usingPublicIdentityData:v7 withApplicationKeyManager:self->_applicationKeyManager];

  [(NSRecursiveLock *)self->_lock unlock];

  return v9;
}

- (BOOL)isMigratedKeyPairSignature
{
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:0];
  v3 = [(IDSRegistrationKeyManager *)self config];
  v4 = [v3 isMigratedSignature];

  return v4;
}

- (BOOL)isUsingSecureStorageForClassA
{
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(IDSRegistrationKeyManager *)self config];
  v4 = [v3 identityClassA];
  v5 = [(IDSRegistrationKeyManager *)self _isSecurelyStoringIdentity:v4 withExpectedProtectionClass:1];

  [(NSRecursiveLock *)self->_lock unlock];
  return v5;
}

- (BOOL)isUsingSecureStorageForClassC
{
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(IDSRegistrationKeyManager *)self config];
  v4 = [v3 identityClassC];
  v5 = [(IDSRegistrationKeyManager *)self _isSecurelyStoringIdentity:v4 withExpectedProtectionClass:0];

  [(NSRecursiveLock *)self->_lock unlock];
  return v5;
}

- (BOOL)_isSecurelyStoringIdentity:(id)a3 withExpectedProtectionClass:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v13 = 0;
    v7 = [v5 dataProtectionClassWithError:&v13];
    v8 = v13;
    v9 = [IDSKeychainWrapper idsKeychainWrapperDataProtectionClassFromIMDataProtectionClass:v7];
    if (v8)
    {
      v10 = +[IMRGLog registration];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218499;
        v15 = a4;
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
      v11 = v9 == a4;
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
  v3 = [(IDSRegistrationKeyManager *)self config];
  v4 = [v3 identityClassA];
  v5 = [(IDSRegistrationKeyManager *)self _migrateIdentity:v4 toProtectionClass:1];

  [(NSRecursiveLock *)self->_lock unlock];
  return v5;
}

- (BOOL)migrateToSecureStorageForClassC
{
  [(IDSRegistrationKeyManager *)self _loadIfNeeded:1];
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(IDSRegistrationKeyManager *)self config];
  v4 = [v3 identityClassC];
  v5 = [(IDSRegistrationKeyManager *)self _migrateIdentity:v4 toProtectionClass:0];

  [(NSRecursiveLock *)self->_lock unlock];
  return v5;
}

- (BOOL)_migrateIdentity:(id)a3 toProtectionClass:(int64_t)a4
{
  v5 = a3;
  if (v5)
  {
    v10 = 0;
    v6 = [v5 updateIdentityToDataProtectionClass:+[IDSKeychainWrapper imDataProtectionClassFromDataProtectionClass:](IDSKeychainWrapper error:{"imDataProtectionClassFromDataProtectionClass:", a4), &v10}];
    v7 = v10;
    if ((v6 & 1) == 0)
    {
      v8 = +[IMRGLog registration];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543875;
        v12 = v7;
        v13 = 2113;
        v14 = v5;
        v15 = 2048;
        v16 = a4;
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
  v3 = [(IDSRegistrationKeyManager *)self config];
  v4 = [v3 unregisteredIdentityContainer];

  v5 = +[IMRGLog registration];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
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

    v7 = [(IDSRegistrationKeyManager *)self config];
    v8 = [v7 registeredIdentityContainer];
    v9 = [v8 ngmFullDeviceIdentity];
    [(IDSRegistrationKeyManager *)self _generateUnregisteredIdentityWithExistingLegacyIdentity:0 existingNGMIdentity:v9];

    [(IDSRegistrationKeyManager *)self _notifyUnregisteredIdentityRegenerated];
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (BOOL)_shouldRegenerateRegisteredIdentity
{
  if ([(IDSRegistrationKeyManager *)self allowRegenerateRegisteredIdentity])
  {
    [(NSRecursiveLock *)self->_lock lock];
    v3 = [(IDSRegistrationKeyManager *)self config];
    v4 = [v3 buildOfIdentityGeneration];

    [(NSRecursiveLock *)self->_lock unlock];
    v5 = v4 == 0;
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
  v7 = [v6 isInternalInstall];

  v8 = v3 + v5;
  if (v7)
  {
    v9 = 1800;
  }

  else
  {
    v9 = 2592000;
  }

  return v8 + arc4random_uniform(v9);
}

- (void)_schedulePurgeOfPreviousIdentityAfterDelay:(double)a3
{
  v5 = im_primary_queue();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10033B414;
  v6[3] = &unk_100BD7978;
  v6[4] = self;
  *&v6[5] = a3;
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

- (void)_scheduleRegenerationOfRegisteredIdentityAfterDelay:(double)a3
{
  v5 = im_primary_queue();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10033B7D8;
  v6[3] = &unk_100BD7978;
  v6[4] = self;
  *&v6[5] = a3;
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
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end