@interface IDSPerServiceApplicationKeyManager
- (BOOL)hasUnregisteredIdentity;
- (BOOL)needsPublicDataUpdatedForKeyIndex:(unsigned __int16)index;
- (BOOL)notePublicIdentityDidRegisterKeyData:(id)data forKeyIndex:(unsigned __int16)index;
- (BOOL)serializeAndPersistIdentitiesDeleteIfNull:(BOOL)null;
- (IDSPerServiceApplicationKeyManager)initWithIdentityDataSource:(id)source;
- (__SecKey)copyPublicIdentityDataToRegisterForKeyIndex:(unsigned __int16)index withError:(id *)error;
- (__SecKey)fullIdentityForKeyIndex:(unsigned __int16)index;
- (void)_deleteIdentityAtKeyIndex:(unsigned __int16)index error:(id *)error;
- (void)clearIdentities;
- (void)loadIdentitiesWithSerializationDidChange:(BOOL *)change deserializationDidFail:(BOOL *)fail identityGenerated:(BOOL *)generated;
@end

@implementation IDSPerServiceApplicationKeyManager

- (IDSPerServiceApplicationKeyManager)initWithIdentityDataSource:(id)source
{
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = IDSPerServiceApplicationKeyManager;
  v6 = [(IDSPerServiceApplicationKeyManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identityDataSource, source);
    v8 = objc_alloc_init(NSMutableDictionary);
    serviceIndexToKeyConfigs = v7->_serviceIndexToKeyConfigs;
    v7->_serviceIndexToKeyConfigs = v8;
  }

  return v7;
}

- (BOOL)needsPublicDataUpdatedForKeyIndex:(unsigned __int16)index
{
  indexCopy = index;
  serviceIndexToKeyConfigs = [(IDSPerServiceApplicationKeyManager *)self serviceIndexToKeyConfigs];
  v5 = [NSNumber numberWithUnsignedShort:indexCopy];
  v6 = [serviceIndexToKeyConfigs objectForKeyedSubscript:v5];

  if ([v6 identity] && (objc_msgSend(v6, "isRegistered") & 1) == 0)
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109379;
      v10[1] = indexCopy;
      v11 = 2113;
      identity = [v6 identity];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found key index has unregistered identity {keyIndex: %u, unregisteredIdentity: %{private}@}", v10, 0x12u);
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (__SecKey)fullIdentityForKeyIndex:(unsigned __int16)index
{
  indexCopy = index;
  serviceIndexToKeyConfigs = [(IDSPerServiceApplicationKeyManager *)self serviceIndexToKeyConfigs];
  v6 = [NSNumber numberWithUnsignedShort:indexCopy];
  v7 = [serviceIndexToKeyConfigs objectForKeyedSubscript:v6];

  if (!v7)
  {
    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100916E80(indexCopy, self);
    }

    goto LABEL_7;
  }

  identity = [v7 identity];
  if (!identity)
  {
    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100916E08();
    }

LABEL_7:

    identity = 0;
  }

  return identity;
}

- (__SecKey)copyPublicIdentityDataToRegisterForKeyIndex:(unsigned __int16)index withError:(id *)error
{
  indexCopy = index;
  v6 = [(IDSPerServiceApplicationKeyManager *)self serviceIndexToKeyConfigs:index];
  v7 = [NSNumber numberWithUnsignedShort:indexCopy];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v11 = +[IMRGLog registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100916E80(indexCopy, self);
    }

    goto LABEL_10;
  }

  identity = [v8 identity];
  if (!identity)
  {
    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100916E08();
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v10 = SecKeyCopyPublicKey(identity);
LABEL_11:

  return v10;
}

- (BOOL)notePublicIdentityDidRegisterKeyData:(id)data forKeyIndex:(unsigned __int16)index
{
  indexCopy = index;
  dataCopy = data;
  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109379;
    v25 = indexCopy;
    v26 = 2113;
    v27 = dataCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Per service application key manager noting registration of keys { keyIndex: %u, keyData: %{private}@ }", buf, 0x12u);
  }

  serviceIndexToKeyConfigs = [(IDSPerServiceApplicationKeyManager *)self serviceIndexToKeyConfigs];
  v9 = [NSNumber numberWithUnsignedShort:indexCopy];
  v10 = [serviceIndexToKeyConfigs objectForKeyedSubscript:v9];

  if (!v10)
  {
    v13 = +[IMRGLog registration];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10091713C();
    }

    goto LABEL_10;
  }

  identity = [v10 identity];
  if (identity)
  {
    v12 = identity;
    if (![v10 isRegistered])
    {
      v16 = SecKeyCopyPublicKey(v12);
      if (!v16)
      {
        v13 = +[IMRGLog registration];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10091701C();
        }

        goto LABEL_10;
      }

      v17 = v16;
      error = 0;
      v18 = SecKeyCopyExternalRepresentation(v16, &error);
      CFRelease(v17);
      if (v18)
      {
        if (error)
        {
          CFRelease(error);
          error = 0;
        }

        v19 = [(__CFData *)v18 isEqualToData:dataCopy];
        v20 = +[IMRGLog registration];
        v21 = v20;
        if (v19)
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109379;
            v25 = indexCopy;
            v26 = 2113;
            v27 = v12;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Completed registration of previously unregistered identity for key index {keyIndex: %u, unregisteredIdentity: %{private}@}", buf, 0x12u);
          }

          v14 = 1;
          [v10 setIsRegistered:1];
          goto LABEL_30;
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100916F14();
        }
      }

      else
      {
        v22 = +[IMRGLog registration];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_100916F8C();
        }

        if (error)
        {
          CFRelease(error);
          v14 = 0;
          error = 0;
LABEL_30:

          goto LABEL_11;
        }
      }

      v14 = 0;
      goto LABEL_30;
    }
  }

  v13 = +[IMRGLog registration];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100917094(indexCopy, v10);
  }

LABEL_10:

  v14 = 0;
LABEL_11:

  return v14;
}

- (BOOL)hasUnregisteredIdentity
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  serviceIndexToKeyConfigs = [(IDSPerServiceApplicationKeyManager *)self serviceIndexToKeyConfigs];
  v4 = [serviceIndexToKeyConfigs countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(serviceIndexToKeyConfigs);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        serviceIndexToKeyConfigs2 = [(IDSPerServiceApplicationKeyManager *)self serviceIndexToKeyConfigs];
        v10 = [serviceIndexToKeyConfigs2 objectForKeyedSubscript:v8];
        if ([v10 identity])
        {
          serviceIndexToKeyConfigs3 = [(IDSPerServiceApplicationKeyManager *)self serviceIndexToKeyConfigs];
          v12 = [serviceIndexToKeyConfigs3 objectForKeyedSubscript:v8];
          isRegistered = [v12 isRegistered];

          if (!isRegistered)
          {
            v14 = 1;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v5 = [serviceIndexToKeyConfigs countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (void)loadIdentitiesWithSerializationDidChange:(BOOL *)change deserializationDidFail:(BOOL *)fail identityGenerated:(BOOL *)generated
{
  v7 = objc_alloc_init(IDSPerServiceApplicationKeyConfig);
  identityDataSource = [(IDSPerServiceApplicationKeyManager *)self identityDataSource];
  v23 = 0;
  v9 = [identityDataSource copyIdentityFromKeychainWithApplicationKeyIndex:1 error:&v23];
  v10 = v23;

  [(IDSPerServiceApplicationKeyConfig *)v7 setIdentity:v9];
  if (v9)
  {
    CFRelease(v9);
  }

  if ([(IDSPerServiceApplicationKeyConfig *)v7 identity])
  {
    identityDataSource2 = [(IDSPerServiceApplicationKeyManager *)self identityDataSource];
    v22 = v10;
    v12 = [identityDataSource2 loadIsIdentityRegisteredForApplicationKeyIndex:1 error:&v22];
    v13 = v22;

    [(IDSPerServiceApplicationKeyConfig *)v7 setIsRegistered:v12];
    v10 = v13;
  }

  if ([(IDSPerServiceApplicationKeyConfig *)v7 identity])
  {
    v14 = v10;
  }

  else
  {
    v17 = +[IMRGLog registration];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v25 = 1;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No registered or unregistered identity... generating {keyIndex: %u}", buf, 8u);
    }

    identityDataSource3 = [(IDSPerServiceApplicationKeyManager *)self identityDataSource];
    v21 = v10;
    v19 = [identityDataSource3 createIdentityForApplicationKeyIndex:1 error:&v21];
    v14 = v21;

    if (v19)
    {
      [(IDSPerServiceApplicationKeyConfig *)v7 setIdentity:v19];
      [(IDSPerServiceApplicationKeyConfig *)v7 setIsRegistered:0];
      if (generated)
      {
        *generated = 1;
      }
    }

    else
    {
      v20 = +[IMRGLog registration];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109378;
        v25 = 1;
        v26 = 2112;
        v27 = v14;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "generatedIdentityForKeyIndexFailed {keyIndex: %u, error: %@}", buf, 0x12u);
      }
    }
  }

  serviceIndexToKeyConfigs = [(IDSPerServiceApplicationKeyManager *)self serviceIndexToKeyConfigs];
  v16 = [NSNumber numberWithUnsignedShort:1];
  [serviceIndexToKeyConfigs setObject:v7 forKeyedSubscript:v16];
}

- (void)clearIdentities
{
  serviceIndexToKeyConfigs = [(IDSPerServiceApplicationKeyManager *)self serviceIndexToKeyConfigs];
  [serviceIndexToKeyConfigs removeAllObjects];
}

- (BOOL)serializeAndPersistIdentitiesDeleteIfNull:(BOOL)null
{
  nullCopy = null;
  serviceIndexToKeyConfigs = [(IDSPerServiceApplicationKeyManager *)self serviceIndexToKeyConfigs];
  v6 = [NSNumber numberWithUnsignedShort:1];
  v7 = [serviceIndexToKeyConfigs objectForKeyedSubscript:v6];

  if ([v7 identity])
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      isRegistered = [v7 isRegistered];
      v10 = @"NO";
      if (isRegistered)
      {
        v10 = @"YES";
      }

      *buf = 67109378;
      v18 = 1;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Saving isRegistered value for application key, {keyIndex: %u, isRegistered: %@}", buf, 0x12u);
    }

    identityDataSource = [(IDSPerServiceApplicationKeyManager *)self identityDataSource];
    v16 = 0;
    [identityDataSource saveIsRegistered:objc_msgSend(v7 forApplicationKeyIndex:"isRegistered") error:{1, &v16}];
  }

  else
  {
    if ([v7 identity])
    {
      v12 = 1;
    }

    else
    {
      v12 = !nullCopy;
    }

    if (!v12)
    {
      v13 = +[IMRGLog registration];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v18 = 1;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Removing identities from keychain because deleteIfNull == YES and no config present, {keyIndex: %u}", buf, 8u);
      }

      v15 = 0;
      [(IDSPerServiceApplicationKeyManager *)self _deleteIdentityAtKeyIndex:1 error:&v15];
    }
  }

  return 1;
}

- (void)_deleteIdentityAtKeyIndex:(unsigned __int16)index error:(id *)error
{
  indexCopy = index;
  identityDataSource = [(IDSPerServiceApplicationKeyManager *)self identityDataSource];
  v15 = 0;
  v8 = [identityDataSource removeIdentityWithApplicationKeyIndex:indexCopy error:&v15];
  v9 = v15;

  if (v8)
  {
    identityDataSource2 = [(IDSPerServiceApplicationKeyManager *)self identityDataSource];
    v14 = v9;
    [identityDataSource2 saveIsRegistered:0 forApplicationKeyIndex:indexCopy error:&v14];
    v11 = v14;

    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v17 = indexCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Purged identity and removed it from keychain {keyIndex: %u}", buf, 8u);
    }
  }

  else
  {
    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1009171B0();
    }

    v11 = v9;
  }

  if (error && v11)
  {
    v13 = v11;
    *error = v11;
  }
}

@end