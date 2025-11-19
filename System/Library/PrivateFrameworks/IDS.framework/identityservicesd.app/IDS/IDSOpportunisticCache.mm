@interface IDSOpportunisticCache
- (BOOL)addData:(id)a3 withError:(id *)a4;
- (BOOL)clearKeychainWithError:(id *)a3;
- (BOOL)removeDataWithIdentifier:(id)a3 serviceName:(id)a4 withError:(id *)a5;
- (BOOL)saveOpportunisticCache:(id)a3 withError:(id *)a4;
- (IDSOpportunisticCache)init;
- (IDSOpportunisticCache)initWithKeychainWrapper:(id)a3 uriSuggester:(id)a4;
- (id)dataForService:(id)a3 identifier:(id)a4;
- (id)description;
- (id)fetchOpportunisticCacheWithError:(id *)a3;
- (id)selectDataForDestination:(id)a3;
- (void)copyCacheWithBlock:(id)a3;
- (void)limitDataInDictionary:(id)a3 forService:(id)a4;
- (void)mergeKeychainCacheDataIntoDictionary:(id)a3 forService:(id)a4;
- (void)mergeKeychainCacheIntoDictionary:(id)a3;
- (void)selectServicesForKeychainCacheFromDictionary:(id)a3;
- (void)syncCacheWithKeychain;
@end

@implementation IDSOpportunisticCache

- (IDSOpportunisticCache)init
{
  v3 = objc_alloc_init(IDSKeychainWrapper);
  v4 = objc_alloc_init(IDSFrequentURISuggester);
  v5 = [(IDSOpportunisticCache *)self initWithKeychainWrapper:v3 uriSuggester:v4];

  return v5;
}

- (IDSOpportunisticCache)initWithKeychainWrapper:(id)a3 uriSuggester:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = IDSOpportunisticCache;
  v9 = [(IDSOpportunisticCache *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keychainWrapper, a3);
    v11 = objc_alloc_init(NSMutableDictionary);
    keychainCache = v10->_keychainCache;
    v10->_keychainCache = v11;

    objc_storeStrong(&v10->_uriSuggester, a4);
    v10->_accessCount = 20;
  }

  return v10;
}

- (id)fetchOpportunisticCacheWithError:(id *)a3
{
  keychainWrapper = self->_keychainWrapper;
  v17 = 0;
  v5 = [(IDSKeychainWrapper *)keychainWrapper dataForIdentifier:@"OpportunisticCache" error:&v17];
  v6 = v17;
  if (v6 && ![IDSKeychainWrapper isItemNotFoundError:v6])
  {
    v13 = +[IDSFoundationLog opportunistic];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed to load keychain. Can't sync cache with keychain. {error: %@}", buf, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v7, v8, objc_opt_class(), 0];
    v16 = 0;
    v10 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v9 fromData:v5 error:&v16];
    v11 = v16;

    if (v11)
    {
      v12 = +[IDSFoundationLog opportunistic];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Error unarchiving -- dropping {unarchiveError: %@}", buf, 0xCu);
      }

      goto LABEL_8;
    }

    if (!v10)
    {
LABEL_8:
      v10 = objc_alloc_init(NSMutableDictionary);
    }
  }

  if (a3)
  {
    v14 = v6;
    *a3 = v6;
  }

  return v10;
}

- (BOOL)saveOpportunisticCache:(id)a3 withError:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    keychainWrapper = self->_keychainWrapper;
    v14 = 0;
    [(IDSKeychainWrapper *)keychainWrapper removeDataForIdentifier:@"OpportunisticCache" dataProtectionClass:2 error:&v14];
    v8 = v14;
    if (!a4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v16 = 0;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:0 error:&v16];
  v8 = v16;
  if (v7)
  {
    v9 = self->_keychainWrapper;
    v15 = v8;
    [(IDSKeychainWrapper *)v9 saveData:v7 forIdentifier:@"OpportunisticCache" allowSync:0 dataProtectionClass:2 error:&v15];
    v10 = v8;
    v8 = v15;
  }

  else
  {
    v10 = +[IDSFoundationLog opportunistic];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_100914B68(v8, v6, v10);
    }
  }

  if (a4)
  {
LABEL_9:
    v12 = v8;
    *a4 = v8;
  }

LABEL_10:

  return v8 != 0;
}

- (void)copyCacheWithBlock:(id)a3
{
  v16 = a3;
  v18 = objc_alloc_init(NSMutableDictionary);
  [(IDSOpportunisticCache *)self fetchOpportunisticCacheWithError:0];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v19)
  {
    v17 = *v26;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v25 + 1) + 8 * i);
        v6 = [obj objectForKeyedSubscript:v5];
        v7 = objc_alloc_init(NSMutableDictionary);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v8 = v6;
        v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v22;
          do
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v22 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v21 + 1) + 8 * j);
              v14 = [v8 objectForKeyedSubscript:v13];
              v15 = [v14 copy];
              [v7 setObject:v15 forKeyedSubscript:v13];
            }

            v10 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v10);
        }

        [v18 setObject:v7 forKeyedSubscript:v5];
      }

      v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v19);
  }

  v16[2](v16, v18);
}

- (BOOL)clearKeychainWithError:(id *)a3
{
  [(NSMutableDictionary *)self->_keychainCache removeAllObjects];
  v5 = [(IDSOpportunisticCache *)self saveOpportunisticCache:0 withError:a3];
  v6 = +[IDSFoundationLog opportunistic];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      v7 = *a3;
    }

    else
    {
      v7 = 0;
    }

    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dropped opportunistic cache {err: %@}", &v9, 0xCu);
  }

  return v5;
}

- (BOOL)addData:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [(IDSOpportunisticCache *)self fetchOpportunisticCacheWithError:a4];
  if (v7)
  {
    [(IDSOpportunisticCache *)self mergeKeychainCacheIntoDictionary:v7];
    v8 = [v6 serviceName];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (!v9)
    {
      v18 = [v6 data];

      if (v18)
      {
        v19 = [NSMutableDictionary alloc];
        v20 = [v6 identifier];
        v36 = v20;
        v37 = v6;
        v21 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v22 = [v19 initWithDictionary:v21];
        v23 = [v6 serviceName];
        [v7 setObject:v22 forKeyedSubscript:v23];
      }

LABEL_15:
      v24 = [v6 serviceName];
      v25 = [v7 objectForKeyedSubscript:v24];

      if (v25)
      {
        v26 = [v6 serviceName];
        [(IDSOpportunisticCache *)self limitDataInDictionary:v7 forService:v26];

        keychainCache = self->_keychainCache;
        v28 = [v6 serviceName];
        v29 = [(NSMutableDictionary *)keychainCache objectForKeyedSubscript:v28];
        if (v29)
        {

LABEL_19:
          v31 = [v6 serviceName];
          v32 = [v7 objectForKeyedSubscript:v31];
          v33 = self->_keychainCache;
          v34 = [v6 serviceName];
          [(NSMutableDictionary *)v33 setObject:v32 forKeyedSubscript:v34];

          goto LABEL_20;
        }

        v30 = [(NSMutableDictionary *)self->_keychainCache count];

        if (v30 < 3)
        {
          goto LABEL_19;
        }
      }

LABEL_20:
      v16 = [(IDSOpportunisticCache *)self saveOpportunisticCache:v7 withError:a4];

      goto LABEL_21;
    }

    v10 = [v6 identifier];
    v11 = [v9 objectForKeyedSubscript:v10];

    if (v11 && ([v11 data], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "data"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqual:", v13), v13, v12, v14))
    {
      v15 = [v6 options];
      [v11 setOptions:v15];
    }

    else
    {
      v17 = [v6 data];

      if (v17)
      {
        v15 = [v6 identifier];
        [v9 setObject:v6 forKeyedSubscript:v15];
      }

      else
      {
        if (!v11)
        {
LABEL_14:

          goto LABEL_15;
        }

        v15 = [v6 identifier];
        [v9 removeObjectForKey:v15];
      }
    }

    goto LABEL_14;
  }

  v16 = 0;
LABEL_21:

  return v16;
}

- (BOOL)removeDataWithIdentifier:(id)a3 serviceName:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(IDSOpportunisticCache *)self fetchOpportunisticCacheWithError:a5];
  if (v10)
  {
    [(IDSOpportunisticCache *)self mergeKeychainCacheIntoDictionary:v10];
    v11 = [v10 objectForKeyedSubscript:v9];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 objectForKeyedSubscript:v8];
      if (v13)
      {
        [v12 removeObjectForKey:v8];
        [(NSMutableDictionary *)self->_keychainCache setObject:v12 forKeyedSubscript:v9];
      }
    }

    v14 = [(IDSOpportunisticCache *)self saveOpportunisticCache:v10 withError:a5];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)syncCacheWithKeychain
{
  v3 = [(IDSOpportunisticCache *)self fetchOpportunisticCacheWithError:0];
  if (v3)
  {
    v4 = v3;
    [(IDSOpportunisticCache *)self mergeKeychainCacheIntoDictionary:v3];
    [(IDSOpportunisticCache *)self selectServicesForKeychainCacheFromDictionary:v4];
    self->_accessCount = 0;
    [(IDSOpportunisticCache *)self saveOpportunisticCache:v4 withError:0];
  }

  _objc_release_x1();
}

- (void)mergeKeychainCacheIntoDictionary:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMutableDictionary *)self->_keychainCache allKeys];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(IDSOpportunisticCache *)self mergeKeychainCacheDataIntoDictionary:v4 forService:*(*(&v10 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)mergeKeychainCacheDataIntoDictionary:(id)a3 forService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_keychainCache objectForKeyedSubscript:v7];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [v8 allKeys];
  v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:v13];
        v15 = [v6 objectForKeyedSubscript:v7];

        if (!v15)
        {
          v16 = objc_alloc_init(NSMutableDictionary);
          [v6 setObject:v16 forKeyedSubscript:v7];
        }

        v17 = [v14 isInvalid];
        v18 = [v6 objectForKeyedSubscript:v7];
        v19 = v18;
        if (v17)
        {
          v20 = [v18 objectForKeyedSubscript:v13];

          if (!v20)
          {
            goto LABEL_13;
          }

          v19 = [v6 objectForKeyedSubscript:v7];
          [v19 removeObjectForKey:v13];
        }

        else
        {
          [v18 setObject:v14 forKeyedSubscript:v13];
        }

LABEL_13:
      }

      v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }
}

- (void)limitDataInDictionary:(id)a3 forService:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 count];

  if (v8 >= 6)
  {
    do
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v9 = [v5 objectForKeyedSubscript:v6];
      v10 = [v9 allKeys];

      obj = v10;
      v32 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
      v11 = 0;
      if (v32)
      {
        v31 = *v34;
        do
        {
          v12 = 0;
          do
          {
            if (*v34 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v33 + 1) + 8 * v12);
            if (v11)
            {
              v14 = [v5 objectForKeyedSubscript:v6];
              v15 = [v14 objectForKeyedSubscript:v13];

              v16 = v5;
              v17 = v6;
              v18 = [v5 objectForKeyedSubscript:v6];
              v19 = [v18 objectForKeyedSubscript:v11];

              v20 = [v15 options];
              v21 = [v20 expiryDate];

              v22 = [v19 options];
              v23 = [v22 expiryDate];

              if (v21 && (!v23 || [v21 compare:v23] == -1))
              {
                v24 = v13;

                v11 = v24;
              }

              v5 = v16;
              v6 = v17;
            }

            else
            {
              v11 = v13;
            }

            v12 = v12 + 1;
          }

          while (v32 != v12);
          v32 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v32);
      }

      v25 = [v5 objectForKeyedSubscript:v6];
      [v25 removeObjectForKey:v11];

      v26 = [v5 objectForKeyedSubscript:v6];
      v27 = [v26 count];
    }

    while (v27 > 5);
  }

  v28 = [v5 objectForKeyedSubscript:v6];
  v29 = [v28 count];

  if (!v29)
  {
    [v5 removeObjectForKey:v6];
  }
}

- (void)selectServicesForKeychainCacheFromDictionary:(id)a3
{
  v8 = a3;
  [(NSMutableDictionary *)self->_keychainCache removeAllObjects];
  v4 = [v8 allKeys];
  if ([v4 count])
  {
    v5 = 3;
    do
    {
      v6 = [v4 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v4, "count"))}];
      v7 = [v8 objectForKeyedSubscript:v6];
      [(NSMutableDictionary *)self->_keychainCache setObject:v7 forKeyedSubscript:v6];

      --v5;
    }

    while (v5);
  }
}

- (id)selectDataForDestination:(id)a3
{
  v4 = a3;
  accessCount = self->_accessCount;
  self->_accessCount = accessCount + 1;
  if (accessCount >= 19)
  {
    [(IDSOpportunisticCache *)self syncCacheWithKeychain];
    self->_accessCount = 0;
  }

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10030C504;
  v47[3] = &unk_100BD6E68;
  v27 = objc_alloc_init(NSMutableDictionary);
  v48 = v27;
  v34 = objc_retainBlock(v47);
  v33 = objc_alloc_init(NSMutableArray);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [(NSMutableDictionary *)self->_keychainCache allKeys];
  v31 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v31)
  {
    v29 = *v44;
    v30 = self;
    do
    {
      v6 = 0;
      do
      {
        if (*v44 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v6;
        v7 = [(NSMutableDictionary *)self->_keychainCache objectForKeyedSubscript:*(*(&v43 + 1) + 8 * v6), v27];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v8 = [v7 allKeys];
        v9 = [v8 countByEnumeratingWithState:&v39 objects:v50 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v40;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v40 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [v7 objectForKeyedSubscript:*(*(&v39 + 1) + 8 * i)];
              if ([v13 shouldSendToDestination:v4])
              {
                v14 = [v13 options];
                v15 = [v14 destinationsMustBeInContacts];

                if (v15)
                {
                  [v33 addObject:v13];
                }

                else
                {
                  (v34[2])(v34, v13);
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v39 objects:v50 count:16];
          }

          while (v10);
        }

        v6 = v32 + 1;
        self = v30;
      }

      while ((v32 + 1) != v31);
      v31 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v31);
  }

  if ([v33 count] && -[IDSFrequentURISuggester checkContactsForDestination:](self->_uriSuggester, "checkContactsForDestination:", v4))
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v16 = v33;
    v17 = [v16 countByEnumeratingWithState:&v35 objects:v49 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v36;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(v16);
          }

          (v34[2])(v34, *(*(&v35 + 1) + 8 * j));
        }

        v18 = [v16 countByEnumeratingWithState:&v35 objects:v49 count:16];
      }

      while (v18);
    }
  }

  v21 = v27;
  if ([v27 count])
  {
    v22 = [v21 allKeys];
    v23 = [v22 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v22, "count"))}];
    v24 = [v21 objectForKeyedSubscript:v23];
    v25 = [v24 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v24, "count"))}];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)dataForService:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_keychainCache objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_keychainCache objectForKeyedSubscript:v6];
    v10 = [v9 objectForKeyedSubscript:v7];
  }

  else
  {
    v14 = 0;
    v12 = [(IDSOpportunisticCache *)self fetchOpportunisticCacheWithError:&v14];
    v9 = v12;
    if (v12)
    {
      v10 = [v12 objectForKeyedSubscript:v6];

      if (v10)
      {
        v13 = [v9 objectForKeyedSubscript:v6];
        v10 = [v13 objectForKeyedSubscript:v7];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(IDSOpportunisticCache *)self accessCount];
  v5 = [(IDSOpportunisticCache *)self keychainCache];
  v6 = [NSString stringWithFormat:@"<%@:%p accessCount: %lld, cache: %@>", v3, self, v4, v5];

  return v6;
}

@end