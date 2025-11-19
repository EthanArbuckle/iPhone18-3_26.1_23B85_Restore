@interface IDSPairedDeviceKeychainPersister
- (BOOL)_removeFromKeychain;
- (BOOL)_saveToKeychainWithDictionary:(id)a3;
- (BOOL)savePairedDevices:(id)a3;
- (IDSPairedDeviceKeychainPersister)init;
- (id)_pairedDevicesFromPropertyDictionaries:(id)a3;
- (id)loadPairedDevices;
@end

@implementation IDSPairedDeviceKeychainPersister

- (IDSPairedDeviceKeychainPersister)init
{
  v6.receiver = self;
  v6.super_class = IDSPairedDeviceKeychainPersister;
  v2 = [(IDSPairedDeviceKeychainPersister *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(IDSPairedDeviceKeychainSchema);
    keychainSchema = v2->_keychainSchema;
    v2->_keychainSchema = v3;
  }

  return v2;
}

- (id)loadPairedDevices
{
  v3 = IMGetKeychainData();
  v4 = 0;
  if (v3)
  {
    v5 = JWDecodeDictionary();
    if ([v5 count])
    {
      if ([(IDSPairedDeviceKeychainSchema *)self->_keychainSchema isMigrationRequiredForKeychainDictionary:v5])
      {
        v6 = [(IDSPairedDeviceKeychainSchema *)self->_keychainSchema migrateKeychainDictionary:v5];

        v5 = v6;
      }

      v7 = [v5 objectForKeyedSubscript:@"paired-devices", 0];
      v8 = [(IDSPairedDeviceKeychainPersister *)self _pairedDevicesFromPropertyDictionaries:v7];
    }

    else
    {
      v7 = +[IMRGLog NRPairing];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_10092E248(v7);
      }

      v8 = &__NSArray0__struct;
    }
  }

  else
  {
    v5 = +[IMRGLog NRPairing];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Paired device properties can't be loaded because of a keychain error %d.", buf, 8u);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)savePairedDevices:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(IDSPairedDeviceKeychainSchema *)self->_keychainSchema keychainDictionaryWithPairedDevices:v4];
    v6 = [(IDSPairedDeviceKeychainPersister *)self _saveToKeychainWithDictionary:v5];
  }

  else
  {
    v6 = [(IDSPairedDeviceKeychainPersister *)self _removeFromKeychain];
  }

  return v6;
}

- (id)_pairedDevicesFromPropertyDictionaries:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [IDSPairedDevice alloc];
        v12 = [(IDSPairedDevice *)v11 initWithProperties:v10, v14];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)_saveToKeychainWithDictionary:(id)a3
{
  v3 = JWEncodeDictionary();
  v4 = IMSetKeychainData();
  if ((v4 & 1) == 0)
  {
    v5 = +[IMRGLog NRPairing];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_10092E28C();
    }
  }

  return v4;
}

- (BOOL)_removeFromKeychain
{
  v2 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Removing the paired device repository's keychain entry.", buf, 2u);
  }

  v3 = IMRemoveKeychainData();
  if ((v3 & 1) == 0)
  {
    v4 = +[IMRGLog NRPairing];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_10092E310();
    }
  }

  return v3;
}

@end