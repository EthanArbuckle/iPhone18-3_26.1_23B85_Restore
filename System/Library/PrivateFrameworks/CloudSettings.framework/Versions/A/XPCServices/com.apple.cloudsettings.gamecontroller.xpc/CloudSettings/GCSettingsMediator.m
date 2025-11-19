@interface GCSettingsMediator
- (GCSettingsMediator)init;
- (id)controllers;
- (id)copilotFusedControllers;
- (id)games;
- (id)mergeControllers:(id)a3;
- (id)mergeCopilotFusedControllers:(id)a3;
- (id)mergeGames:(id)a3;
- (id)mergeProfiles:(id)a3;
- (id)mergedDictForTombstonesLookup:(id)a3 dataLookup:(id)a4;
- (id)mergedTombstonesForRemoteDictionary:(id)a3 localDictionary:(id)a4;
- (id)profiles;
- (id)storeVersion;
- (void)registerKeys;
- (void)setControllers:(id)a3;
- (void)setCopilotFusedControllers:(id)a3;
- (void)setGames:(id)a3;
- (void)setProfiles:(id)a3;
- (void)setStoreVersion:(id)a3;
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

- (id)mergedTombstonesForRemoteDictionary:(id)a3 localDictionary:(id)a4
{
  v5 = a4;
  v6 = [a3 objectForKeyedSubscript:@"tombstones"];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  v35 = v5;
  v8 = [v5 objectForKeyedSubscript:@"tombstones"];
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
        v20 = [v19 creationDate];
        v21 = [v20 compare:v13];

        if (v21 == -1)
        {
          v24 = getGCSLogger();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v43 = v19;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "GCSettingsMediator::mergedTombstonesForRemoteDictionary:localDictionary - deleting tombstone %@", buf, 0xCu);
          }
        }

        else
        {
          v22 = [v19 identifier];
          v23 = [v14 objectForKeyedSubscript:v22];

          v24 = [v19 identifier];
          if (v23)
          {
            v25 = v17;
            v26 = v11;
            v27 = [v14 objectForKeyedSubscript:v24];

            v28 = [v27 creationDate];
            v29 = [v19 creationDate];
            v30 = [v28 compare:v29];

            if (v30 == -1)
            {
              v31 = [v19 identifier];
              [v14 setObject:v19 forKeyedSubscript:v31];
            }

            v24 = v27;
            v11 = v26;
            v17 = v25;
            v16 = v36;
          }

          else
          {
            [v14 setObject:v19 forKeyedSubscript:v24];
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

- (id)mergedDictForTombstonesLookup:(id)a3 dataLookup:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [v5 allValues];
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v34 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v27 + 1) + 8 * i) jsonObject];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v10);
  }

  v14 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = [v6 allValues];
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v33 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v23 + 1) + 8 * j) jsonObject];
        [v14 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v33 count:16];
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

- (void)setControllers:(id)a3
{
  v3 = a3;
  v4 = getGCSLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GCSettingsMediator::setControllers %@", &v6, 0xCu);
  }

  v5 = sub_100000E00();
  [v5 setObject:v3 forKey:@"controllers"];
}

- (id)mergeControllers:(id)a3
{
  v4 = a3;
  v5 = getGCSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v48 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GCSettingsMediator::mergeControllers %@", buf, 0xCu);
  }

  if (v4)
  {
    v6 = v4;
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

  v10 = [(GCSettingsMediator *)self controllers];
  v11 = [v10 objectForKeyedSubscript:@"data"];
  if (v11)
  {
    v8 = v11;
  }

  v39 = v6;
  v40 = self;
  v37 = v10;
  v12 = [(GCSettingsMediator *)self mergedTombstonesForRemoteDictionary:v6 localDictionary:v10];
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
        v19 = [v18 persistentIdentifier];
        v20 = [v12 objectForKeyedSubscript:v19];

        if (v20)
        {
          v21 = [v12 objectForKeyedSubscript:v19];
          v22 = [v21 creationDate];
          v23 = [v18 modifiedDate];
          v24 = [v22 compare:v23];

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

        v28 = [v14 objectForKeyedSubscript:v19];

        if (!v28)
        {
          [v14 setObject:v18 forKeyedSubscript:v19];
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

        v25 = [v14 objectForKeyedSubscript:v19];
        v29 = [v25 modifiedDate];
        v30 = [v18 modifiedDate];
        v31 = [v29 compare:v30];

        if (v31 == -1)
        {
          [v14 setObject:v18 forKeyedSubscript:v19];
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

  v34 = [(GCSettingsMediator *)v40 mergedDictForTombstonesLookup:v12 dataLookup:v14];
  [(GCSettingsMediator *)v40 setControllers:v34];

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

- (void)setGames:(id)a3
{
  v3 = a3;
  v4 = getGCSLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GCSettingsMediator::setGames %@", &v6, 0xCu);
  }

  v5 = sub_100000E00();
  [v5 setObject:v3 forKey:@"games"];
}

- (id)mergeGames:(id)a3
{
  v4 = a3;
  v5 = getGCSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v48 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GCSettingsMediator::mergeGames %@", buf, 0xCu);
  }

  if (v4)
  {
    v6 = v4;
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

  v10 = [(GCSettingsMediator *)self games];
  v11 = [v10 objectForKeyedSubscript:@"data"];
  if (v11)
  {
    v8 = v11;
  }

  v39 = v6;
  v40 = self;
  v37 = v10;
  v12 = [(GCSettingsMediator *)self mergedTombstonesForRemoteDictionary:v6 localDictionary:v10];
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
        v19 = [v18 bundleIdentifier];
        v20 = [v12 objectForKeyedSubscript:v19];

        if (v20)
        {
          v21 = [v12 objectForKeyedSubscript:v19];
          v22 = [v21 creationDate];
          v23 = [v18 modifiedDate];
          v24 = [v22 compare:v23];

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

        v28 = [v14 objectForKeyedSubscript:v19];

        if (!v28)
        {
          [v14 setObject:v18 forKeyedSubscript:v19];
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

        v25 = [v14 objectForKeyedSubscript:v19];
        v29 = [v25 modifiedDate];
        v30 = [v18 modifiedDate];
        v31 = [v29 compare:v30];

        if (v31 == -1)
        {
          [v14 setObject:v18 forKeyedSubscript:v19];
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

  v34 = [(GCSettingsMediator *)v40 mergedDictForTombstonesLookup:v12 dataLookup:v14];
  [(GCSettingsMediator *)v40 setGames:v34];

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

- (void)setProfiles:(id)a3
{
  v3 = a3;
  v4 = getGCSLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GCSettingsMediator::setProfiles %@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
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

- (id)mergeProfiles:(id)a3
{
  v4 = a3;
  v5 = getGCSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v49 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GCSettingsMediator::mergeProfiles %@", buf, 0xCu);
  }

  if (v4)
  {
    v6 = v4;
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

  v10 = [(GCSettingsMediator *)self profiles];
  v11 = [v10 objectForKeyedSubscript:@"data"];
  if (v11)
  {
    v8 = v11;
  }

  v40 = v6;
  v41 = self;
  v38 = v10;
  v12 = [(GCSettingsMediator *)self mergedTombstonesForRemoteDictionary:v6 localDictionary:v10];
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
        v19 = [v18 uuid];
        v20 = [v19 UUIDString];

        v21 = [v12 objectForKeyedSubscript:v20];

        if (v21)
        {
          v22 = [v12 objectForKeyedSubscript:v20];
          v23 = [v22 creationDate];
          v24 = [v18 modifiedDate];
          v25 = [v23 compare:v24];

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

        v29 = [v14 objectForKeyedSubscript:v20];

        if (!v29)
        {
          [v14 setObject:v18 forKeyedSubscript:v20];
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

        v26 = [v14 objectForKeyedSubscript:v20];
        v30 = [v26 modifiedDate];
        v31 = [v18 modifiedDate];
        v32 = [v30 compare:v31];

        if (v32 == -1)
        {
          [v14 setObject:v18 forKeyedSubscript:v20];
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

  v35 = [(GCSettingsMediator *)v41 mergedDictForTombstonesLookup:v12 dataLookup:v14];
  [(GCSettingsMediator *)v41 setProfiles:v35];

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

- (void)setCopilotFusedControllers:(id)a3
{
  v3 = a3;
  v4 = getGCSLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GCSettingsMediator::setCopilotFusedControllers %@", &v6, 0xCu);
  }

  v5 = sub_100000E00();
  [v5 setObject:v3 forKey:@"copilotFusedControllers"];
}

- (id)mergeCopilotFusedControllers:(id)a3
{
  v4 = a3;
  v5 = getGCSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v48 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GCSettingsMediator::mergeCopilotFusedControllers %@", buf, 0xCu);
  }

  if (v4)
  {
    v6 = v4;
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

  v10 = [(GCSettingsMediator *)self copilotFusedControllers];
  v11 = [v10 objectForKeyedSubscript:@"data"];
  if (v11)
  {
    v8 = v11;
  }

  v39 = v6;
  v40 = self;
  v37 = v10;
  v12 = [(GCSettingsMediator *)self mergedTombstonesForRemoteDictionary:v6 localDictionary:v10];
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
        v19 = [v18 fusedControllerIdentifier];
        v20 = [v12 objectForKeyedSubscript:v19];

        if (v20)
        {
          v21 = [v12 objectForKeyedSubscript:v19];
          v22 = [v21 creationDate];
          v23 = [v18 modifiedDate];
          v24 = [v22 compare:v23];

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

        v28 = [v14 objectForKeyedSubscript:v19];

        if (!v28)
        {
          [v14 setObject:v18 forKeyedSubscript:v19];
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

        v25 = [v14 objectForKeyedSubscript:v19];
        v29 = [v25 modifiedDate];
        v30 = [v18 modifiedDate];
        v31 = [v29 compare:v30];

        if (v31 == -1)
        {
          [v14 setObject:v18 forKeyedSubscript:v19];
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

  v34 = [(GCSettingsMediator *)v40 mergedDictForTombstonesLookup:v12 dataLookup:v14];
  [(GCSettingsMediator *)v40 setCopilotFusedControllers:v34];

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

- (void)setStoreVersion:(id)a3
{
  v3 = a3;
  v4 = getGCSLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GCSettingsMediator::setStoreVersion %@", &v6, 0xCu);
  }

  v5 = sub_100000E00();
  [v5 setObject:v3 forKey:@"settingsVersion"];
}

@end