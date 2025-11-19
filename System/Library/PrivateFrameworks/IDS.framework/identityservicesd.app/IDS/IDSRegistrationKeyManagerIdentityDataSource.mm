@interface IDSRegistrationKeyManagerIdentityDataSource
+ (id)containerStorageItemNameForContainerIdentityIdentifier:(int64_t)a3;
+ (id)containerStorageItemNameForContainerIdentityIdentifier:(int64_t)a3 applicationKeyIndex:(unsigned __int16)a4;
+ (id)containerStorageItemNameForKTDataAtKeyIndex:(unsigned __int16)a3 isRegistered:(BOOL)a4;
+ (id)legacyStorageItemNameForContainerIdentityIdentifier:(int64_t)a3;
+ (id)storageItemNameForLegacyIdentityIdentifier:(int64_t)a3;
- (BOOL)_removeDataFromKeychainForIdentifier:(id)a3 dataProtectionClass:(int64_t)a4 error:(id *)a5;
- (BOOL)loadIsIdentityRegisteredForApplicationKeyIndex:(unsigned __int16)a3 error:(id *)a4;
- (BOOL)removeIdentityContainer:(id)a3 withIdentifier:(int64_t)a4 dataProtectionClass:(int64_t)a5 error:(id *)a6;
- (BOOL)removeIdentityWithApplicationKeyIndex:(unsigned __int16)a3 error:(id *)a4;
- (BOOL)removeKTRegistrationDataForKeyIndex:(unsigned __int16)a3 isRegistered:(BOOL)a4 error:(id *)a5;
- (BOOL)removeLegacyIdentity:(id)a3 withIdentifier:(int64_t)a4 dataProtectionClass:(int64_t)a5 error:(id *)a6;
- (BOOL)saveIdentityContainer:(id)a3 withIdentifier:(int64_t)a4 dataProtectionClass:(int64_t)a5 error:(id *)a6;
- (BOOL)saveIsRegistered:(BOOL)a3 forApplicationKeyIndex:(unsigned __int16)a4 error:(id *)a5;
- (BOOL)saveKTRegistrationData:(id)a3 forKeyIndex:(unsigned __int16)a4 isRegistered:(BOOL)a5 error:(id *)a6;
- (BOOL)saveLegacyIdentity:(id)a3 withIdentifier:(int64_t)a4 dataProtectionClass:(int64_t)a5 error:(id *)a6;
- (IDSRegistrationKeyManagerIdentityDataSource)initWithKeychainWrapper:(id)a3;
- (__SecKey)copyIdentityFromKeychainWithApplicationKeyIndex:(unsigned __int16)a3 error:(id *)a4;
- (__SecKey)createIdentityForApplicationKeyIndex:(unsigned __int16)a3 error:(id *)a4;
- (id)_loadContainerWithIdentifier:(id)a3 serializationDidChage:(BOOL *)a4 deserializationDidFail:(BOOL *)a5 needsEncryptionIdentityRoll:(BOOL *)a6 error:(id *)a7;
- (id)_loadLegacyIdentityWithIdentifier:(id)a3 serializationDidChange:(BOOL *)a4 deserializationDidFail:(BOOL *)a5 error:(id *)a6;
- (id)_retrying_loadLegacyIdentityWithIdentifier:(id)a3 serializationDidChange:(BOOL *)a4 deserializationDidFail:(BOOL *)a5 error:(id *)a6;
- (id)dataRepresentationForNGMVersion:(unsigned int)a3;
- (id)generateIdentityContainerWithIdentifier:(int64_t)a3 existingLegacyIdentity:(id)a4 existingNGMIdentity:(id)a5 dataProtectionClass:(int64_t)a6 nonLegacyError:(id *)a7 error:(id *)a8;
- (id)generateLegacyIdentityWithIdentifier:(int64_t)a3 dataProtectionClass:(int64_t)a4 error:(id *)a5;
- (id)loadIdentityContainerWithIdentifier:(int64_t)a3 withLegacyFallback:(BOOL)a4 serializationDidChange:(BOOL *)a5 deserializationDidFail:(BOOL *)a6 needsEncryptionIdentityRoll:(BOOL *)a7 nonLegacyError:(id *)a8 error:(id *)a9;
- (id)loadKTRegistrationDataForKeyIndex:(unsigned __int16)a3 isRegistered:(BOOL)a4 error:(id *)a5;
- (id)loadLegacyIdentityWithIdentifier:(int64_t)a3 serializationDidChange:(BOOL *)a4 error:(id *)a5;
- (unsigned)ngmVersion;
- (unsigned)ngmVersionFromDataRepresentation:(id)a3;
@end

@implementation IDSRegistrationKeyManagerIdentityDataSource

+ (id)storageItemNameForLegacyIdentityIdentifier:(int64_t)a3
{
  if ((a3 - 4) >= 3)
  {
    sub_10093210C();
  }

  return *(&off_100BE5700 + a3 - 4);
}

+ (id)legacyStorageItemNameForContainerIdentityIdentifier:(int64_t)a3
{
  switch(a3)
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

+ (id)containerStorageItemNameForContainerIdentityIdentifier:(int64_t)a3
{
  switch(a3)
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

+ (id)containerStorageItemNameForContainerIdentityIdentifier:(int64_t)a3 applicationKeyIndex:(unsigned __int16)a4
{
  v4 = a4;
  v5 = [a1 containerStorageItemNameForContainerIdentityIdentifier:a3];
  if ((v4 | 2) == 2)
  {
    sub_100932190();
  }

  v6 = v5;
  v7 = [NSString stringWithFormat:@"%@-%u", v5, v4];

  return v7;
}

+ (id)containerStorageItemNameForKTDataAtKeyIndex:(unsigned __int16)a3 isRegistered:(BOOL)a4
{
  v4 = @"container-unregistered-ktsignaturedata";
  if (a4)
  {
    v4 = @"container-registered-ktsignaturedata";
  }

  v5 = [NSString stringWithFormat:@"%@-%u", v4, a3];

  return v5;
}

- (IDSRegistrationKeyManagerIdentityDataSource)initWithKeychainWrapper:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = IDSRegistrationKeyManagerIdentityDataSource;
  v6 = [(IDSRegistrationKeyManagerIdentityDataSource *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keychainWrapper, a3);
    v8 = objc_alloc_init(IDSRegistrationKeyManagerContainerQueue);
    containerQueue = v7->_containerQueue;
    v7->_containerQueue = v8;
  }

  return v7;
}

- (id)generateLegacyIdentityWithIdentifier:(int64_t)a3 dataProtectionClass:(int64_t)a4 error:(id *)a5
{
  v7 = [objc_opt_class() storageItemNameForLegacyIdentityIdentifier:a3];
  if (!v7)
  {
    sub_1009321BC();
  }

  v8 = [IDSMPFullLegacyIdentity identityWithDataProtectionClass:[IDSKeychainWrapper imDataProtectionClassFromDataProtectionClass:a4] error:a5];
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

- (BOOL)saveLegacyIdentity:(id)a3 withIdentifier:(int64_t)a4 dataProtectionClass:(int64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [objc_opt_class() storageItemNameForLegacyIdentityIdentifier:a4];
  if (v11)
  {
    if (v10)
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
  if (!v10)
  {
    goto LABEL_21;
  }

LABEL_3:
  v12 = [v10 dataRepresentationWithError:a6];
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

    if (a6)
    {
      v18 = *a6;
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
    v29 = v10;
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
    v27 = v10;
    v28 = 2113;
    v29 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Generated data from identity {identifier: %{public}@, identity: %{private}@, data: %{private}@}", &v24, 0x20u);
  }

  v15 = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
  v16 = [v15 saveData:v12 forIdentifier:v11 allowSync:0 dataProtectionClass:a5 error:a6];

  if ((v16 & 1) == 0)
  {
    v14 = +[IMRGLog registration];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    if (a6)
    {
      v19 = *a6;
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
    v29 = v10;
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

- (id)loadLegacyIdentityWithIdentifier:(int64_t)a3 serializationDidChange:(BOOL *)a4 error:(id *)a5
{
  v8 = [objc_opt_class() storageItemNameForLegacyIdentityIdentifier:a3];
  if (!v8)
  {
    sub_100932390();
  }

  v13 = 0;
  v9 = [(IDSRegistrationKeyManagerIdentityDataSource *)self _retrying_loadLegacyIdentityWithIdentifier:v8 serializationDidChange:a4 deserializationDidFail:&v13 error:a5];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  return v10;
}

- (BOOL)removeLegacyIdentity:(id)a3 withIdentifier:(int64_t)a4 dataProtectionClass:(int64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [objc_opt_class() storageItemNameForLegacyIdentityIdentifier:a4];
  if (!v11)
  {
    sub_100932404();
  }

  if (v10)
  {
    v12 = [v10 purgeFromKeychain:a6];
    v13 = +[IMRGLog registration];
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138543619;
        v23 = v11;
        v24 = 2113;
        v25 = v10;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Purged identity {identifier: %{public}@, identity: %{private}@}", &v22, 0x16u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      if (a6)
      {
        v21 = *a6;
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
      v27 = v10;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to purge identity from keychain -- leaking identity but removing reference to it {error: %{public}@, identifier: %{public}@, identity: %{private}@}", &v22, 0x20u);
    }
  }

  v15 = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
  v16 = [v15 removeDataForIdentifier:v11 dataProtectionClass:a5 error:a6];

  v17 = +[IMRGLog registration];
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543619;
      v23 = v11;
      v24 = 2113;
      v25 = v10;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Removed identity reference from keychain {identifier: %{public}@, identity: %{private}@}", &v22, 0x16u);
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    if (a6)
    {
      v20 = *a6;
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
    v27 = v10;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to remove identity from keychain {error: %{public}@, identifier: %{public}@, identity: %{private}@}", &v22, 0x20u);
  }

  return v16;
}

- (__SecKey)createIdentityForApplicationKeyIndex:(unsigned __int16)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[IMRGLog registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v15) = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Generating identity {index: %u}", buf, 8u);
  }

  v7 = [objc_opt_class() containerStorageItemNameForContainerIdentityIdentifier:2 applicationKeyIndex:v5];
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
  if (a4 && error)
  {
    *a4 = error;
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
      if (a4)
      {
        v12 = *a4;
      }

      else
      {
        v12 = 0;
      }

      *buf = 138543874;
      v15 = v12;
      v16 = 1024;
      v17 = v5;
      v18 = 1024;
      v19 = v5;
      _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Failed to generate application identity -- returning container with nil ngm identity {error: %{public}@, index: %u, keyIndex: %u}", buf, 0x18u);
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v9;
}

- (id)generateIdentityContainerWithIdentifier:(int64_t)a3 existingLegacyIdentity:(id)a4 existingNGMIdentity:(id)a5 dataProtectionClass:(int64_t)a6 nonLegacyError:(id *)a7 error:(id *)a8
{
  v32 = a3;
  v13 = a4;
  v14 = a5;
  v15 = +[IMRGLog registration];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218499;
    *&buf[4] = v32;
    *&buf[12] = 2048;
    *&buf[14] = a6;
    *&buf[22] = 2113;
    v41 = v13;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Generating identity {identifier: %ld, dataProtectionClass: %ld, existingLegacyIdentity: %{private}@}", buf, 0x20u);
  }

  v16 = [IDSKeychainWrapper imDataProtectionClassFromDataProtectionClass:a6];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v41 = sub_10000AB14;
  v42 = sub_10000BCFC;
  v17 = v14;
  v43 = v17;
  if (*(*&buf[8] + 40))
  {
    goto LABEL_11;
  }

  *v36 = 0;
  *&v36[8] = v36;
  *&v36[16] = 0x3032000000;
  v37 = sub_10000AB14;
  v38 = sub_10000BCFC;
  v39 = 0;
  v18 = [(IDSRegistrationKeyManagerIdentityDataSource *)self containerQueue];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1006CF598;
  v34[3] = &unk_100BE56E0;
  v35 = v16;
  v34[4] = buf;
  v34[5] = v36;
  [v18 performSyncBlock:v34];

  v19 = *(*&v36[8] + 40);
  if (a7 && v19)
  {
    *a7 = v19;
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
      *&v36[14] = v32;
      *&v36[22] = 2048;
      v37 = a6;
      _os_log_fault_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, "Failed to generate ngmIdentity -- returning container with nil ngm identity {error: %{public}@, identifier: %ld, dataProtectionClass: %ld}", v36, 0x20u);
    }

    v20 = 0;
  }

  v21 = v13;
  v22 = v21;
  if (v21 || ([IDSMPFullLegacyIdentity identityWithDataProtectionClass:v16 error:a8], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v23 = *(*&buf[8] + 40);
    v24 = [(IDSRegistrationKeyManagerIdentityDataSource *)self containerQueue];
    v25 = [IDSMPFullDeviceIdentityContainer identityWithLegacyFullIdentity:v22 ngmFullDeviceIdentity:v23 ngmVersion:v20 queue:v24 error:a8];

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
      v37 = a6;
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
      *&v36[14] = v32;
      *&v36[22] = 2048;
      v37 = a6;
      _os_log_fault_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "Failed to generate legacyIdentity -- returning nil container {error: %{public}@, identifier: %ld, dataProtectionClass: %ld}", v36, 0x20u);
    }

    v22 = 0;
  }

  v25 = 0;
LABEL_21:

  _Block_object_dispose(buf, 8);

  return v25;
}

- (BOOL)saveIdentityContainer:(id)a3 withIdentifier:(int64_t)a4 dataProtectionClass:(int64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [v10 dataRepresentationWithError:a6];
  if (v11)
  {
    v12 = [objc_opt_class() containerStorageItemNameForContainerIdentityIdentifier:a4];
    v13 = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
    v14 = [v13 saveData:v11 forIdentifier:v12 allowSync:0 allowBackup:0 dataProtectionClass:a5 error:a6];

    if ((v14 & 1) == 0)
    {
      v15 = +[IMRGLog registration];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        if (a6)
        {
          v18 = *a6;
        }

        else
        {
          v18 = 0;
        }

        v19 = 138544643;
        v20 = v18;
        v21 = 2048;
        v22 = a4;
        v23 = 2048;
        v24 = a5;
        v25 = 2114;
        v26 = v12;
        v27 = 2113;
        v28 = v11;
        v29 = 2113;
        v30 = v10;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to identity to keychain {error: %{public}@, identifier: %ld, dataProtectionClas: %ld, storageIdentifier: %{public}@, dataToSave: %{private}@, container: %{private}@}", &v19, 0x3Eu);
      }
    }
  }

  else
  {
    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      if (a6)
      {
        v17 = *a6;
      }

      else
      {
        v17 = 0;
      }

      v19 = 138544131;
      v20 = v17;
      v21 = 2048;
      v22 = a4;
      v23 = 2048;
      v24 = a5;
      v25 = 2113;
      v26 = v10;
      _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Failed to generate data from container -- not saving {error: %{public}@, identifier: %ld, dataProtectionClass: %ld, container: %{private}@}", &v19, 0x2Au);
    }

    v14 = 0;
  }

  return v14;
}

- (__SecKey)copyIdentityFromKeychainWithApplicationKeyIndex:(unsigned __int16)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_opt_class() containerStorageItemNameForContainerIdentityIdentifier:2 applicationKeyIndex:a3];
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

      if (a4)
      {
        v21 = @"IDSKeychainWrapperErrorOSStatus";
        v16 = [NSNumber numberWithInt:v12];
        v22 = v16;
        v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        *a4 = [NSError errorWithDomain:@"IDSKeychainWrapperErrorDomain" code:-2000 userInfo:v17];
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
        v24 = v5;
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
      v24 = v5;
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

- (id)loadIdentityContainerWithIdentifier:(int64_t)a3 withLegacyFallback:(BOOL)a4 serializationDidChange:(BOOL *)a5 deserializationDidFail:(BOOL *)a6 needsEncryptionIdentityRoll:(BOOL *)a7 nonLegacyError:(id *)a8 error:(id *)a9
{
  v13 = a4;
  v15 = [objc_opt_class() containerStorageItemNameForContainerIdentityIdentifier:a3];
  v49 = 0;
  v16 = [(IDSRegistrationKeyManagerIdentityDataSource *)self _loadContainerWithIdentifier:v15 serializationDidChage:a5 deserializationDidFail:a6 needsEncryptionIdentityRoll:a7 error:&v49];
  v17 = v49;
  v18 = v17;
  if (a8 && v17)
  {
    v19 = v17;
    *a8 = v18;
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
    v44 = [(IDSRegistrationKeyManagerIdentityDataSource *)self _loadContainerWithIdentifier:v43 serializationDidChage:a5 deserializationDidFail:a6 needsEncryptionIdentityRoll:a7 error:&v48];
    v24 = v48;
    v18 = v24;
    if (a8 && v24)
    {
      v25 = v24;
      *a8 = v18;
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
        v51 = a3;
        v52 = 2113;
        v53 = v44;
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

    if (a7)
    {
      *a7 = 0;
    }

    if (!v13)
    {
      goto LABEL_47;
    }

    v30 = [objc_opt_class() legacyStorageItemNameForContainerIdentityIdentifier:a3];
    v47 = 0;
    v31 = [(IDSRegistrationKeyManagerIdentityDataSource *)self _retrying_loadLegacyIdentityWithIdentifier:v30 serializationDidChange:a5 deserializationDidFail:&v47 error:a9];
    v32 = v31;
    if (a6)
    {
      *a6 = v47;
    }

    if (v31)
    {
      v33 = [(IDSRegistrationKeyManagerIdentityDataSource *)self containerQueue];
      v22 = [IDSMPFullDeviceIdentityContainer identityWithLegacyFullIdentity:v32 ngmFullDeviceIdentity:0 ngmVersion:0 queue:v33 error:a9];

      if (v22)
      {
        if (![(IDSRegistrationKeyManagerIdentityDataSource *)self saveIdentityContainer:v22 withIdentifier:a3 dataProtectionClass:0 error:a9])
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
            v51 = v42;
            v52 = 2048;
            v53 = a3;
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
          v51 = a3;
          v52 = 2048;
          v53 = v30;
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
        v51 = v41;
        v52 = 2048;
        v53 = a3;
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

      v36 = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
      v46 = 0;
      v37 = [v36 removeDataForIdentifier:v30 dataProtectionClass:2 error:&v46];
      v38 = v46;

      if ((v37 & 1) == 0)
      {
        v39 = +[IMRGLog registration];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 138544131;
          v51 = v38;
          v52 = 2048;
          v53 = a3;
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
    v51 = a3;
    v52 = 2113;
    v53 = v16;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Loaded identity container on first try -- done {identifier: %ld, firstTry: %{private}@}", buf, 0x16u);
  }

  v22 = v16;
LABEL_50:

  return v22;
}

- (BOOL)loadIsIdentityRegisteredForApplicationKeyIndex:(unsigned __int16)a3 error:(id *)a4
{
  v6 = [objc_opt_class() containerStorageItemNameForIsRegisteredAtApplicationKeyIndex:a3];
  if (v6)
  {
    v7 = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
    v8 = [v7 dataForIdentifier:v6 error:a4];

    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)saveIsRegistered:(BOOL)a3 forApplicationKeyIndex:(unsigned __int16)a4 error:(id *)a5
{
  v6 = a3;
  v8 = [objc_opt_class() containerStorageItemNameForIsRegisteredAtApplicationKeyIndex:a4];
  if (v8)
  {
    if (v6)
    {
      v14 = 1;
      v9 = [NSData dataWithBytes:&v14 length:1];
      v10 = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
      v11 = [v10 saveData:v9 forIdentifier:v8 allowSync:0 dataProtectionClass:0 error:a5];
    }

    else
    {
      v12 = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
      v11 = [v12 removeDataForIdentifier:v8 dataProtectionClass:0 error:a5];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)loadKTRegistrationDataForKeyIndex:(unsigned __int16)a3 isRegistered:(BOOL)a4 error:(id *)a5
{
  v7 = [objc_opt_class() containerStorageItemNameForKTDataAtKeyIndex:a3 isRegistered:a4];
  if (v7)
  {
    v8 = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
    v9 = [v8 dataForIdentifier:v7 error:a5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)saveKTRegistrationData:(id)a3 forKeyIndex:(unsigned __int16)a4 isRegistered:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = [objc_opt_class() containerStorageItemNameForKTDataAtKeyIndex:v8 isRegistered:v7];
  if (v11)
  {
    v12 = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
    v13 = [v12 saveData:v10 forIdentifier:v11 allowSync:0 dataProtectionClass:0 error:a6];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)removeKTRegistrationDataForKeyIndex:(unsigned __int16)a3 isRegistered:(BOOL)a4 error:(id *)a5
{
  v7 = [objc_opt_class() containerStorageItemNameForKTDataAtKeyIndex:a3 isRegistered:a4];
  if (v7)
  {
    v8 = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
    v9 = [v8 removeDataForIdentifier:v7 dataProtectionClass:0 error:a5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_removeDataFromKeychainForIdentifier:(id)a3 dataProtectionClass:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
  v16 = 0;
  v10 = [v9 removeDataForIdentifier:v8 dataProtectionClass:a4 error:&v16];
  v11 = v16;

  v12 = +[IMRGLog registration];
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Purged key blob from keychain {identifier: %@}", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1009326C0();
    }

    if (a5)
    {
      v14 = v11;
      *a5 = v11;
    }
  }

  return v10;
}

- (BOOL)removeIdentityWithApplicationKeyIndex:(unsigned __int16)a3 error:(id *)a4
{
  v4 = [objc_opt_class() containerStorageItemNameForContainerIdentityIdentifier:2 applicationKeyIndex:a3];
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

- (BOOL)removeIdentityContainer:(id)a3 withIdentifier:(int64_t)a4 dataProtectionClass:(int64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [v10 legacyFullIdentity];
  v20 = 0;
  v12 = [v11 purgeFromKeychain:&v20];
  v13 = v20;

  v14 = +[IMRGLog registration];
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v10 legacyFullIdentity];
      *buf = 138412290;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Purged legacy full identity {legacyFullIdentity: %@}", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_100932730(v13, v10);
  }

  [v10 eraseNGMIdentityFromKeychain];
  v17 = [objc_opt_class() containerStorageItemNameForContainerIdentityIdentifier:a4];
  v18 = [(IDSRegistrationKeyManagerIdentityDataSource *)self _removeDataFromKeychainForIdentifier:v17 dataProtectionClass:a5 error:a6];

  return v18;
}

- (id)_retrying_loadLegacyIdentityWithIdentifier:(id)a3 serializationDidChange:(BOOL *)a4 deserializationDidFail:(BOOL *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(IDSRegistrationKeyManagerIdentityDataSource *)self _loadLegacyIdentityWithIdentifier:v10 serializationDidChange:a4 deserializationDidFail:a5 error:a6];
  v12 = +[IMRGLog registration];
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (a4)
      {
        if (*a4)
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
      v22 = v10;
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

    v15 = [(IDSRegistrationKeyManagerIdentityDataSource *)self _loadLegacyIdentityWithIdentifier:v10 serializationDidChange:a4 deserializationDidFail:a5 error:a6];
    v16 = +[IMRGLog registration];
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        if (a4)
        {
          if (*a4)
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
        v22 = v10;
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

- (id)_loadLegacyIdentityWithIdentifier:(id)a3 serializationDidChange:(BOOL *)a4 deserializationDidFail:(BOOL *)a5 error:(id *)a6
{
  v10 = a3;
  if (!v10)
  {
    sub_1009328CC();
  }

  v11 = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
  v12 = [v11 dataForIdentifier:v10 error:a6];

  v13 = +[IMRGLog registration];
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543619;
      v22 = v10;
      v23 = 2113;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Loaded identity data from keychain {identifier: %{public}@, data: %{private}@}", &v21, 0x16u);
    }

    v15 = [IDSMPFullLegacyIdentity identityWithData:v12 error:a6];
    v14 = v15;
    if (v15)
    {
      if (a4)
      {
        *a4 = [v15 didDataRepresentationFormatChangeFromDataRepresentation:v12 error:a6];
      }

      v16 = +[IMRGLog registration];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138543619;
        v22 = v10;
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
        if (a6)
        {
          v20 = *a6;
        }

        else
        {
          v20 = 0;
        }

        v21 = 138543875;
        v22 = v20;
        v23 = 2114;
        v24 = v10;
        v25 = 2113;
        v26 = v12;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to load identity from data {error: %{public}@, identifier: %{public}@, data: %{private}@}", &v21, 0x20u);
      }

      if (a5)
      {
        *a5 = 1;
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

- (id)_loadContainerWithIdentifier:(id)a3 serializationDidChage:(BOOL *)a4 deserializationDidFail:(BOOL *)a5 needsEncryptionIdentityRoll:(BOOL *)a6 error:(id *)a7
{
  v12 = a3;
  if (!v12)
  {
    sub_1009329B8();
  }

  v13 = [(IDSRegistrationKeyManagerIdentityDataSource *)self keychainWrapper];
  v14 = [v13 dataForIdentifier:v12 error:a7];

  v15 = +[IMRGLog registration];
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138543619;
      v31 = v12;
      v32 = 2113;
      v33 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Loaded identity data from keychain {identifier: %{public}@, data: %{private}@}", &v30, 0x16u);
    }

    v17 = [(IDSRegistrationKeyManagerIdentityDataSource *)self containerQueue];
    v16 = [IDSMPFullDeviceIdentityContainer identityWithDataRepresentation:v14 queue:v17 error:a7];

    if (v16)
    {
      v18 = [v16 shouldRollNGMEncryptionIdentity];
      if (a6 && v18)
      {
        *a6 = 1;
      }

      if (a4)
      {
        v19 = [v16 dataRepresentationWithError:a7];
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

            *a4 = 0;
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

            *a4 = 1;
          }
        }

        else
        {
          v26 = +[IMRGLog registration];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            sub_100932A2C(a7);
          }
        }
      }

      v27 = +[IMRGLog registration];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 138543619;
        v31 = v12;
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
        if (a7)
        {
          v29 = *a7;
        }

        else
        {
          v29 = 0;
        }

        v30 = 138543875;
        v31 = v29;
        v32 = 2114;
        v33 = v12;
        v34 = 2113;
        v35 = v14;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to load identity container from data {error: %{public}@, identifier: %{public}@, data: %{private}@}", &v30, 0x20u);
      }

      if (a5)
      {
        *a5 = 1;
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
  v4 = [v3 isInternalInstall];

  if (v4)
  {
    v5 = IMGetAppValueForKey();
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v5 unsignedIntValue];
        if (v6 > v2)
        {
          v2 = v6;
        }
      }
    }
  }

  return v2;
}

- (id)dataRepresentationForNGMVersion:(unsigned int)a3
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

- (unsigned)ngmVersionFromDataRepresentation:(id)a3
{
  v3 = a3;
  v9 = 0;
  v4 = [NSPropertyListSerialization propertyListWithData:v3 options:0 format:0 error:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [v4 unsignedIntValue];
  }

  else
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100932BA0();
    }

    v6 = 0;
  }

  return v6;
}

@end