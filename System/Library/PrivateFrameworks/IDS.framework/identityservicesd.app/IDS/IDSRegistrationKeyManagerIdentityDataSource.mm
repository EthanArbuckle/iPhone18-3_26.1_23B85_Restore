@interface IDSRegistrationKeyManagerIdentityDataSource
+ (id)containerStorageItemNameForContainerIdentityIdentifier:(int64_t)identifier;
+ (id)containerStorageItemNameForContainerIdentityIdentifier:(int64_t)identifier applicationKeyIndex:(unsigned __int16)index;
+ (id)containerStorageItemNameForKTDataAtKeyIndex:(unsigned __int16)index isRegistered:(BOOL)registered;
+ (id)legacyStorageItemNameForContainerIdentityIdentifier:(int64_t)identifier;
+ (id)storageItemNameForLegacyIdentityIdentifier:(int64_t)identifier;
- (BOOL)_removeDataFromKeychainForIdentifier:(id)identifier dataProtectionClass:(int64_t)class error:(id *)error;
- (BOOL)loadIsIdentityRegisteredForApplicationKeyIndex:(unsigned __int16)index error:(id *)error;
- (BOOL)removeIdentityContainer:(id)container withIdentifier:(int64_t)identifier dataProtectionClass:(int64_t)class error:(id *)error;
- (BOOL)removeIdentityWithApplicationKeyIndex:(unsigned __int16)index error:(id *)error;
- (BOOL)removeKTRegistrationDataForKeyIndex:(unsigned __int16)index isRegistered:(BOOL)registered error:(id *)error;
- (BOOL)removeLegacyIdentity:(id)identity withIdentifier:(int64_t)identifier dataProtectionClass:(int64_t)class error:(id *)error;
- (BOOL)saveIdentityContainer:(id)container withIdentifier:(int64_t)identifier dataProtectionClass:(int64_t)class error:(id *)error;
- (BOOL)saveIsRegistered:(BOOL)registered forApplicationKeyIndex:(unsigned __int16)index error:(id *)error;
- (BOOL)saveKTRegistrationData:(id)data forKeyIndex:(unsigned __int16)index isRegistered:(BOOL)registered error:(id *)error;
- (BOOL)saveLegacyIdentity:(id)identity withIdentifier:(int64_t)identifier dataProtectionClass:(int64_t)class error:(id *)error;
- (IDSRegistrationKeyManagerIdentityDataSource)initWithKeychainWrapper:(id)wrapper;
- (__SecKey)copyIdentityFromKeychainWithApplicationKeyIndex:(unsigned __int16)index error:(id *)error;
- (__SecKey)createIdentityForApplicationKeyIndex:(unsigned __int16)index error:(id *)error;
- (id)_loadContainerWithIdentifier:(id)identifier serializationDidChage:(BOOL *)chage deserializationDidFail:(BOOL *)fail needsEncryptionIdentityRoll:(BOOL *)roll error:(id *)error;
- (id)_loadLegacyIdentityWithIdentifier:(id)identifier serializationDidChange:(BOOL *)change deserializationDidFail:(BOOL *)fail error:(id *)error;
- (id)_retrying_loadLegacyIdentityWithIdentifier:(id)identifier serializationDidChange:(BOOL *)change deserializationDidFail:(BOOL *)fail error:(id *)error;
- (id)dataRepresentationForNGMVersion:(unsigned int)version;
- (id)generateIdentityContainerWithIdentifier:(int64_t)identifier existingLegacyIdentity:(id)identity existingNGMIdentity:(id)mIdentity dataProtectionClass:(int64_t)class nonLegacyError:(id *)error error:(id *)a8;
- (id)generateLegacyIdentityWithIdentifier:(int64_t)identifier dataProtectionClass:(int64_t)class error:(id *)error;
- (id)loadIdentityContainerWithIdentifier:(int64_t)identifier withLegacyFallback:(BOOL)fallback serializationDidChange:(BOOL *)change deserializationDidFail:(BOOL *)fail needsEncryptionIdentityRoll:(BOOL *)roll nonLegacyError:(id *)error error:(id *)a9;
- (id)loadKTRegistrationDataForKeyIndex:(unsigned __int16)index isRegistered:(BOOL)registered error:(id *)error;
- (id)loadLegacyIdentityWithIdentifier:(int64_t)identifier serializationDidChange:(BOOL *)change error:(id *)error;
- (unsigned)ngmVersion;
- (unsigned)ngmVersionFromDataRepresentation:(id)representation;
@end

@implementation IDSRegistrationKeyManagerIdentityDataSource

+ (id)storageItemNameForLegacyIdentityIdentifier:(int64_t)identifier
{
  if ((identifier - 4) >= 3)
  {
    sub_10093210C();
  }

  return *(&off_100BE5700 + identifier - 4);
}

+ (id)legacyStorageItemNameForContainerIdentityIdentifier:(int64_t)identifier
{
  switch(identifier)
  {
    case 2:
      return @"message-protection-key";
    case 3:
      return @"previous-message-protection-key";
    case 0:
      sub_100932138();
  }

  return @"unregistered-message-protection-key";
}

+ (id)containerStorageItemNameForContainerIdentityIdentifier:(int64_t)identifier
{
  switch(identifier)
  {
    case 2:
      return @"container-message-protection-key";
    case 3:
      return @"container-previous-message-protection-key";
    case 0:
      sub_100932164();
  }

  return @"container-unregistered-message-protection-key";
}

+ (id)containerStorageItemNameForContainerIdentityIdentifier:(int64_t)identifier applicationKeyIndex:(unsigned __int16)index
{
  indexCopy = index;
  v5 = [self containerStorageItemNameForContainerIdentityIdentifier:identifier];
  if ((indexCopy | 2) == 2)
  {
    sub_100932190();
  }

  v6 = v5;
  indexCopy = [NSString stringWithFormat:@"%@-%u", v5, indexCopy];

  return indexCopy;
}

+ (id)containerStorageItemNameForKTDataAtKeyIndex:(unsigned __int16)index isRegistered:(BOOL)registered
{
  v4 = @"container-unregistered-ktsignaturedata";
  if (registered)
  {
    v4 = @"container-registered-ktsignaturedata";
  }

  index = [NSString stringWithFormat:@"%@-%u", v4, index];

  return index;
}

- (IDSRegistrationKeyManagerIdentityDataSource)initWithKeychainWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v11.receiver = self;
  v11.super_class = IDSRegistrationKeyManagerIdentityDataSource;
  v6 = [(IDSRegistrationKeyManagerIdentityDataSource *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keychainWrapper, wrapper);
    v8 = objc_alloc_init(IDSRegistrationKeyManagerContainerQueue);
    containerQueue = v7->_containerQueue;
    v7->_containerQueue = v8;
  }

  return v7;
}

- (id)generateLegacyIdentityWithIdentifier:(int64_t)identifier dataProtectionClass:(int64_t)class error:(id *)error
{
  v7 = [objc_opt_class() storageItemNameForLegacyIdentityIdentifier:identifier];
  if (!v7)
  {
    sub_1009321BC();
  }

  v8 = [IDSMPFullLegacyIdentity identityWithDataProtectionClass:[IDSKeychainWrapper imDataProtectionClassFromDataProtectionClass:class] error:error];
  v9 = +[IMRGLog registration];
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543619;
      v14 = v7;
      v15 = 2113;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Generated identity {identifier: %{public}@, identity: %{private}@}", &v13, 0x16u);
    }

    v11 = v8;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100932230();
    }
  }

  return v8;
}

- (BOOL)saveLegacyIdentity:(id)identity withIdentifier:(int64_t)identifier dataProtectionClass:(int64_t)class error:(id *)error
{
  identityCopy = identity;
  v11 = [objc_opt_class() storageItemNameForLegacyIdentityIdentifier:identifier];
  if (v11)
  {
    if (identityCopy)
    {
      goto LABEL_3;
    }

LABEL_21:
    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10093231C();
    }

    goto LABEL_23;
  }

  sub_1009322A8();
  if (!identityCopy)
  {
    goto LABEL_21;
  }

LABEL_3:
  v12 = [identityCopy dataRepresentationWithError:error];
  v13 = +[IMRGLog registration];
  v14 = v13;
  if (!v12)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_12:

LABEL_23:
      v17 = 0;
      goto LABEL_24;
    }

    if (error)
    {
      v18 = *error;
    }

    else
    {
      v18 = 0;
    }

    v24 = 138543875;
    v25 = v18;
    v26 = 2114;
    v27 = v11;
    v28 = 2113;
    v29 = identityCopy;
    v20 = "Failed to generate data from identity -- Removing refence from keychain {error: %{public}@, identifier: %{public}@, identity: %{private}@}";
    v21 = v14;
    v22 = 32;
LABEL_19:
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v20, &v24, v22);
    goto LABEL_12;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138543875;
    v25 = v11;
    v26 = 2113;
    v27 = identityCopy;
    v28 = 2113;
    v29 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Generated data from identity {identifier: %{public}@, identity: %{private}@, data: %{private}@}", &v24, 0x20u);
  }

  keychainWrapper = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
  v16 = [keychainWrapper saveData:v12 forIdentifier:v11 allowSync:0 dataProtectionClass:class error:error];

  if ((v16 & 1) == 0)
  {
    v14 = +[IMRGLog registration];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    if (error)
    {
      v19 = *error;
    }

    else
    {
      v19 = 0;
    }

    v24 = 138544131;
    v25 = v19;
    v26 = 2114;
    v27 = v11;
    v28 = 2113;
    v29 = identityCopy;
    v30 = 2113;
    v31 = v12;
    v20 = "Failed to save to keychain -- Failed to save identity {error: %{public}@, identifier: %{public}@, identity: %{private}@, data: %{private}@}";
    v21 = v14;
    v22 = 42;
    goto LABEL_19;
  }

  v17 = 1;
LABEL_24:

  return v17;
}

- (id)loadLegacyIdentityWithIdentifier:(int64_t)identifier serializationDidChange:(BOOL *)change error:(id *)error
{
  v8 = [objc_opt_class() storageItemNameForLegacyIdentityIdentifier:identifier];
  if (!v8)
  {
    sub_100932390();
  }

  v13 = 0;
  v9 = [(IDSRegistrationKeyManagerIdentityDataSource *)self _retrying_loadLegacyIdentityWithIdentifier:v8 serializationDidChange:change deserializationDidFail:&v13 error:error];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  return v10;
}

- (BOOL)removeLegacyIdentity:(id)identity withIdentifier:(int64_t)identifier dataProtectionClass:(int64_t)class error:(id *)error
{
  identityCopy = identity;
  v11 = [objc_opt_class() storageItemNameForLegacyIdentityIdentifier:identifier];
  if (!v11)
  {
    sub_100932404();
  }

  if (identityCopy)
  {
    v12 = [identityCopy purgeFromKeychain:error];
    v13 = +[IMRGLog registration];
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138543619;
        v23 = v11;
        v24 = 2113;
        v25 = identityCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Purged identity {identifier: %{public}@, identity: %{private}@}", &v22, 0x16u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v21 = *error;
      }

      else
      {
        v21 = 0;
      }

      v22 = 138543875;
      v23 = v21;
      v24 = 2114;
      v25 = v11;
      v26 = 2113;
      v27 = identityCopy;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to purge identity from keychain -- leaking identity but removing reference to it {error: %{public}@, identifier: %{public}@, identity: %{private}@}", &v22, 0x20u);
    }
  }

  keychainWrapper = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
  v16 = [keychainWrapper removeDataForIdentifier:v11 dataProtectionClass:class error:error];

  v17 = +[IMRGLog registration];
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543619;
      v23 = v11;
      v24 = 2113;
      v25 = identityCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Removed identity reference from keychain {identifier: %{public}@, identity: %{private}@}", &v22, 0x16u);
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v20 = *error;
    }

    else
    {
      v20 = 0;
    }

    v22 = 138543875;
    v23 = v20;
    v24 = 2114;
    v25 = v11;
    v26 = 2113;
    v27 = identityCopy;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to remove identity from keychain {error: %{public}@, identifier: %{public}@, identity: %{private}@}", &v22, 0x20u);
  }

  return v16;
}

- (__SecKey)createIdentityForApplicationKeyIndex:(unsigned __int16)index error:(id *)error
{
  indexCopy = index;
  v6 = +[IMRGLog registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v15) = indexCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Generating identity {index: %u}", buf, 8u);
  }

  v7 = [objc_opt_class() containerStorageItemNameForContainerIdentityIdentifier:2 applicationKeyIndex:indexCopy];
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
  CFDictionaryAddValue(Mutable, kSecAttrKeyType, kSecAttrKeyTypeECSECPrimeRandom);
  CFDictionaryAddValue(Mutable, kSecAttrKeySizeInBits, &off_100C3D438);
  CFDictionaryAddValue(Mutable, kSecAttrApplicationTag, @"com.apple.identityservicesd");
  CFDictionaryAddValue(Mutable, kSecAttrLabel, v7);
  CFDictionaryAddValue(Mutable, kSecAttrIsPermanent, kCFBooleanTrue);
  CFDictionaryAddValue(Mutable, kSecAttrAccessible, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly);
  CFDictionaryAddValue(Mutable, kSecUseDataProtectionKeychain, kCFBooleanTrue);
  error = 0;
  v9 = SecKeyCreateRandomKey(Mutable, &error);
  if (error && error)
  {
    *error = error;
  }

  else if (error)
  {
    CFRelease(error);
    error = 0;
  }

  if (!v9)
  {
    v10 = +[IMRGLog registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      if (error)
      {
        v12 = *error;
      }

      else
      {
        v12 = 0;
      }

      *buf = 138543874;
      v15 = v12;
      v16 = 1024;
      v17 = indexCopy;
      v18 = 1024;
      v19 = indexCopy;
      _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Failed to generate application identity -- returning container with nil ngm identity {error: %{public}@, index: %u, keyIndex: %u}", buf, 0x18u);
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v9;
}

- (id)generateIdentityContainerWithIdentifier:(int64_t)identifier existingLegacyIdentity:(id)identity existingNGMIdentity:(id)mIdentity dataProtectionClass:(int64_t)class nonLegacyError:(id *)error error:(id *)a8
{
  identifierCopy = identifier;
  identityCopy = identity;
  mIdentityCopy = mIdentity;
  v15 = +[IMRGLog registration];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218499;
    *&buf[4] = identifierCopy;
    *&buf[12] = 2048;
    *&buf[14] = class;
    *&buf[22] = 2113;
    v41 = identityCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Generating identity {identifier: %ld, dataProtectionClass: %ld, existingLegacyIdentity: %{private}@}", buf, 0x20u);
  }

  v16 = [IDSKeychainWrapper imDataProtectionClassFromDataProtectionClass:class];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v41 = sub_10000AB14;
  v42 = sub_10000BCFC;
  v17 = mIdentityCopy;
  v43 = v17;
  if (*(*&buf[8] + 40))
  {
    goto LABEL_11;
  }

  *v36 = 0;
  *&v36[8] = v36;
  *&v36[16] = 0x3032000000;
  classCopy3 = sub_10000AB14;
  v38 = sub_10000BCFC;
  v39 = 0;
  containerQueue = [(IDSRegistrationKeyManagerIdentityDataSource *)self containerQueue];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1006CF598;
  v34[3] = &unk_100BE56E0;
  v35 = v16;
  v34[4] = buf;
  v34[5] = v36;
  [containerQueue performSyncBlock:v34];

  v19 = *(*&v36[8] + 40);
  if (error && v19)
  {
    *error = v19;
    v19 = *(*&v36[8] + 40);
  }

  if (a8 && v19)
  {
    *a8 = v19;
  }

  _Block_object_dispose(v36, 8);

  if (*(*&buf[8] + 40))
  {
LABEL_11:
    v20 = [NSNumber numberWithUnsignedInt:[(IDSRegistrationKeyManagerIdentityDataSource *)self ngmVersion]];
  }

  else
  {
    v29 = +[IMRGLog registration];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      if (a8)
      {
        v31 = *a8;
      }

      else
      {
        v31 = 0;
      }

      *v36 = 138543874;
      *&v36[4] = v31;
      *&v36[12] = 2048;
      *&v36[14] = identifierCopy;
      *&v36[22] = 2048;
      classCopy3 = class;
      _os_log_fault_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, "Failed to generate ngmIdentity -- returning container with nil ngm identity {error: %{public}@, identifier: %ld, dataProtectionClass: %ld}", v36, 0x20u);
    }

    v20 = 0;
  }

  v21 = identityCopy;
  v22 = v21;
  if (v21 || ([IDSMPFullLegacyIdentity identityWithDataProtectionClass:v16 error:a8], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v23 = *(*&buf[8] + 40);
    containerQueue2 = [(IDSRegistrationKeyManagerIdentityDataSource *)self containerQueue];
    v25 = [IDSMPFullDeviceIdentityContainer identityWithLegacyFullIdentity:v22 ngmFullDeviceIdentity:v23 ngmVersion:v20 queue:containerQueue2 error:a8];

    if (v25)
    {
      goto LABEL_21;
    }

    v26 = +[IMRGLog registration];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      if (a8)
      {
        v27 = *a8;
      }

      else
      {
        v27 = 0;
      }

      *v36 = 138543874;
      *&v36[4] = v27;
      *&v36[12] = 2048;
      *&v36[14] = v33;
      *&v36[22] = 2048;
      classCopy3 = class;
      _os_log_fault_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "Failed to generate fullDeviceContainer -- returning nil {error: %{public}@, identifier: %ld, dataProtectionClass: %ld}", v36, 0x20u);
    }
  }

  else
  {
    v26 = +[IMRGLog registration];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      if (a8)
      {
        v30 = *a8;
      }

      else
      {
        v30 = 0;
      }

      *v36 = 138543874;
      *&v36[4] = v30;
      *&v36[12] = 2048;
      *&v36[14] = identifierCopy;
      *&v36[22] = 2048;
      classCopy3 = class;
      _os_log_fault_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "Failed to generate legacyIdentity -- returning nil container {error: %{public}@, identifier: %ld, dataProtectionClass: %ld}", v36, 0x20u);
    }

    v22 = 0;
  }

  v25 = 0;
LABEL_21:

  _Block_object_dispose(buf, 8);

  return v25;
}

- (BOOL)saveIdentityContainer:(id)container withIdentifier:(int64_t)identifier dataProtectionClass:(int64_t)class error:(id *)error
{
  containerCopy = container;
  v11 = [containerCopy dataRepresentationWithError:error];
  if (v11)
  {
    v12 = [objc_opt_class() containerStorageItemNameForContainerIdentityIdentifier:identifier];
    keychainWrapper = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
    v14 = [keychainWrapper saveData:v11 forIdentifier:v12 allowSync:0 allowBackup:0 dataProtectionClass:class error:error];

    if ((v14 & 1) == 0)
    {
      v15 = +[IMRGLog registration];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        if (error)
        {
          v18 = *error;
        }

        else
        {
          v18 = 0;
        }

        v19 = 138544643;
        v20 = v18;
        v21 = 2048;
        identifierCopy2 = identifier;
        v23 = 2048;
        classCopy2 = class;
        v25 = 2114;
        v26 = v12;
        v27 = 2113;
        v28 = v11;
        v29 = 2113;
        v30 = containerCopy;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to identity to keychain {error: %{public}@, identifier: %ld, dataProtectionClas: %ld, storageIdentifier: %{public}@, dataToSave: %{private}@, container: %{private}@}", &v19, 0x3Eu);
      }
    }
  }

  else
  {
    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      if (error)
      {
        v17 = *error;
      }

      else
      {
        v17 = 0;
      }

      v19 = 138544131;
      v20 = v17;
      v21 = 2048;
      identifierCopy2 = identifier;
      v23 = 2048;
      classCopy2 = class;
      v25 = 2113;
      v26 = containerCopy;
      _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Failed to generate data from container -- not saving {error: %{public}@, identifier: %ld, dataProtectionClass: %ld, container: %{private}@}", &v19, 0x2Au);
    }

    v14 = 0;
  }

  return v14;
}

- (__SecKey)copyIdentityFromKeychainWithApplicationKeyIndex:(unsigned __int16)index error:(id *)error
{
  indexCopy = index;
  v6 = [objc_opt_class() containerStorageItemNameForContainerIdentityIdentifier:2 applicationKeyIndex:index];
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
  CFDictionaryAddValue(Mutable, kSecAttrKeyType, kSecAttrKeyTypeECSECPrimeRandom);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassKey);
  CFDictionaryAddValue(Mutable, kSecAttrKeyClass, kSecAttrKeyClassPrivate);
  CFDictionaryAddValue(Mutable, kSecAttrKeySizeInBits, &off_100C3D438);
  CFDictionaryAddValue(Mutable, kSecAttrApplicationTag, @"com.apple.identityservicesd");
  CFDictionaryAddValue(Mutable, kSecAttrLabel, v6);
  CFDictionaryAddValue(Mutable, kSecAttrIsPermanent, kCFBooleanTrue);
  CFDictionaryAddValue(Mutable, kSecReturnRef, kCFBooleanTrue);
  CFDictionaryAddValue(Mutable, kSecAttrAccessible, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly);
  CFDictionaryAddValue(Mutable, kSecUseDataProtectionKeychain, kCFBooleanTrue);
  result = 0;
  v8 = SecItemCopyMatching(Mutable, &result);
  v9 = result;
  v10 = +[IMRGLog registration];
  v11 = v10;
  if (v8 || !v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100932478(v8);
    }

    if (result)
    {
      CFRelease(result);
      result = 0;
    }

    cf = 0;
    v12 = SecItemCopyMatching(Mutable, &cf);
    v13 = cf;
    v14 = +[IMRGLog registration];
    v15 = v14;
    if (v12 || !v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10093252C(v12);
      }

      if (error)
      {
        v21 = @"IDSKeychainWrapperErrorOSStatus";
        v16 = [NSNumber numberWithInt:v12];
        v22 = v16;
        v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        *error = [NSError errorWithDomain:@"IDSKeychainWrapperErrorDomain" code:-2000 userInfo:v17];
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (Mutable)
      {
        CFRelease(Mutable);
        Mutable = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109379;
        v24 = indexCopy;
        v25 = 2113;
        v26 = cf;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Loaded identity on second try -- done {index: %u, secondTry: %{private}@}", buf, 0x12u);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      Mutable = cf;
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109379;
      v24 = indexCopy;
      v25 = 2113;
      v26 = result;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Loaded identity on first try -- done {index: %u, firstTry: %{private}@}", buf, 0x12u);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    Mutable = result;
  }

  return Mutable;
}

- (id)loadIdentityContainerWithIdentifier:(int64_t)identifier withLegacyFallback:(BOOL)fallback serializationDidChange:(BOOL *)change deserializationDidFail:(BOOL *)fail needsEncryptionIdentityRoll:(BOOL *)roll nonLegacyError:(id *)error error:(id *)a9
{
  fallbackCopy = fallback;
  v15 = [objc_opt_class() containerStorageItemNameForContainerIdentityIdentifier:identifier];
  v49 = 0;
  v16 = [(IDSRegistrationKeyManagerIdentityDataSource *)self _loadContainerWithIdentifier:v15 serializationDidChage:change deserializationDidFail:fail needsEncryptionIdentityRoll:roll error:&v49];
  v17 = v49;
  v18 = v17;
  if (error && v17)
  {
    v19 = v17;
    *error = v18;
  }

  if (!v16)
  {
    v43 = v15;
    v23 = +[IMRGLog registration];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1009325E0();
    }

    v48 = 0;
    v15 = v43;
    v44 = [(IDSRegistrationKeyManagerIdentityDataSource *)self _loadContainerWithIdentifier:v43 serializationDidChage:change deserializationDidFail:fail needsEncryptionIdentityRoll:roll error:&v48];
    v24 = v48;
    v18 = v24;
    if (error && v24)
    {
      v25 = v24;
      *error = v18;
    }

    if (v44)
    {
      if (a9 && v18)
      {
        v26 = v18;
        *a9 = v18;
      }

      v27 = +[IMRGLog registration];
      v28 = v44;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218243;
        identifierCopy6 = identifier;
        v52 = 2113;
        identifierCopy5 = v44;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Loaded identity container on second try -- done {identifier: %ld, secondTry: %{private}@}", buf, 0x16u);
      }

      v22 = v44;
      goto LABEL_49;
    }

    v29 = +[IMRGLog registration];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_100932650();
    }

    if (roll)
    {
      *roll = 0;
    }

    if (!fallbackCopy)
    {
      goto LABEL_47;
    }

    v30 = [objc_opt_class() legacyStorageItemNameForContainerIdentityIdentifier:identifier];
    v47 = 0;
    v31 = [(IDSRegistrationKeyManagerIdentityDataSource *)self _retrying_loadLegacyIdentityWithIdentifier:v30 serializationDidChange:change deserializationDidFail:&v47 error:a9];
    v32 = v31;
    if (fail)
    {
      *fail = v47;
    }

    if (v31)
    {
      containerQueue = [(IDSRegistrationKeyManagerIdentityDataSource *)self containerQueue];
      v22 = [IDSMPFullDeviceIdentityContainer identityWithLegacyFullIdentity:v32 ngmFullDeviceIdentity:0 ngmVersion:0 queue:containerQueue error:a9];

      if (v22)
      {
        if (![(IDSRegistrationKeyManagerIdentityDataSource *)self saveIdentityContainer:v22 withIdentifier:identifier dataProtectionClass:0 error:a9])
        {
          v34 = +[IMRGLog registration];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            if (a9)
            {
              v42 = *a9;
            }

            else
            {
              v42 = 0;
            }

            *buf = 138544131;
            identifierCopy6 = v42;
            v52 = 2048;
            identifierCopy5 = identifier;
            v54 = 2048;
            v55 = v30;
            v56 = 2113;
            v57 = v32;
            _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Failed to migrate container with legacyIdentity {error: %{public}@, identifier: %ld, legacyIdentifier: %ld, legacyIdentity: %{private}@", buf, 0x2Au);
          }
        }

        v35 = +[IMRGLog registration];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218499;
          identifierCopy6 = identifier;
          v52 = 2048;
          identifierCopy5 = v30;
          v54 = 2113;
          v55 = v22;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Loaded legacy identity -- returning container with nil ngmIdentity {identifier: %ld, legacyIdentifier: %ld, container: %{private}@", buf, 0x20u);
        }

        goto LABEL_48;
      }

      v38 = +[IMRGLog registration];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        if (a9)
        {
          v41 = *a9;
        }

        else
        {
          v41 = 0;
        }

        *buf = 138544131;
        identifierCopy6 = v41;
        v52 = 2048;
        identifierCopy5 = identifier;
        v54 = 2048;
        v55 = v30;
        v56 = 2113;
        v57 = v32;
        _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to create container with legacyIdentity -- returning nil {error: %{public}@, identifier: %ld, legacyIdentifier: %ld, legacyIdentity: %{private}@", buf, 0x2Au);
      }
    }

    else
    {
      if (!v47)
      {
LABEL_46:

LABEL_47:
        v22 = 0;
LABEL_48:
        v28 = 0;
LABEL_49:

        goto LABEL_50;
      }

      keychainWrapper = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
      v46 = 0;
      v37 = [keychainWrapper removeDataForIdentifier:v30 dataProtectionClass:2 error:&v46];
      v38 = v46;

      if ((v37 & 1) == 0)
      {
        v39 = +[IMRGLog registration];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 138544131;
          identifierCopy6 = v38;
          v52 = 2048;
          identifierCopy5 = identifier;
          v54 = 2048;
          v55 = v30;
          v56 = 2113;
          v57 = 0;
          _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to remove legacy identity -- purging {removeError: %{public}@, identifier: %ld, legacyIdentifier: %ld, legacyIdentity: %{private}@", buf, 0x2Au);
        }
      }

      v15 = v43;
    }

    goto LABEL_46;
  }

  if (a9 && v18)
  {
    v20 = v18;
    *a9 = v18;
  }

  v21 = +[IMRGLog registration];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218243;
    identifierCopy6 = identifier;
    v52 = 2113;
    identifierCopy5 = v16;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Loaded identity container on first try -- done {identifier: %ld, firstTry: %{private}@}", buf, 0x16u);
  }

  v22 = v16;
LABEL_50:

  return v22;
}

- (BOOL)loadIsIdentityRegisteredForApplicationKeyIndex:(unsigned __int16)index error:(id *)error
{
  v6 = [objc_opt_class() containerStorageItemNameForIsRegisteredAtApplicationKeyIndex:index];
  if (v6)
  {
    keychainWrapper = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
    v8 = [keychainWrapper dataForIdentifier:v6 error:error];

    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)saveIsRegistered:(BOOL)registered forApplicationKeyIndex:(unsigned __int16)index error:(id *)error
{
  registeredCopy = registered;
  v8 = [objc_opt_class() containerStorageItemNameForIsRegisteredAtApplicationKeyIndex:index];
  if (v8)
  {
    if (registeredCopy)
    {
      v14 = 1;
      v9 = [NSData dataWithBytes:&v14 length:1];
      keychainWrapper = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
      v11 = [keychainWrapper saveData:v9 forIdentifier:v8 allowSync:0 dataProtectionClass:0 error:error];
    }

    else
    {
      keychainWrapper2 = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
      v11 = [keychainWrapper2 removeDataForIdentifier:v8 dataProtectionClass:0 error:error];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)loadKTRegistrationDataForKeyIndex:(unsigned __int16)index isRegistered:(BOOL)registered error:(id *)error
{
  v7 = [objc_opt_class() containerStorageItemNameForKTDataAtKeyIndex:index isRegistered:registered];
  if (v7)
  {
    keychainWrapper = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
    v9 = [keychainWrapper dataForIdentifier:v7 error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)saveKTRegistrationData:(id)data forKeyIndex:(unsigned __int16)index isRegistered:(BOOL)registered error:(id *)error
{
  registeredCopy = registered;
  indexCopy = index;
  dataCopy = data;
  v11 = [objc_opt_class() containerStorageItemNameForKTDataAtKeyIndex:indexCopy isRegistered:registeredCopy];
  if (v11)
  {
    keychainWrapper = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
    v13 = [keychainWrapper saveData:dataCopy forIdentifier:v11 allowSync:0 dataProtectionClass:0 error:error];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)removeKTRegistrationDataForKeyIndex:(unsigned __int16)index isRegistered:(BOOL)registered error:(id *)error
{
  v7 = [objc_opt_class() containerStorageItemNameForKTDataAtKeyIndex:index isRegistered:registered];
  if (v7)
  {
    keychainWrapper = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
    v9 = [keychainWrapper removeDataForIdentifier:v7 dataProtectionClass:0 error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_removeDataFromKeychainForIdentifier:(id)identifier dataProtectionClass:(int64_t)class error:(id *)error
{
  identifierCopy = identifier;
  keychainWrapper = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
  v16 = 0;
  v10 = [keychainWrapper removeDataForIdentifier:identifierCopy dataProtectionClass:class error:&v16];
  v11 = v16;

  v12 = +[IMRGLog registration];
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Purged key blob from keychain {identifier: %@}", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1009326C0();
    }

    if (error)
    {
      v14 = v11;
      *error = v11;
    }
  }

  return v10;
}

- (BOOL)removeIdentityWithApplicationKeyIndex:(unsigned __int16)index error:(id *)error
{
  v4 = [objc_opt_class() containerStorageItemNameForContainerIdentityIdentifier:2 applicationKeyIndex:index];
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
  CFDictionaryAddValue(Mutable, kSecAttrKeyType, kSecAttrKeyTypeECSECPrimeRandom);
  CFDictionaryAddValue(Mutable, kSecAttrKeySizeInBits, &off_100C3D438);
  CFDictionaryAddValue(Mutable, kSecAttrApplicationTag, @"com.apple.identityservicesd");
  CFDictionaryAddValue(Mutable, kSecAttrLabel, v4);
  CFDictionaryAddValue(Mutable, kSecAttrIsPermanent, kCFBooleanTrue);
  CFDictionaryAddValue(Mutable, kSecReturnRef, kCFBooleanTrue);
  CFDictionaryAddValue(Mutable, kSecAttrAccessible, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly);
  v6 = SecItemDelete(Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v6 == 0;
}

- (BOOL)removeIdentityContainer:(id)container withIdentifier:(int64_t)identifier dataProtectionClass:(int64_t)class error:(id *)error
{
  containerCopy = container;
  legacyFullIdentity = [containerCopy legacyFullIdentity];
  v20 = 0;
  v12 = [legacyFullIdentity purgeFromKeychain:&v20];
  v13 = v20;

  v14 = +[IMRGLog registration];
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      legacyFullIdentity2 = [containerCopy legacyFullIdentity];
      *buf = 138412290;
      v22 = legacyFullIdentity2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Purged legacy full identity {legacyFullIdentity: %@}", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_100932730(v13, containerCopy);
  }

  [containerCopy eraseNGMIdentityFromKeychain];
  v17 = [objc_opt_class() containerStorageItemNameForContainerIdentityIdentifier:identifier];
  v18 = [(IDSRegistrationKeyManagerIdentityDataSource *)self _removeDataFromKeychainForIdentifier:v17 dataProtectionClass:class error:error];

  return v18;
}

- (id)_retrying_loadLegacyIdentityWithIdentifier:(id)identifier serializationDidChange:(BOOL *)change deserializationDidFail:(BOOL *)fail error:(id *)error
{
  identifierCopy = identifier;
  v11 = [(IDSRegistrationKeyManagerIdentityDataSource *)self _loadLegacyIdentityWithIdentifier:identifierCopy serializationDidChange:change deserializationDidFail:fail error:error];
  v12 = +[IMRGLog registration];
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (change)
      {
        if (*change)
        {
          v14 = @"YES";
        }

        else
        {
          v14 = @"NO";
        }
      }

      else
      {
        v14 = 0;
      }

      v21 = 138543875;
      v22 = identifierCopy;
      v23 = 2114;
      v24 = v14;
      v25 = 2113;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Loaded identity on first try {identifier: %{public}@}, serializationDidChange: %{public}@, firstTry: %{private}@}", &v21, 0x20u);
    }

    v15 = v11;
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1009327DC();
    }

    v15 = [(IDSRegistrationKeyManagerIdentityDataSource *)self _loadLegacyIdentityWithIdentifier:identifierCopy serializationDidChange:change deserializationDidFail:fail error:error];
    v16 = +[IMRGLog registration];
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        if (change)
        {
          if (*change)
          {
            v18 = @"YES";
          }

          else
          {
            v18 = @"NO";
          }
        }

        else
        {
          v18 = 0;
        }

        v21 = 138543875;
        v22 = identifierCopy;
        v23 = 2114;
        v24 = v18;
        v25 = 2113;
        v26 = v15;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Loaded identity on second try {identifier: %{public}@, serializationDidChange: %{public}@, secondTry: %{private}@}", &v21, 0x20u);
      }

      v19 = v15;
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100932854();
      }
    }
  }

  return v15;
}

- (id)_loadLegacyIdentityWithIdentifier:(id)identifier serializationDidChange:(BOOL *)change deserializationDidFail:(BOOL *)fail error:(id *)error
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    sub_1009328CC();
  }

  keychainWrapper = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
  v12 = [keychainWrapper dataForIdentifier:identifierCopy error:error];

  v13 = +[IMRGLog registration];
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543619;
      v22 = identifierCopy;
      v23 = 2113;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Loaded identity data from keychain {identifier: %{public}@, data: %{private}@}", &v21, 0x16u);
    }

    v15 = [IDSMPFullLegacyIdentity identityWithData:v12 error:error];
    v14 = v15;
    if (v15)
    {
      if (change)
      {
        *change = [v15 didDataRepresentationFormatChangeFromDataRepresentation:v12 error:error];
      }

      v16 = +[IMRGLog registration];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138543619;
        v22 = identifierCopy;
        v23 = 2113;
        v24 = v14;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Loaded identity from keychain data {identifier: %{public}@, identity: %{private}@}", &v21, 0x16u);
      }

      v14 = v14;
      v17 = v14;
    }

    else
    {
      v18 = +[IMRGLog registration];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        if (error)
        {
          v20 = *error;
        }

        else
        {
          v20 = 0;
        }

        v21 = 138543875;
        v22 = v20;
        v23 = 2114;
        v24 = identifierCopy;
        v25 = 2113;
        v26 = v12;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to load identity from data {error: %{public}@, identifier: %{public}@, data: %{private}@}", &v21, 0x20u);
      }

      if (fail)
      {
        *fail = 1;
      }

      v17 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100932940();
    }

    v17 = 0;
  }

  return v17;
}

- (id)_loadContainerWithIdentifier:(id)identifier serializationDidChage:(BOOL *)chage deserializationDidFail:(BOOL *)fail needsEncryptionIdentityRoll:(BOOL *)roll error:(id *)error
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    sub_1009329B8();
  }

  keychainWrapper = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
  v14 = [keychainWrapper dataForIdentifier:identifierCopy error:error];

  v15 = +[IMRGLog registration];
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138543619;
      v31 = identifierCopy;
      v32 = 2113;
      v33 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Loaded identity data from keychain {identifier: %{public}@, data: %{private}@}", &v30, 0x16u);
    }

    containerQueue = [(IDSRegistrationKeyManagerIdentityDataSource *)self containerQueue];
    v16 = [IDSMPFullDeviceIdentityContainer identityWithDataRepresentation:v14 queue:containerQueue error:error];

    if (v16)
    {
      shouldRollNGMEncryptionIdentity = [v16 shouldRollNGMEncryptionIdentity];
      if (roll && shouldRollNGMEncryptionIdentity)
      {
        *roll = 1;
      }

      if (chage)
      {
        v19 = [v16 dataRepresentationWithError:error];
        v20 = v19;
        if (v19)
        {
          v21 = [v19 isEqualToData:v14];
          v22 = +[IMRGLog registration];
          v23 = v22;
          if (v21)
          {
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v30 = 138477827;
              v31 = v16;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Serialization did NOT change for identity {identity: %{private}@}", &v30, 0xCu);
            }

            *chage = 0;
          }

          else
          {
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v30 = 138478339;
              v31 = v16;
              v32 = 2113;
              v33 = v20;
              v34 = 2113;
              v35 = v14;
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Serialization did change for identity {identity: %{private}@, reSerializedData: %{private}@, data: %{private}@}", &v30, 0x20u);
            }

            *chage = 1;
          }
        }

        else
        {
          v26 = +[IMRGLog registration];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            sub_100932A2C(error);
          }
        }
      }

      v27 = +[IMRGLog registration];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 138543619;
        v31 = identifierCopy;
        v32 = 2113;
        v33 = v16;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Loaded identity from keychain data {identifier: %{public}@, identity: %{private}@}", &v30, 0x16u);
      }

      v16 = v16;
      v24 = v16;
    }

    else
    {
      v25 = +[IMRGLog registration];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        if (error)
        {
          v29 = *error;
        }

        else
        {
          v29 = 0;
        }

        v30 = 138543875;
        v31 = v29;
        v32 = 2114;
        v33 = identifierCopy;
        v34 = 2113;
        v35 = v14;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to load identity container from data {error: %{public}@, identifier: %{public}@, data: %{private}@}", &v30, 0x20u);
      }

      if (fail)
      {
        *fail = 1;
      }

      v24 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100932AB0();
    }

    v24 = 0;
  }

  return v24;
}

- (unsigned)ngmVersion
{
  v2 = +[IDSNGMProtocolVersion supportedVersion];
  v3 = +[IMLockdownManager sharedInstance];
  isInternalInstall = [v3 isInternalInstall];

  if (isInternalInstall)
  {
    v5 = IMGetAppValueForKey();
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        unsignedIntValue = [v5 unsignedIntValue];
        if (unsignedIntValue > v2)
        {
          v2 = unsignedIntValue;
        }
      }
    }
  }

  return v2;
}

- (id)dataRepresentationForNGMVersion:(unsigned int)version
{
  v3 = [NSNumber numberWithUnsignedInt:?];
  v8 = 0;
  v4 = [NSPropertyListSerialization dataWithPropertyList:v3 format:200 options:0 error:&v8];
  v5 = v8;
  if (!v4)
  {
    v6 = +[IMRGLog registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100932B28();
    }
  }

  return v4;
}

- (unsigned)ngmVersionFromDataRepresentation:(id)representation
{
  representationCopy = representation;
  v9 = 0;
  v4 = [NSPropertyListSerialization propertyListWithData:representationCopy options:0 format:0 error:&v9];
  v5 = v9;
  if (v4)
  {
    unsignedIntValue = [v4 unsignedIntValue];
  }

  else
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100932BA0();
    }

    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

@end