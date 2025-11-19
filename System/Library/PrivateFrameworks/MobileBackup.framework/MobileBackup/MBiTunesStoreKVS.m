@interface MBiTunesStoreKVS
+ (id)iTunesStoreKVS;
+ (id)mergeKnownAccountsByDSID:(id)a3 into:(id)a4;
- (MBiTunesStoreKVS)init;
- (id)knownAccounts;
- (id)knownAccountsByDSID;
- (id)valueForDomain:(id)a3 key:(id)a4;
- (void)removeAllValues;
- (void)setValue:(id)a3 forDomain:(id)a4 key:(id)a5;
- (void)setValuesWithDictionary:(id)a3 forDomain:(id)a4;
@end

@implementation MBiTunesStoreKVS

+ (id)iTunesStoreKVS
{
  v2 = objc_alloc_init(MBiTunesStoreKVS);

  return v2;
}

- (MBiTunesStoreKVS)init
{
  v6.receiver = self;
  v6.super_class = MBiTunesStoreKVS;
  v2 = [(MBiTunesStoreKVS *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SSKeyValueStore);
    KVS = v2->_KVS;
    v2->_KVS = v3;
  }

  return v2;
}

- (id)valueForDomain:(id)a3 key:(id)a4
{
  v6 = a3;
  v7 = a4;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_100209638;
  v37 = sub_100209648;
  v38 = 0;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      KVS = self->_KVS;
      v11 = objc_opt_class();
      *buf = 138412802;
      v40 = v6;
      v41 = 2112;
      v42 = v7;
      v43 = 2112;
      v44 = v11;
      v12 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Getting value %@/%@ from %@", buf, 0x20u);
    }

    v13 = self->_KVS;
    objc_opt_class();
    _MBLog();
  }

  v14 = dispatch_semaphore_create(0);
  v15 = self->_KVS;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100209650;
  v30[3] = &unk_1003C1BA8;
  v32 = &v33;
  v16 = v14;
  v31 = v16;
  [(SSKeyValueStore *)v15 getValueForDomain:v6 key:v7 usingBlock:v30];
  MBSemaphoreWaitForever();
  if (v34[5])
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v17 = v17;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = self->_KVS;
        v19 = objc_opt_class();
        v20 = v34[5];
        *buf = 138413058;
        v40 = v6;
        v41 = 2112;
        v42 = v7;
        v43 = 2112;
        v44 = v19;
        v45 = 2112;
        v46 = v20;
        v21 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Found value %@/%@ from %@: %@", buf, 0x2Au);
      }

      v22 = self->_KVS;
      objc_opt_class();
      v29 = v34[5];
      _MBLog();
    }
  }

  else
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v17 = v17;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v23 = self->_KVS;
        v24 = objc_opt_class();
        *buf = 138412802;
        v40 = v6;
        v41 = 2112;
        v42 = v7;
        v43 = 2112;
        v44 = v24;
        v25 = v24;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Didn't find value %@/%@ in %@", buf, 0x20u);
      }

      v26 = self->_KVS;
      objc_opt_class();
      _MBLog();
    }
  }

  v27 = v34[5];
  _Block_object_dispose(&v33, 8);

  return v27;
}

- (void)setValue:(id)a3 forDomain:(id)a4 key:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      KVS = self->_KVS;
      v14 = objc_opt_class();
      *buf = 138413058;
      v31 = v9;
      v32 = 2112;
      v33 = v10;
      v34 = 2112;
      v35 = v14;
      v36 = 2112;
      v37 = v8;
      v15 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Setting value %@/%@ in %@: %@", buf, 0x2Au);
    }

    v16 = self->_KVS;
    objc_opt_class();
    _MBLog();
  }

  v17 = dispatch_semaphore_create(0);
  v18 = self->_KVS;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100209930;
  v23[3] = &unk_1003BE3B0;
  v25 = &v26;
  v19 = v17;
  v24 = v19;
  [(SSKeyValueStore *)v18 setValue:v8 forDomain:v9 key:v10 completionBlock:v23];
  MBSemaphoreWaitForever();
  if ((v27[3] & 1) == 0)
  {
    v20 = [MBException alloc];
    v21 = self->_KVS;
    v22 = [v20 initWithCode:1 format:{@"Failed to set value %@/%@ in %@", v9, v10, objc_opt_class()}];
    objc_exception_throw(v22);
  }

  _Block_object_dispose(&v26, 8);
}

- (void)setValuesWithDictionary:(id)a3 forDomain:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      KVS = self->_KVS;
      v11 = objc_opt_class();
      *buf = 138412802;
      v28 = v7;
      v29 = 2112;
      v30 = v11;
      v31 = 2112;
      v32 = v6;
      v12 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Setting values with dictionary %@ in %@: %@", buf, 0x20u);
    }

    v13 = self->_KVS;
    objc_opt_class();
    _MBLog();
  }

  v14 = dispatch_semaphore_create(0);
  v15 = self->_KVS;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100209BA0;
  v20[3] = &unk_1003BE3B0;
  v22 = &v23;
  v16 = v14;
  v21 = v16;
  [(SSKeyValueStore *)v15 setValuesWithDictionary:v6 forDomain:v7 completionBlock:v20];
  MBSemaphoreWaitForever();
  if ((v24[3] & 1) == 0)
  {
    v17 = [MBException alloc];
    v18 = self->_KVS;
    v19 = [v17 initWithCode:1 format:{@"Failed to set values with dictionary %@/%@ in %@", v7, objc_opt_class(), v6}];
    objc_exception_throw(v19);
  }

  _Block_object_dispose(&v23, 8);
}

- (void)removeAllValues
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      KVS = self->_KVS;
      v6 = objc_opt_class();
      *buf = 138412290;
      v23 = v6;
      v7 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Removing all values from %@", buf, 0xCu);
    }

    v8 = self->_KVS;
    objc_opt_class();
    _MBLog();
  }

  v9 = dispatch_semaphore_create(0);
  v10 = self->_KVS;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100209DC8;
  v15[3] = &unk_1003BE3B0;
  v17 = &v18;
  v11 = v9;
  v16 = v11;
  [(SSKeyValueStore *)v10 removeAllValuesWithCompletionBlock:v15];
  MBSemaphoreWaitForever();
  if ((v19[3] & 1) == 0)
  {
    v12 = [MBException alloc];
    v13 = self->_KVS;
    v14 = [v12 initWithCode:1 format:{@"Failed to remove all values from %@", objc_opt_class()}];
    objc_exception_throw(v14);
  }

  _Block_object_dispose(&v18, 8);
}

+ (id)mergeKnownAccountsByDSID:(id)a3 into:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSMutableDictionary dictionaryWithDictionary:v6];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v6 objectForKeyedSubscript:{v13, v17}];

        if (!v14)
        {
          v15 = [v8 objectForKeyedSubscript:v13];
          [v7 setObject:v15 forKeyedSubscript:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)knownAccounts
{
  v3 = [(MBiTunesStoreKVS *)self valueForDomain:@"com.apple.mobile.iTunes.store" key:@"KnownAccounts"];
  if (!v3)
  {
LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      KVS = self->_KVS;
      *buf = 138412802;
      v25 = @"com.apple.mobile.iTunes.store";
      v26 = 2112;
      v27 = @"KnownAccounts";
      v28 = 2112;
      v29 = objc_opt_class();
      v12 = v29;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@/%@ not an array in %@", buf, 0x20u);

      v13 = self->_KVS;
      objc_opt_class();
      _MBLog();
    }

LABEL_17:

    goto LABEL_18;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v14 = MBGetDefaultLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = self->_KVS;
            v16 = objc_opt_class();
            *buf = 138412802;
            v25 = @"com.apple.mobile.iTunes.store";
            v26 = 2112;
            v27 = @"KnownAccounts";
            v28 = 2112;
            v29 = v16;
            v17 = v16;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@/%@ item not a dictionary in %@", buf, 0x20u);

            v18 = self->_KVS;
            objc_opt_class();
            _MBLog();
          }

          goto LABEL_17;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = v4;
LABEL_19:

  return v10;
}

- (id)knownAccountsByDSID
{
  v2 = [(MBiTunesStoreKVS *)self knownAccounts];
  v3 = v2;
  if (v2)
  {
    v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v2 count]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v23 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v26 objects:v40 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      v24 = *v27;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:{@"DSPersonID", v18, v19, v20, v21, v22}];
          if (v11)
          {
            [v4 setObject:v10 forKeyedSubscript:v11];
          }

          else
          {
            v12 = MBGetDefaultLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              KVS = self->_KVS;
              v14 = objc_opt_class();
              *buf = 138413314;
              v31 = @"DSPersonID";
              v32 = 2112;
              v33 = @"com.apple.mobile.iTunes.store";
              v34 = 2112;
              v35 = @"KnownAccounts";
              v36 = 2112;
              v37 = v10;
              v38 = 2112;
              v39 = v14;
              v15 = v14;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ not in %@/%@ value in %@: %@", buf, 0x34u);

              v16 = self->_KVS;
              v8 = v24;
              v21 = v10;
              v22 = objc_opt_class();
              v19 = @"com.apple.mobile.iTunes.store";
              v20 = @"KnownAccounts";
              v18 = @"DSPersonID";
              _MBLog();
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v26 objects:v40 count:16];
      }

      while (v7);
    }

    v3 = v23;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end