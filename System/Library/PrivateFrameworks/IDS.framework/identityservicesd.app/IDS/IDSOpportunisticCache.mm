@interface IDSOpportunisticCache
- (BOOL)addData:(id)data withError:(id *)error;
- (BOOL)clearKeychainWithError:(id *)error;
- (BOOL)removeDataWithIdentifier:(id)identifier serviceName:(id)name withError:(id *)error;
- (BOOL)saveOpportunisticCache:(id)cache withError:(id *)error;
- (IDSOpportunisticCache)init;
- (IDSOpportunisticCache)initWithKeychainWrapper:(id)wrapper uriSuggester:(id)suggester;
- (id)dataForService:(id)service identifier:(id)identifier;
- (id)description;
- (id)fetchOpportunisticCacheWithError:(id *)error;
- (id)selectDataForDestination:(id)destination;
- (void)copyCacheWithBlock:(id)block;
- (void)limitDataInDictionary:(id)dictionary forService:(id)service;
- (void)mergeKeychainCacheDataIntoDictionary:(id)dictionary forService:(id)service;
- (void)mergeKeychainCacheIntoDictionary:(id)dictionary;
- (void)selectServicesForKeychainCacheFromDictionary:(id)dictionary;
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

- (IDSOpportunisticCache)initWithKeychainWrapper:(id)wrapper uriSuggester:(id)suggester
{
  wrapperCopy = wrapper;
  suggesterCopy = suggester;
  v14.receiver = self;
  v14.super_class = IDSOpportunisticCache;
  v9 = [(IDSOpportunisticCache *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keychainWrapper, wrapper);
    v11 = objc_alloc_init(NSMutableDictionary);
    keychainCache = v10->_keychainCache;
    v10->_keychainCache = v11;

    objc_storeStrong(&v10->_uriSuggester, suggester);
    v10->_accessCount = 20;
  }

  return v10;
}

- (id)fetchOpportunisticCacheWithError:(id *)error
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

  if (error)
  {
    v14 = v6;
    *error = v6;
  }

  return v10;
}

- (BOOL)saveOpportunisticCache:(id)cache withError:(id *)error
{
  cacheCopy = cache;
  if (!cacheCopy)
  {
    keychainWrapper = self->_keychainWrapper;
    v14 = 0;
    [(IDSKeychainWrapper *)keychainWrapper removeDataForIdentifier:@"OpportunisticCache" dataProtectionClass:2 error:&v14];
    v8 = v14;
    if (!error)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v16 = 0;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:cacheCopy requiringSecureCoding:0 error:&v16];
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
      sub_100914B68(v8, cacheCopy, v10);
    }
  }

  if (error)
  {
LABEL_9:
    v12 = v8;
    *error = v8;
  }

LABEL_10:

  return v8 != 0;
}

- (void)copyCacheWithBlock:(id)block
{
  blockCopy = block;
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

  blockCopy[2](blockCopy, v18);
}

- (BOOL)clearKeychainWithError:(id *)error
{
  [(NSMutableDictionary *)self->_keychainCache removeAllObjects];
  v5 = [(IDSOpportunisticCache *)self saveOpportunisticCache:0 withError:error];
  v6 = +[IDSFoundationLog opportunistic];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (error)
    {
      v7 = *error;
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

- (BOOL)addData:(id)data withError:(id *)error
{
  dataCopy = data;
  v7 = [(IDSOpportunisticCache *)self fetchOpportunisticCacheWithError:error];
  if (v7)
  {
    [(IDSOpportunisticCache *)self mergeKeychainCacheIntoDictionary:v7];
    serviceName = [dataCopy serviceName];
    v9 = [v7 objectForKeyedSubscript:serviceName];

    if (!v9)
    {
      data = [dataCopy data];

      if (data)
      {
        v19 = [NSMutableDictionary alloc];
        identifier = [dataCopy identifier];
        v36 = identifier;
        v37 = dataCopy;
        v21 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v22 = [v19 initWithDictionary:v21];
        serviceName2 = [dataCopy serviceName];
        [v7 setObject:v22 forKeyedSubscript:serviceName2];
      }

LABEL_15:
      serviceName3 = [dataCopy serviceName];
      v25 = [v7 objectForKeyedSubscript:serviceName3];

      if (v25)
      {
        serviceName4 = [dataCopy serviceName];
        [(IDSOpportunisticCache *)self limitDataInDictionary:v7 forService:serviceName4];

        keychainCache = self->_keychainCache;
        serviceName5 = [dataCopy serviceName];
        v29 = [(NSMutableDictionary *)keychainCache objectForKeyedSubscript:serviceName5];
        if (v29)
        {

LABEL_19:
          serviceName6 = [dataCopy serviceName];
          v32 = [v7 objectForKeyedSubscript:serviceName6];
          v33 = self->_keychainCache;
          serviceName7 = [dataCopy serviceName];
          [(NSMutableDictionary *)v33 setObject:v32 forKeyedSubscript:serviceName7];

          goto LABEL_20;
        }

        v30 = [(NSMutableDictionary *)self->_keychainCache count];

        if (v30 < 3)
        {
          goto LABEL_19;
        }
      }

LABEL_20:
      v16 = [(IDSOpportunisticCache *)self saveOpportunisticCache:v7 withError:error];

      goto LABEL_21;
    }

    identifier2 = [dataCopy identifier];
    v11 = [v9 objectForKeyedSubscript:identifier2];

    if (v11 && ([v11 data], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(dataCopy, "data"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqual:", v13), v13, v12, v14))
    {
      options = [dataCopy options];
      [v11 setOptions:options];
    }

    else
    {
      data2 = [dataCopy data];

      if (data2)
      {
        options = [dataCopy identifier];
        [v9 setObject:dataCopy forKeyedSubscript:options];
      }

      else
      {
        if (!v11)
        {
LABEL_14:

          goto LABEL_15;
        }

        options = [dataCopy identifier];
        [v9 removeObjectForKey:options];
      }
    }

    goto LABEL_14;
  }

  v16 = 0;
LABEL_21:

  return v16;
}

- (BOOL)removeDataWithIdentifier:(id)identifier serviceName:(id)name withError:(id *)error
{
  identifierCopy = identifier;
  nameCopy = name;
  v10 = [(IDSOpportunisticCache *)self fetchOpportunisticCacheWithError:error];
  if (v10)
  {
    [(IDSOpportunisticCache *)self mergeKeychainCacheIntoDictionary:v10];
    v11 = [v10 objectForKeyedSubscript:nameCopy];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 objectForKeyedSubscript:identifierCopy];
      if (v13)
      {
        [v12 removeObjectForKey:identifierCopy];
        [(NSMutableDictionary *)self->_keychainCache setObject:v12 forKeyedSubscript:nameCopy];
      }
    }

    v14 = [(IDSOpportunisticCache *)self saveOpportunisticCache:v10 withError:error];
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

- (void)mergeKeychainCacheIntoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allKeys = [(NSMutableDictionary *)self->_keychainCache allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        [(IDSOpportunisticCache *)self mergeKeychainCacheDataIntoDictionary:dictionaryCopy forService:*(*(&v10 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)mergeKeychainCacheDataIntoDictionary:(id)dictionary forService:(id)service
{
  dictionaryCopy = dictionary;
  serviceCopy = service;
  v8 = [(NSMutableDictionary *)self->_keychainCache objectForKeyedSubscript:serviceCopy];
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
        v15 = [dictionaryCopy objectForKeyedSubscript:serviceCopy];

        if (!v15)
        {
          v16 = objc_alloc_init(NSMutableDictionary);
          [dictionaryCopy setObject:v16 forKeyedSubscript:serviceCopy];
        }

        isInvalid = [v14 isInvalid];
        v18 = [dictionaryCopy objectForKeyedSubscript:serviceCopy];
        v19 = v18;
        if (isInvalid)
        {
          v20 = [v18 objectForKeyedSubscript:v13];

          if (!v20)
          {
            goto LABEL_13;
          }

          v19 = [dictionaryCopy objectForKeyedSubscript:serviceCopy];
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

- (void)limitDataInDictionary:(id)dictionary forService:(id)service
{
  dictionaryCopy = dictionary;
  serviceCopy = service;
  v7 = [dictionaryCopy objectForKeyedSubscript:serviceCopy];
  v8 = [v7 count];

  if (v8 >= 6)
  {
    do
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v9 = [dictionaryCopy objectForKeyedSubscript:serviceCopy];
      allKeys = [v9 allKeys];

      obj = allKeys;
      v32 = [allKeys countByEnumeratingWithState:&v33 objects:v37 count:16];
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
              v14 = [dictionaryCopy objectForKeyedSubscript:serviceCopy];
              v15 = [v14 objectForKeyedSubscript:v13];

              v16 = dictionaryCopy;
              v17 = serviceCopy;
              v18 = [dictionaryCopy objectForKeyedSubscript:serviceCopy];
              v19 = [v18 objectForKeyedSubscript:v11];

              options = [v15 options];
              expiryDate = [options expiryDate];

              options2 = [v19 options];
              expiryDate2 = [options2 expiryDate];

              if (expiryDate && (!expiryDate2 || [expiryDate compare:expiryDate2] == -1))
              {
                v24 = v13;

                v11 = v24;
              }

              dictionaryCopy = v16;
              serviceCopy = v17;
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

      v25 = [dictionaryCopy objectForKeyedSubscript:serviceCopy];
      [v25 removeObjectForKey:v11];

      v26 = [dictionaryCopy objectForKeyedSubscript:serviceCopy];
      v27 = [v26 count];
    }

    while (v27 > 5);
  }

  v28 = [dictionaryCopy objectForKeyedSubscript:serviceCopy];
  v29 = [v28 count];

  if (!v29)
  {
    [dictionaryCopy removeObjectForKey:serviceCopy];
  }
}

- (void)selectServicesForKeychainCacheFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  [(NSMutableDictionary *)self->_keychainCache removeAllObjects];
  allKeys = [dictionaryCopy allKeys];
  if ([allKeys count])
  {
    v5 = 3;
    do
    {
      v6 = [allKeys objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(allKeys, "count"))}];
      v7 = [dictionaryCopy objectForKeyedSubscript:v6];
      [(NSMutableDictionary *)self->_keychainCache setObject:v7 forKeyedSubscript:v6];

      --v5;
    }

    while (v5);
  }
}

- (id)selectDataForDestination:(id)destination
{
  destinationCopy = destination;
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
    selfCopy = self;
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
        allKeys = [v7 allKeys];
        v9 = [allKeys countByEnumeratingWithState:&v39 objects:v50 count:16];
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
                objc_enumerationMutation(allKeys);
              }

              v13 = [v7 objectForKeyedSubscript:*(*(&v39 + 1) + 8 * i)];
              if ([v13 shouldSendToDestination:destinationCopy])
              {
                options = [v13 options];
                destinationsMustBeInContacts = [options destinationsMustBeInContacts];

                if (destinationsMustBeInContacts)
                {
                  [v33 addObject:v13];
                }

                else
                {
                  (v34[2])(v34, v13);
                }
              }
            }

            v10 = [allKeys countByEnumeratingWithState:&v39 objects:v50 count:16];
          }

          while (v10);
        }

        v6 = v32 + 1;
        self = selfCopy;
      }

      while ((v32 + 1) != v31);
      v31 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v31);
  }

  if ([v33 count] && -[IDSFrequentURISuggester checkContactsForDestination:](self->_uriSuggester, "checkContactsForDestination:", destinationCopy))
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
    allKeys2 = [v21 allKeys];
    v23 = [allKeys2 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(allKeys2, "count"))}];
    v24 = [v21 objectForKeyedSubscript:v23];
    v25 = [v24 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v24, "count"))}];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)dataForService:(id)service identifier:(id)identifier
{
  serviceCopy = service;
  identifierCopy = identifier;
  v8 = [(NSMutableDictionary *)self->_keychainCache objectForKeyedSubscript:serviceCopy];

  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_keychainCache objectForKeyedSubscript:serviceCopy];
    v10 = [v9 objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v14 = 0;
    v12 = [(IDSOpportunisticCache *)self fetchOpportunisticCacheWithError:&v14];
    v9 = v12;
    if (v12)
    {
      v10 = [v12 objectForKeyedSubscript:serviceCopy];

      if (v10)
      {
        v13 = [v9 objectForKeyedSubscript:serviceCopy];
        v10 = [v13 objectForKeyedSubscript:identifierCopy];
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
  accessCount = [(IDSOpportunisticCache *)self accessCount];
  keychainCache = [(IDSOpportunisticCache *)self keychainCache];
  v6 = [NSString stringWithFormat:@"<%@:%p accessCount: %lld, cache: %@>", v3, self, accessCount, keychainCache];

  return v6;
}

@end