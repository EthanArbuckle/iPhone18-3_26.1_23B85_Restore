@interface GCSettingsMediator
- (GCSettingsMediator)init;
- (id)controllers;
- (id)copilotFusedControllers;
- (id)games;
- (id)mergeControllers:(id)controllers;
- (id)mergeCopilotFusedControllers:(id)controllers;
- (id)mergeGames:(id)games;
- (id)mergeProfiles:(id)profiles;
- (id)mergedDictForTombstonesLookup:(id)lookup dataLookup:(id)dataLookup;
- (id)mergedTombstonesForRemoteDictionary:(id)dictionary localDictionary:(id)localDictionary;
- (id)profiles;
- (id)storeVersion;
- (void)registerKeys;
- (void)setControllers:(id)controllers;
- (void)setCopilotFusedControllers:(id)controllers;
- (void)setGames:(id)games;
- (void)setProfiles:(id)profiles;
- (void)setStoreVersion:(id)version;
@end

@implementation GCSettingsMediator

- (GCSettingsMediator)init
{
  v3.receiver = self;
  v3.super_class = GCSettingsMediator;
  return [(GCSettingsMediator *)&v3 init];
}

- (void)registerKeys
{
  v3 = getGCSLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "GCSettingsMediator::registerKeys", v12, 2u);
  }

  [(GCSettingsMediator *)self registerKey:@"settingsVersion" getter:"storeVersion" setter:"setStoreVersion:"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(GCSettingsMediator *)self registerKey:@"controllers" getter:"controllers" setter:"setControllers:" merger:"mergeControllers:" type:v5];

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [(GCSettingsMediator *)self registerKey:@"games" getter:"games" setter:"setGames:" merger:"mergeGames:" type:v7];

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [(GCSettingsMediator *)self registerKey:@"copilotFusedControllers" getter:"copilotFusedControllers" setter:"setCopilotFusedControllers:" merger:"mergeCopilotFusedControllers:" type:v9];

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [(GCSettingsMediator *)self registerKey:@"profiles" getter:"profiles" setter:"setProfiles:" merger:"mergeProfiles:" type:v11];
}

- (id)mergedTombstonesForRemoteDictionary:(id)dictionary localDictionary:(id)localDictionary
{
  localDictionaryCopy = localDictionary;
  v6 = [dictionary objectForKeyedSubscript:@"tombstones"];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  v35 = localDictionaryCopy;
  v8 = [localDictionaryCopy objectForKeyedSubscript:@"tombstones"];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  v33 = v9;
  v34 = v7;
  v10 = [v7 arrayByAddingObjectsFromArray:?];
  v11 = &getGCSLogger_ptr;
  +[GCSTombstone timeToLiveSeconds];
  v13 = [NSDate dateWithTimeIntervalSinceNow:-v12];
  v14 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v10;
  v15 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v39;
    do
    {
      v18 = 0;
      v36 = v16;
      do
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = [objc_alloc(v11[34]) initWithJSONObject:*(*(&v38 + 1) + 8 * v18)];
        creationDate = [v19 creationDate];
        v21 = [creationDate compare:v13];

        if (v21 == -1)
        {
          identifier2 = getGCSLogger();
          if (os_log_type_enabled(identifier2, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v43 = v19;
            _os_log_impl(&_mh_execute_header, identifier2, OS_LOG_TYPE_INFO, "GCSettingsMediator::mergedTombstonesForRemoteDictionary:localDictionary - deleting tombstone %@", buf, 0xCu);
          }
        }

        else
        {
          identifier = [v19 identifier];
          v23 = [v14 objectForKeyedSubscript:identifier];

          identifier2 = [v19 identifier];
          if (v23)
          {
            v25 = v17;
            v26 = v11;
            v27 = [v14 objectForKeyedSubscript:identifier2];

            creationDate2 = [v27 creationDate];
            creationDate3 = [v19 creationDate];
            v30 = [creationDate2 compare:creationDate3];

            if (v30 == -1)
            {
              identifier3 = [v19 identifier];
              [v14 setObject:v19 forKeyedSubscript:identifier3];
            }

            identifier2 = v27;
            v11 = v26;
            v17 = v25;
            v16 = v36;
          }

          else
          {
            [v14 setObject:v19 forKeyedSubscript:identifier2];
          }
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v16);
  }

  return v14;
}

- (id)mergedDictForTombstonesLookup:(id)lookup dataLookup:(id)dataLookup
{
  lookupCopy = lookup;
  dataLookupCopy = dataLookup;
  v7 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  allValues = [lookupCopy allValues];
  v9 = [allValues countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        jsonObject = [*(*(&v27 + 1) + 8 * i) jsonObject];
        [v7 addObject:jsonObject];
      }

      v10 = [allValues countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v10);
  }

  v14 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  allValues2 = [dataLookupCopy allValues];
  v16 = [allValues2 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(allValues2);
        }

        jsonObject2 = [*(*(&v23 + 1) + 8 * j) jsonObject];
        [v14 addObject:jsonObject2];
      }

      v17 = [allValues2 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v17);
  }

  v31[0] = @"tombstones";
  v31[1] = @"data";
  v32[0] = v7;
  v32[1] = v14;
  v21 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];

  return v21;
}

- (id)controllers
{
  v2 = getGCSLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = sub_100000E00();
    v4 = [v3 objectForKey:@"controllers"];
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "GCSettingsMediator::controllers %@", &v8, 0xCu);
  }

  v5 = sub_100000E00();
  v6 = [v5 objectForKey:@"controllers"];

  return v6;
}

- (void)setControllers:(id)controllers
{
  controllersCopy = controllers;
  v4 = getGCSLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = controllersCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GCSettingsMediator::setControllers %@", &v6, 0xCu);
  }

  v5 = sub_100000E00();
  [v5 setObject:controllersCopy forKey:@"controllers"];
}

- (id)mergeControllers:(id)controllers
{
  controllersCopy = controllers;
  v5 = getGCSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v48 = controllersCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GCSettingsMediator::mergeControllers %@", buf, 0xCu);
  }

  if (controllersCopy)
  {
    v6 = controllersCopy;
  }

  else
  {
    v6 = &__NSDictionary0__struct;
  }

  v7 = [v6 objectForKeyedSubscript:@"data"];
  v8 = &__NSArray0__struct;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  controllers = [(GCSettingsMediator *)self controllers];
  v11 = [controllers objectForKeyedSubscript:@"data"];
  if (v11)
  {
    v8 = v11;
  }

  v39 = v6;
  selfCopy = self;
  v37 = controllers;
  v12 = [(GCSettingsMediator *)self mergedTombstonesForRemoteDictionary:v6 localDictionary:controllers];
  v13 = getGCSLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v48 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "GCSettingsMediator::mergeControllers tombstoneLookup %@", buf, 0xCu);
  }

  v14 = objc_opt_new();
  v36 = v8;
  v38 = v9;
  [v8 arrayByAddingObjectsFromArray:v9];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v46 = 0u;
  v15 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v15)
  {
    v16 = v15;
    v42 = *v44;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v44 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v18 = [[GCSController alloc] initWithJSONObject:*(*(&v43 + 1) + 8 * i)];
        persistentIdentifier = [v18 persistentIdentifier];
        v20 = [v12 objectForKeyedSubscript:persistentIdentifier];

        if (v20)
        {
          v21 = [v12 objectForKeyedSubscript:persistentIdentifier];
          creationDate = [v21 creationDate];
          modifiedDate = [v18 modifiedDate];
          v24 = [creationDate compare:modifiedDate];

          if (v24 != -1)
          {
            v25 = getGCSLogger();
            if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              goto LABEL_30;
            }

            *buf = 138412290;
            v48 = v18;
            v26 = v25;
            v27 = "GCSettingsMediator::mergeControllers valid tombstone for dataObj %@";
LABEL_29:
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, v27, buf, 0xCu);
            goto LABEL_30;
          }
        }

        v28 = [v14 objectForKeyedSubscript:persistentIdentifier];

        if (!v28)
        {
          [v14 setObject:v18 forKeyedSubscript:persistentIdentifier];
          v25 = getGCSLogger();
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            goto LABEL_30;
          }

          *buf = 138412290;
          v48 = v18;
          v26 = v25;
          v27 = "GCSettingsMediator::mergeControllers saving dataObj %@";
          goto LABEL_29;
        }

        v25 = [v14 objectForKeyedSubscript:persistentIdentifier];
        modifiedDate2 = [v25 modifiedDate];
        modifiedDate3 = [v18 modifiedDate];
        v31 = [modifiedDate2 compare:modifiedDate3];

        if (v31 == -1)
        {
          [v14 setObject:v18 forKeyedSubscript:persistentIdentifier];
          v32 = getGCSLogger();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v48 = v25;
            v49 = 2112;
            v50 = v18;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "GCSettingsMediator::mergeControllers overwriting dataObj %@ with dataObj %@", buf, 0x16u);
          }
        }

LABEL_30:
      }

      v16 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v16);
  }

  v33 = getGCSLogger();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v48 = v14;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "GCSettingsMediator::mergeControllers dataLookup %@", buf, 0xCu);
  }

  v34 = [(GCSettingsMediator *)selfCopy mergedDictForTombstonesLookup:v12 dataLookup:v14];
  [(GCSettingsMediator *)selfCopy setControllers:v34];

  return v34;
}

- (id)games
{
  v2 = getGCSLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = sub_100000E00();
    v4 = [v3 objectForKey:@"games"];
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "GCSettingsMediator::games %@", &v8, 0xCu);
  }

  v5 = sub_100000E00();
  v6 = [v5 objectForKey:@"games"];

  return v6;
}

- (void)setGames:(id)games
{
  gamesCopy = games;
  v4 = getGCSLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = gamesCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GCSettingsMediator::setGames %@", &v6, 0xCu);
  }

  v5 = sub_100000E00();
  [v5 setObject:gamesCopy forKey:@"games"];
}

- (id)mergeGames:(id)games
{
  gamesCopy = games;
  v5 = getGCSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v48 = gamesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GCSettingsMediator::mergeGames %@", buf, 0xCu);
  }

  if (gamesCopy)
  {
    v6 = gamesCopy;
  }

  else
  {
    v6 = &__NSDictionary0__struct;
  }

  v7 = [v6 objectForKeyedSubscript:@"data"];
  v8 = &__NSArray0__struct;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  games = [(GCSettingsMediator *)self games];
  v11 = [games objectForKeyedSubscript:@"data"];
  if (v11)
  {
    v8 = v11;
  }

  v39 = v6;
  selfCopy = self;
  v37 = games;
  v12 = [(GCSettingsMediator *)self mergedTombstonesForRemoteDictionary:v6 localDictionary:games];
  v13 = getGCSLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v48 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "GCSettingsMediator::mergeGames tombstoneLookup %@", buf, 0xCu);
  }

  v14 = objc_opt_new();
  v36 = v8;
  v38 = v9;
  [v8 arrayByAddingObjectsFromArray:v9];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v46 = 0u;
  v15 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v15)
  {
    v16 = v15;
    v42 = *v44;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v44 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v18 = [[GCSGame alloc] initWithJSONObject:*(*(&v43 + 1) + 8 * i)];
        bundleIdentifier = [v18 bundleIdentifier];
        v20 = [v12 objectForKeyedSubscript:bundleIdentifier];

        if (v20)
        {
          v21 = [v12 objectForKeyedSubscript:bundleIdentifier];
          creationDate = [v21 creationDate];
          modifiedDate = [v18 modifiedDate];
          v24 = [creationDate compare:modifiedDate];

          if (v24 != -1)
          {
            v25 = getGCSLogger();
            if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              goto LABEL_30;
            }

            *buf = 138412290;
            v48 = v18;
            v26 = v25;
            v27 = "GCSettingsMediator::mergeGames valid tombstone for dataObj %@";
LABEL_29:
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, v27, buf, 0xCu);
            goto LABEL_30;
          }
        }

        v28 = [v14 objectForKeyedSubscript:bundleIdentifier];

        if (!v28)
        {
          [v14 setObject:v18 forKeyedSubscript:bundleIdentifier];
          v25 = getGCSLogger();
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            goto LABEL_30;
          }

          *buf = 138412290;
          v48 = v18;
          v26 = v25;
          v27 = "GCSettingsMediator::mergeGames saving dataObj %@";
          goto LABEL_29;
        }

        v25 = [v14 objectForKeyedSubscript:bundleIdentifier];
        modifiedDate2 = [v25 modifiedDate];
        modifiedDate3 = [v18 modifiedDate];
        v31 = [modifiedDate2 compare:modifiedDate3];

        if (v31 == -1)
        {
          [v14 setObject:v18 forKeyedSubscript:bundleIdentifier];
          v32 = getGCSLogger();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v48 = v25;
            v49 = 2112;
            v50 = v18;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "GCSettingsMediator::mergeGames overwriting dataObj %@ with dataObj %@", buf, 0x16u);
          }
        }

LABEL_30:
      }

      v16 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v16);
  }

  v33 = getGCSLogger();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v48 = v14;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "GCSettingsMediator::mergeGames dataLookup %@", buf, 0xCu);
  }

  v34 = [(GCSettingsMediator *)selfCopy mergedDictForTombstonesLookup:v12 dataLookup:v14];
  [(GCSettingsMediator *)selfCopy setGames:v34];

  return v34;
}

- (id)profiles
{
  v2 = getGCSLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = sub_100000E00();
    v4 = [v3 objectForKey:@"profiles"];
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "GCSettingsMediator::profiles %@", &v8, 0xCu);
  }

  v5 = sub_100000E00();
  v6 = [v5 objectForKey:@"profiles"];

  return v6;
}

- (void)setProfiles:(id)profiles
{
  profilesCopy = profiles;
  v4 = getGCSLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = profilesCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GCSettingsMediator::setProfiles %@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = profilesCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = getGCSLogger();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v19 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "GCSettingsMediator::setProfiles - element %@", buf, 0xCu);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = sub_100000E00();
  [v12 setObject:v5 forKey:@"profiles"];
}

- (id)mergeProfiles:(id)profiles
{
  profilesCopy = profiles;
  v5 = getGCSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v49 = profilesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GCSettingsMediator::mergeProfiles %@", buf, 0xCu);
  }

  if (profilesCopy)
  {
    v6 = profilesCopy;
  }

  else
  {
    v6 = &__NSDictionary0__struct;
  }

  v7 = [v6 objectForKeyedSubscript:@"data"];
  v8 = &__NSArray0__struct;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  profiles = [(GCSettingsMediator *)self profiles];
  v11 = [profiles objectForKeyedSubscript:@"data"];
  if (v11)
  {
    v8 = v11;
  }

  v40 = v6;
  selfCopy = self;
  v38 = profiles;
  v12 = [(GCSettingsMediator *)self mergedTombstonesForRemoteDictionary:v6 localDictionary:profiles];
  v13 = getGCSLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v49 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "GCSettingsMediator::mergeProfiles tombstoneLookup %@", buf, 0xCu);
  }

  v14 = objc_opt_new();
  v37 = v8;
  v39 = v9;
  [v8 arrayByAddingObjectsFromArray:v9];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v47 = 0u;
  v15 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v15)
  {
    v16 = v15;
    v43 = *v45;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v45 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v18 = [[GCSProfile alloc] initWithJSONObject:*(*(&v44 + 1) + 8 * i)];
        uuid = [v18 uuid];
        uUIDString = [uuid UUIDString];

        v21 = [v12 objectForKeyedSubscript:uUIDString];

        if (v21)
        {
          v22 = [v12 objectForKeyedSubscript:uUIDString];
          creationDate = [v22 creationDate];
          modifiedDate = [v18 modifiedDate];
          v25 = [creationDate compare:modifiedDate];

          if (v25 != -1)
          {
            v26 = getGCSLogger();
            if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              goto LABEL_30;
            }

            *buf = 138412290;
            v49 = v18;
            v27 = v26;
            v28 = "GCSettingsMediator::mergeProfiles valid tombstone for dataObj %@";
LABEL_29:
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, v28, buf, 0xCu);
            goto LABEL_30;
          }
        }

        v29 = [v14 objectForKeyedSubscript:uUIDString];

        if (!v29)
        {
          [v14 setObject:v18 forKeyedSubscript:uUIDString];
          v26 = getGCSLogger();
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            goto LABEL_30;
          }

          *buf = 138412290;
          v49 = v18;
          v27 = v26;
          v28 = "GCSettingsMediator::mergeProfiles saving dataObj %@";
          goto LABEL_29;
        }

        v26 = [v14 objectForKeyedSubscript:uUIDString];
        modifiedDate2 = [v26 modifiedDate];
        modifiedDate3 = [v18 modifiedDate];
        v32 = [modifiedDate2 compare:modifiedDate3];

        if (v32 == -1)
        {
          [v14 setObject:v18 forKeyedSubscript:uUIDString];
          v33 = getGCSLogger();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v49 = v26;
            v50 = 2112;
            v51 = v18;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "GCSettingsMediator::mergeProfiles overwriting dataObj %@ with dataObj %@", buf, 0x16u);
          }
        }

LABEL_30:
      }

      v16 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v16);
  }

  v34 = getGCSLogger();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v49 = v14;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "GCSettingsMediator::mergeProfiles dataLookup %@", buf, 0xCu);
  }

  v35 = [(GCSettingsMediator *)selfCopy mergedDictForTombstonesLookup:v12 dataLookup:v14];
  [(GCSettingsMediator *)selfCopy setProfiles:v35];

  return v35;
}

- (id)copilotFusedControllers
{
  v2 = getGCSLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = sub_100000E00();
    v4 = [v3 objectForKey:@"copilotFusedControllers"];
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "GCSettingsMediator::copilotFusedControllers %@", &v8, 0xCu);
  }

  v5 = sub_100000E00();
  v6 = [v5 objectForKey:@"copilotFusedControllers"];

  return v6;
}

- (void)setCopilotFusedControllers:(id)controllers
{
  controllersCopy = controllers;
  v4 = getGCSLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = controllersCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GCSettingsMediator::setCopilotFusedControllers %@", &v6, 0xCu);
  }

  v5 = sub_100000E00();
  [v5 setObject:controllersCopy forKey:@"copilotFusedControllers"];
}

- (id)mergeCopilotFusedControllers:(id)controllers
{
  controllersCopy = controllers;
  v5 = getGCSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v48 = controllersCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GCSettingsMediator::mergeCopilotFusedControllers %@", buf, 0xCu);
  }

  if (controllersCopy)
  {
    v6 = controllersCopy;
  }

  else
  {
    v6 = &__NSDictionary0__struct;
  }

  v7 = [v6 objectForKeyedSubscript:@"data"];
  v8 = &__NSArray0__struct;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  copilotFusedControllers = [(GCSettingsMediator *)self copilotFusedControllers];
  v11 = [copilotFusedControllers objectForKeyedSubscript:@"data"];
  if (v11)
  {
    v8 = v11;
  }

  v39 = v6;
  selfCopy = self;
  v37 = copilotFusedControllers;
  v12 = [(GCSettingsMediator *)self mergedTombstonesForRemoteDictionary:v6 localDictionary:copilotFusedControllers];
  v13 = getGCSLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v48 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "GCSettingsMediator::mergeCopilotFusedControllers tombstoneLookup %@", buf, 0xCu);
  }

  v14 = objc_opt_new();
  v36 = v8;
  v38 = v9;
  [v8 arrayByAddingObjectsFromArray:v9];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v46 = 0u;
  v15 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v15)
  {
    v16 = v15;
    v42 = *v44;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v44 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v18 = [[GCSCopilotFusedController alloc] initWithJSONObject:*(*(&v43 + 1) + 8 * i)];
        fusedControllerIdentifier = [v18 fusedControllerIdentifier];
        v20 = [v12 objectForKeyedSubscript:fusedControllerIdentifier];

        if (v20)
        {
          v21 = [v12 objectForKeyedSubscript:fusedControllerIdentifier];
          creationDate = [v21 creationDate];
          modifiedDate = [v18 modifiedDate];
          v24 = [creationDate compare:modifiedDate];

          if (v24 != -1)
          {
            v25 = getGCSLogger();
            if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              goto LABEL_30;
            }

            *buf = 138412290;
            v48 = v18;
            v26 = v25;
            v27 = "GCSettingsMediator::mergeCopilotFusedControllers valid tombstone for dataObj %@";
LABEL_29:
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, v27, buf, 0xCu);
            goto LABEL_30;
          }
        }

        v28 = [v14 objectForKeyedSubscript:fusedControllerIdentifier];

        if (!v28)
        {
          [v14 setObject:v18 forKeyedSubscript:fusedControllerIdentifier];
          v25 = getGCSLogger();
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            goto LABEL_30;
          }

          *buf = 138412290;
          v48 = v18;
          v26 = v25;
          v27 = "GCSettingsMediator::mergeCopilotFusedControllers saving dataObj %@";
          goto LABEL_29;
        }

        v25 = [v14 objectForKeyedSubscript:fusedControllerIdentifier];
        modifiedDate2 = [v25 modifiedDate];
        modifiedDate3 = [v18 modifiedDate];
        v31 = [modifiedDate2 compare:modifiedDate3];

        if (v31 == -1)
        {
          [v14 setObject:v18 forKeyedSubscript:fusedControllerIdentifier];
          v32 = getGCSLogger();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v48 = v25;
            v49 = 2112;
            v50 = v18;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "GCSettingsMediator::mergeCopilotFusedControllers overwriting dataObj %@ with dataObj %@", buf, 0x16u);
          }
        }

LABEL_30:
      }

      v16 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v16);
  }

  v33 = getGCSLogger();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v48 = v14;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "GCSettingsMediator::mergeCopilotFusedControllers dataLookup %@", buf, 0xCu);
  }

  v34 = [(GCSettingsMediator *)selfCopy mergedDictForTombstonesLookup:v12 dataLookup:v14];
  [(GCSettingsMediator *)selfCopy setCopilotFusedControllers:v34];

  return v34;
}

- (id)storeVersion
{
  v2 = getGCSLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = sub_100000E00();
    v4 = [v3 objectForKey:@"settingsVersion"];
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "GCSettingsMediator::storeVersion %@", &v8, 0xCu);
  }

  v5 = sub_100000E00();
  v6 = [v5 objectForKey:@"settingsVersion"];

  return v6;
}

- (void)setStoreVersion:(id)version
{
  versionCopy = version;
  v4 = getGCSLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = versionCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GCSettingsMediator::setStoreVersion %@", &v6, 0xCu);
  }

  v5 = sub_100000E00();
  [v5 setObject:versionCopy forKey:@"settingsVersion"];
}

@end