@interface IDSPerServiceApplicationKeyManager
- (BOOL)hasUnregisteredIdentity;
- (BOOL)needsPublicDataUpdatedForKeyIndex:(unsigned __int16)a3;
- (BOOL)notePublicIdentityDidRegisterKeyData:(id)a3 forKeyIndex:(unsigned __int16)a4;
- (BOOL)serializeAndPersistIdentitiesDeleteIfNull:(BOOL)a3;
- (IDSPerServiceApplicationKeyManager)initWithIdentityDataSource:(id)a3;
- (__SecKey)copyPublicIdentityDataToRegisterForKeyIndex:(unsigned __int16)a3 withError:(id *)a4;
- (__SecKey)fullIdentityForKeyIndex:(unsigned __int16)a3;
- (void)_deleteIdentityAtKeyIndex:(unsigned __int16)a3 error:(id *)a4;
- (void)clearIdentities;
- (void)loadIdentitiesWithSerializationDidChange:(BOOL *)a3 deserializationDidFail:(BOOL *)a4 identityGenerated:(BOOL *)a5;
@end

@implementation IDSPerServiceApplicationKeyManager

- (IDSPerServiceApplicationKeyManager)initWithIdentityDataSource:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = IDSPerServiceApplicationKeyManager;
  v6 = [(IDSPerServiceApplicationKeyManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identityDataSource, a3);
    v8 = objc_alloc_init(NSMutableDictionary);
    serviceIndexToKeyConfigs = v7->_serviceIndexToKeyConfigs;
    v7->_serviceIndexToKeyConfigs = v8;
  }

  return v7;
}

- (BOOL)needsPublicDataUpdatedForKeyIndex:(unsigned __int16)a3
{
  v3 = a3;
  v4 = [(IDSPerServiceApplicationKeyManager *)self serviceIndexToKeyConfigs];
  v5 = [NSNumber numberWithUnsignedShort:v3];
  v6 = [v4 objectForKeyedSubscript:v5];

  if ([v6 identity] && (objc_msgSend(v6, "isRegistered") & 1) == 0)
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109379;
      v10[1] = v3;
      v11 = 2113;
      v12 = [v6 identity];
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

- (__SecKey)fullIdentityForKeyIndex:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(IDSPerServiceApplicationKeyManager *)self serviceIndexToKeyConfigs];
  v6 = [NSNumber numberWithUnsignedShort:v3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100916E80(v3, self);
    }

    goto LABEL_7;
  }

  v8 = [v7 identity];
  if (!v8)
  {
    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100916E08();
    }

LABEL_7:

    v8 = 0;
  }

  return v8;
}

- (__SecKey)copyPublicIdentityDataToRegisterForKeyIndex:(unsigned __int16)a3 withError:(id *)a4
{
  v4 = a3;
  v6 = [(IDSPerServiceApplicationKeyManager *)self serviceIndexToKeyConfigs:a3];
  v7 = [NSNumber numberWithUnsignedShort:v4];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v11 = +[IMRGLog registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100916E80(v4, self);
    }

    goto LABEL_10;
  }

  v9 = [v8 identity];
  if (!v9)
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

  v10 = SecKeyCopyPublicKey(v9);
LABEL_11:

  return v10;
}

- (BOOL)notePublicIdentityDidRegisterKeyData:(id)a3 forKeyIndex:(unsigned __int16)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109379;
    v25 = v4;
    v26 = 2113;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Per service application key manager noting registration of keys { keyIndex: %u, keyData: %{private}@ }", buf, 0x12u);
  }

  v8 = [(IDSPerServiceApplicationKeyManager *)self serviceIndexToKeyConfigs];
  v9 = [NSNumber numberWithUnsignedShort:v4];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v13 = +[IMRGLog registration];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10091713C();
    }

    goto LABEL_10;
  }

  v11 = [v10 identity];
  if (v11)
  {
    v12 = v11;
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

        v19 = [(__CFData *)v18 isEqualToData:v6];
        v20 = +[IMRGLog registration];
        v21 = v20;
        if (v19)
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109379;
            v25 = v4;
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
    sub_100917094(v4, v10);
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
  v3 = [(IDSPerServiceApplicationKeyManager *)self serviceIndexToKeyConfigs];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [(IDSPerServiceApplicationKeyManager *)self serviceIndexToKeyConfigs];
        v10 = [v9 objectForKeyedSubscript:v8];
        if ([v10 identity])
        {
          v11 = [(IDSPerServiceApplicationKeyManager *)self serviceIndexToKeyConfigs];
          v12 = [v11 objectForKeyedSubscript:v8];
          v13 = [v12 isRegistered];

          if (!v13)
          {
            v14 = 1;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (void)loadIdentitiesWithSerializationDidChange:(BOOL *)a3 deserializationDidFail:(BOOL *)a4 identityGenerated:(BOOL *)a5
{
  v7 = objc_alloc_init(IDSPerServiceApplicationKeyConfig);
  v8 = [(IDSPerServiceApplicationKeyManager *)self identityDataSource];
  v23 = 0;
  v9 = [v8 copyIdentityFromKeychainWithApplicationKeyIndex:1 error:&v23];
  v10 = v23;

  [(IDSPerServiceApplicationKeyConfig *)v7 setIdentity:v9];
  if (v9)
  {
    CFRelease(v9);
  }

  if ([(IDSPerServiceApplicationKeyConfig *)v7 identity])
  {
    v11 = [(IDSPerServiceApplicationKeyManager *)self identityDataSource];
    v22 = v10;
    v12 = [v11 loadIsIdentityRegisteredForApplicationKeyIndex:1 error:&v22];
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

    v18 = [(IDSPerServiceApplicationKeyManager *)self identityDataSource];
    v21 = v10;
    v19 = [v18 createIdentityForApplicationKeyIndex:1 error:&v21];
    v14 = v21;

    if (v19)
    {
      [(IDSPerServiceApplicationKeyConfig *)v7 setIdentity:v19];
      [(IDSPerServiceApplicationKeyConfig *)v7 setIsRegistered:0];
      if (a5)
      {
        *a5 = 1;
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

  v15 = [(IDSPerServiceApplicationKeyManager *)self serviceIndexToKeyConfigs];
  v16 = [NSNumber numberWithUnsignedShort:1];
  [v15 setObject:v7 forKeyedSubscript:v16];
}

- (void)clearIdentities
{
  v2 = [(IDSPerServiceApplicationKeyManager *)self serviceIndexToKeyConfigs];
  [v2 removeAllObjects];
}

- (BOOL)serializeAndPersistIdentitiesDeleteIfNull:(BOOL)a3
{
  v3 = a3;
  v5 = [(IDSPerServiceApplicationKeyManager *)self serviceIndexToKeyConfigs];
  v6 = [NSNumber numberWithUnsignedShort:1];
  v7 = [v5 objectForKeyedSubscript:v6];

  if ([v7 identity])
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 isRegistered];
      v10 = @"NO";
      if (v9)
      {
        v10 = @"YES";
      }

      *buf = 67109378;
      v18 = 1;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Saving isRegistered value for application key, {keyIndex: %u, isRegistered: %@}", buf, 0x12u);
    }

    v11 = [(IDSPerServiceApplicationKeyManager *)self identityDataSource];
    v16 = 0;
    [v11 saveIsRegistered:objc_msgSend(v7 forApplicationKeyIndex:"isRegistered") error:{1, &v16}];
  }

  else
  {
    if ([v7 identity])
    {
      v12 = 1;
    }

    else
    {
      v12 = !v3;
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

- (void)_deleteIdentityAtKeyIndex:(unsigned __int16)a3 error:(id *)a4
{
  v5 = a3;
  v7 = [(IDSPerServiceApplicationKeyManager *)self identityDataSource];
  v15 = 0;
  v8 = [v7 removeIdentityWithApplicationKeyIndex:v5 error:&v15];
  v9 = v15;

  if (v8)
  {
    v10 = [(IDSPerServiceApplicationKeyManager *)self identityDataSource];
    v14 = v9;
    [v10 saveIsRegistered:0 forApplicationKeyIndex:v5 error:&v14];
    v11 = v14;

    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v17 = v5;
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

  if (a4 && v11)
  {
    v13 = v11;
    *a4 = v11;
  }
}

@end