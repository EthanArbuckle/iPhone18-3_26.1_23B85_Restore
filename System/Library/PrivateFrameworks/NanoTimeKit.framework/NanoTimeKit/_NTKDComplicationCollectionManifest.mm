@interface _NTKDComplicationCollectionManifest
+ (id)emptyManifest;
- (BOOL)addKey:(id)a3 supportForSampleTemplateForFamily:(int64_t)a4;
- (BOOL)removeSampleTemplatesForKey:(id)a3;
- (_NTKDComplicationCollectionManifest)init;
- (_NTKDComplicationCollectionManifest)initWithContentsOfFile:(id)a3;
- (void)setClientId:(id)a3 supportForComplicationDescriptorIdentifiers:(id)a4;
@end

@implementation _NTKDComplicationCollectionManifest

+ (id)emptyManifest
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (_NTKDComplicationCollectionManifest)init
{
  v10.receiver = self;
  v10.super_class = _NTKDComplicationCollectionManifest;
  v2 = [(_NTKDComplicationCollectionManifest *)&v10 init];
  if (v2)
  {
    v3 = +[NSMutableSet set];
    clients = v2->_clients;
    v2->_clients = v3;

    v5 = +[NSMutableDictionary dictionary];
    clientToSampleTemplateFamilies = v2->_clientToSampleTemplateFamilies;
    v2->_clientToSampleTemplateFamilies = v5;

    v7 = +[NSMutableDictionary dictionary];
    clientToComplicationDescriptorIdentifiers = v2->_clientToComplicationDescriptorIdentifiers;
    v2->_clientToComplicationDescriptorIdentifiers = v7;
  }

  return v2;
}

- (BOOL)addKey:(id)a3 supportForSampleTemplateForFamily:(int64_t)a4
{
  v6 = a3;
  clients = self->_clients;
  v8 = [v6 clientIdentifier];
  [(NSMutableSet *)clients addObject:v8];

  v9 = [(NSMutableDictionary *)self->_clientToSampleTemplateFamilies objectForKey:v6];
  if (!v9)
  {
    v9 = +[NSMutableArray array];
    [(NSMutableDictionary *)self->_clientToSampleTemplateFamilies setObject:v9 forKey:v6];
  }

  v10 = [NSNumber numberWithInteger:a4];
  v11 = [v9 containsObject:v10];

  if ((v11 & 1) == 0)
  {
    v12 = [NSNumber numberWithInteger:a4];
    [v9 addObject:v12];
  }

  return v11 ^ 1;
}

- (void)setClientId:(id)a3 supportForComplicationDescriptorIdentifiers:(id)a4
{
  v9 = a3;
  v6 = a4;
  [(NSMutableSet *)self->_clients addObject:v9];
  clientToComplicationDescriptorIdentifiers = self->_clientToComplicationDescriptorIdentifiers;
  if (v6)
  {
    v8 = [v6 copy];
    [(NSMutableDictionary *)clientToComplicationDescriptorIdentifiers setObject:v8 forKey:v9];
  }

  else
  {
    [(NSMutableDictionary *)clientToComplicationDescriptorIdentifiers removeObjectForKey:v9];
  }
}

- (BOOL)removeSampleTemplatesForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_clientToSampleTemplateFamilies objectForKey:v4];

  if (v5)
  {
    v6 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 clientIdentifier];
      v8 = [v4 complicationIdentifier];
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_NTKDComplicationCollectionManifest, removing sample data for %@, %@", &v10, 0x16u);
    }

    [(NSMutableDictionary *)self->_clientToSampleTemplateFamilies removeObjectForKey:v4];
  }

  return v5 != 0;
}

- (_NTKDComplicationCollectionManifest)initWithContentsOfFile:(id)a3
{
  v26 = a3;
  v4 = [(_NTKDComplicationCollectionManifest *)self init];
  if (v4)
  {
    v5 = [[NSDictionary alloc] initWithContentsOfFile:v26];
    if (v5)
    {
      v6 = v5;
      objc_opt_class();
      objc_opt_class();
      NTKValidateDictionary();
      v25 = v6;
      v30 = [v6 objectForKey:@"ClientToComplicationDescriptorIdentifiers"];
      if (v30)
      {
        objc_opt_class();
        objc_opt_class();
        NTKValidateDictionary();
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v7 = [v30 allKeys];
        v8 = [v7 countByEnumeratingWithState:&v37 objects:v44 count:16];
        if (v8)
        {
          v9 = *v38;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v38 != v9)
              {
                objc_enumerationMutation(v7);
              }

              v11 = *(*(&v37 + 1) + 8 * i);
              [(NSMutableSet *)v4->_clients addObject:v11];
              v12 = +[NSMutableArray array];
              [(NSMutableDictionary *)v4->_clientToComplicationDescriptorIdentifiers setObject:v12 forKey:v11];
              v13 = [v30 objectForKey:v11];
              objc_opt_class();
              NTKValidateArray();
              [v12 addObjectsFromArray:v13];
            }

            v8 = [v7 countByEnumeratingWithState:&v37 objects:v44 count:16];
          }

          while (v8);
        }

        v29 = [v25 objectForKey:@"ClientToSampleTemplate"];
        objc_opt_class();
        objc_opt_class();
        NTKValidateDictionary();
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_10002B478;
        v35[3] = &unk_10005DED0;
        v36 = v4;
        [v29 enumerateKeysAndObjectsUsingBlock:v35];
        v14 = v36;
      }

      else
      {
        v29 = [v6 objectForKey:@"ClientToSampleTemplate"];
        objc_opt_class();
        objc_opt_class();
        NTKValidateDictionary();
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v14 = [v29 allKeys];
        v15 = [v14 countByEnumeratingWithState:&v31 objects:v43 count:16];
        if (v15)
        {
          v28 = *v32;
          obj = v14;
          do
          {
            for (j = 0; j != v15; j = j + 1)
            {
              if (*v32 != v28)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v31 + 1) + 8 * j);
              [(NSMutableSet *)v4->_clients addObject:v17];
              v18 = +[NSMutableArray array];
              v19 = [v29 objectForKey:v17];
              objc_opt_class();
              NTKValidateArray();
              [v18 addObjectsFromArray:v19];
              v20 = [[NTKComplicationKey alloc] initWithClientIdentifier:v17 complicationIdentifier:CLKDefaultComplicationIdentifier];
              [(NSMutableDictionary *)v4->_clientToSampleTemplateFamilies setObject:v18 forKey:v20];
              v21 = [NSMutableArray arrayWithObject:CLKDefaultComplicationIdentifier];
              [(NSMutableDictionary *)v4->_clientToComplicationDescriptorIdentifiers setObject:v21 forKey:v17];
            }

            v14 = obj;
            v15 = [obj countByEnumeratingWithState:&v31 objects:v43 count:16];
          }

          while (v15);
        }
      }

      v5 = v25;
    }
  }

  v22 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    clientToComplicationDescriptorIdentifiers = v4->_clientToComplicationDescriptorIdentifiers;
    *buf = 138412290;
    v42 = clientToComplicationDescriptorIdentifiers;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Read manifest with descriptors %@", buf, 0xCu);
  }

  return v4;
}

@end