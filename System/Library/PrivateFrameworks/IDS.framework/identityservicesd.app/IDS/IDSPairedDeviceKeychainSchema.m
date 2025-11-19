@interface IDSPairedDeviceKeychainSchema
- (id)_migrateFromSinglePairedDeviceToMultipleWithKeychainDictionary:(id)a3;
- (id)_propertyDictionariesFromPairedDevices:(id)a3;
- (id)keychainDictionaryWithPairedDevices:(id)a3;
- (id)migrateKeychainDictionary:(id)a3;
- (unint64_t)_migrationTypeForKeychainDictionary:(id)a3;
@end

@implementation IDSPairedDeviceKeychainSchema

- (id)keychainDictionaryWithPairedDevices:(id)a3
{
  v3 = [(IDSPairedDeviceKeychainSchema *)self _propertyDictionariesFromPairedDevices:a3];
  v6[0] = @"schema-version";
  v6[1] = @"paired-devices";
  v7[0] = &off_100C3C088;
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (id)_propertyDictionariesFromPairedDevices:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) persistedProperties];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (unint64_t)_migrationTypeForKeychainDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"schema-version"];
  v4 = [v3 unsignedIntegerValue];
  if (v4)
  {
    if (v4 != 9200)
    {
      v5 = +[IMRGLog watchPairing];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        sub_10091E78C(v3, v5);
      }
    }

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)migrateKeychainDictionary:(id)a3
{
  v4 = a3;
  v5 = [(IDSPairedDeviceKeychainSchema *)self _migrationTypeForKeychainDictionary:v4];
  v6 = v4;
  v7 = v6;
  if (v5 == 1)
  {
    v8 = [(IDSPairedDeviceKeychainSchema *)self _migrateFromSinglePairedDeviceToMultipleWithKeychainDictionary:v6];
  }

  else
  {
    v8 = v6;
    if (!v5)
    {
      v9 = +[IMRGLog watchPairing];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_10091E804(v9);
      }

      v8 = v7;
    }
  }

  return v8;
}

- (id)_migrateFromSinglePairedDeviceToMultipleWithKeychainDictionary:(id)a3
{
  v4 = a3;
  v5 = [[IDSPairedDevice alloc] initWithProperties:v4];

  v6 = [[IDSPairedDevice alloc] initWithPairedDevice:v5 isActive:1];
  v10 = v6;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  v8 = [(IDSPairedDeviceKeychainSchema *)self keychainDictionaryWithPairedDevices:v7];

  return v8;
}

@end