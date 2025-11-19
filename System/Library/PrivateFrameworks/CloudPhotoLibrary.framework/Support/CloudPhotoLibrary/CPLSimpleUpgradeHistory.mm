@interface CPLSimpleUpgradeHistory
+ (void)cleanupUnusedUpgradeHistoriesWithUsedBlock:(id)a3;
- (CPLSimpleUpgradeHistory)initWithLibraryIdentifier:(id)a3;
- (NSDate)lastCPLUpgradeDate;
- (NSDate)lastDBUpgradeDate;
- (NSDate)lastOSBuildUpgradeDate;
- (NSString)lastSeenCPLVersion;
- (NSString)lastSeenOSBuildVersion;
- (NSString)previousCPLVersion;
- (NSString)previousOSBuildVersion;
- (NSString)status;
- (id)_valueForKey:(id)a3 class:(Class)a4;
- (int64_t)lastSeenDBVersion;
- (int64_t)previousDBVersion;
- (void)_save;
- (void)noteDatabaseWasUpgradedToVersion:(int64_t)a3 fromVersion:(int64_t)a4;
@end

@implementation CPLSimpleUpgradeHistory

- (CPLSimpleUpgradeHistory)initWithLibraryIdentifier:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = CPLSimpleUpgradeHistory;
  v5 = [(CPLSimpleUpgradeHistory *)&v42 init];
  if (!v5)
  {
    goto LABEL_67;
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v4 copy];
  libraryIdentifier = v5->_libraryIdentifier;
  v5->_libraryIdentifier = v7;

  v9 = [(CPLSimpleUpgradeHistory *)v5 _defaultsKey];
  v10 = [v6 objectForKey:v9];

  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = sub_10017AAD4();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = v5->_libraryIdentifier;
      *buf = 138412546;
      v44 = v12;
      v45 = 2112;
      v46 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "At opening time, history for %@ is %@", buf, 0x16u);
    }
  }

  if ([v4 isEqualToString:CPLLibraryIdentifierSystemLibrary])
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v15 = objc_alloc_init(NSMutableDictionary);
    history = v5->_history;
    v5->_history = v15;

    v17 = [v6 objectForKey:@"_CPLLastOSBuildVersion"];
    if (v17)
    {
      [(NSMutableDictionary *)v5->_history setObject:v17 forKeyedSubscript:@"lastSeenOSBuildVersion"];
      [v6 removeObjectForKey:@"_CPLLastOSBuildVersion"];
    }

    v18 = [v6 objectForKey:@"_CPLPreviousOSBuildVersion"];
    if (v18)
    {
      [(NSMutableDictionary *)v5->_history setObject:v18 forKeyedSubscript:@"previousOSBuildVersion"];
      [v6 removeObjectForKey:@"_CPLPreviousOSBuildVersion"];
    }

    v19 = [v6 objectForKey:@"_CPLLastOSUpgrade"];
    if (v19)
    {
      [(NSMutableDictionary *)v5->_history setObject:v19 forKeyedSubscript:@"lastOSBuildUpgradeDate"];
      [v6 removeObjectForKey:@"_CPLLastOSUpgrade"];
    }

    v20 = [v6 objectForKey:@"_CPLLastDBVersion"];
    if (v20)
    {
      [(NSMutableDictionary *)v5->_history setObject:v20 forKeyedSubscript:@"lastSeenDBVersion"];
      [v6 removeObjectForKey:@"_CPLLastDBVersion"];
    }

    v21 = [v6 objectForKey:@"_CPLPreviousDBVersion"];
    if (v21)
    {
      [(NSMutableDictionary *)v5->_history setObject:v21 forKeyedSubscript:@"previousDBVersion"];
      [v6 removeObjectForKey:@"_CPLPreviousDBVersion"];
    }

    v22 = [v6 objectForKey:@"_CPLLastDBUpgrade"];
    if (v22)
    {
      [(NSMutableDictionary *)v5->_history setObject:v22 forKeyedSubscript:@"lastDBUpgradeDate"];
      [v6 removeObjectForKey:@"_CPLLastDBUpgrade"];
    }

    v23 = [v6 objectForKey:@"_CPLLastCPLVersion"];
    if (v23)
    {
      [(NSMutableDictionary *)v5->_history setObject:v23 forKeyedSubscript:@"lastSeenCPLVersion"];
      [v6 removeObjectForKey:@"_CPLLastCPLVersion"];
    }

    v24 = [v6 objectForKey:@"_CPLPreviousCPLVersion"];
    if (v24)
    {
      [(NSMutableDictionary *)v5->_history setObject:v24 forKeyedSubscript:@"previousCPLVersion"];
      [v6 removeObjectForKey:@"_CPLPreviousCPLVersion"];
    }

    v25 = [v6 objectForKey:@"_CPLLastCPLUpgrade"];
    if (v25)
    {
      [(NSMutableDictionary *)v5->_history setObject:v25 forKeyedSubscript:@"lastCPLUpgradeDate"];
      [v6 removeObjectForKey:@"_CPLLastCPLUpgrade"];
    }

    [(CPLSimpleUpgradeHistory *)v5 _save];
  }

  else
  {
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = [v10 mutableCopy];
    }

    else
    {
      v14 = objc_alloc_init(NSMutableDictionary);
    }

    v26 = v5->_history;
    v5->_history = v14;
  }

  v27 = __CPLBuildVersion();
  v28 = [(CPLSimpleUpgradeHistory *)v5 lastSeenOSBuildVersion];
  v29 = v28;
  if (v28 && v27)
  {
    if ([v28 isEqual:v27])
    {
      goto LABEL_50;
    }

LABEL_40:
    if ((_CPLSilentLogging & 1) == 0)
    {
      v30 = sub_10017AAD4();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = @"unknown";
        if (v29)
        {
          v31 = v29;
        }

        *buf = 138543618;
        v44 = v31;
        v45 = 2114;
        v46 = v27;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "OS Build version has changed since last launch, from %{public}@ to %{public}@", buf, 0x16u);
      }
    }

    [(NSMutableDictionary *)v5->_history setObject:v27 forKeyedSubscript:@"lastSeenOSBuildVersion"];
    v5->_versionHasChanged = 1;
    goto LABEL_47;
  }

  if (!(v28 | v27))
  {
    goto LABEL_50;
  }

  if (v27)
  {
    goto LABEL_40;
  }

  sub_1001C58A4(v5);
LABEL_47:
  v32 = +[NSDate date];
  [(NSMutableDictionary *)v5->_history setObject:v32 forKeyedSubscript:@"lastOSBuildUpgradeDate"];

  v33 = v5->_history;
  if (v29)
  {
    [(NSMutableDictionary *)v33 setObject:v29 forKeyedSubscript:@"previousOSBuildVersion"];
  }

  else
  {
    [(NSMutableDictionary *)v33 removeObjectForKey:@"previousOSBuildVersion"];
  }

LABEL_50:
  v34 = __CPLVersion();
  v35 = [(CPLSimpleUpgradeHistory *)v5 lastSeenCPLVersion];
  v36 = v35;
  if (v35 && v34)
  {
    if ([v35 isEqual:v34])
    {
      goto LABEL_64;
    }

LABEL_55:
    if ((_CPLSilentLogging & 1) == 0)
    {
      v37 = sub_10017AAD4();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = @"unknown";
        if (v36)
        {
          v38 = v36;
        }

        *buf = 138412546;
        v44 = v38;
        v45 = 2112;
        v46 = v34;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "CPL version has changed since last launch, from %@ to %@", buf, 0x16u);
      }
    }

    v5->_versionHasChanged = 1;
    [(NSMutableDictionary *)v5->_history setObject:v34 forKeyedSubscript:@"lastSeenCPLVersion"];
    v39 = +[NSDate date];
    [(NSMutableDictionary *)v5->_history setObject:v39 forKeyedSubscript:@"lastCPLUpgradeDate"];

    v40 = v5->_history;
    if (v36)
    {
      [(NSMutableDictionary *)v40 setObject:v36 forKeyedSubscript:@"previousCPLVersion"];
    }

    else
    {
      [(NSMutableDictionary *)v40 removeObjectForKey:@"previousCPLVersion"];
    }

    goto LABEL_64;
  }

  if (v35 | v34)
  {
    goto LABEL_55;
  }

LABEL_64:
  if (v5->_versionHasChanged)
  {
    [(CPLSimpleUpgradeHistory *)v5 _save];
  }

LABEL_67:
  return v5;
}

- (id)_valueForKey:(id)a3 class:(Class)a4
{
  v4 = [(NSMutableDictionary *)self->_history objectForKeyedSubscript:a3];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)noteDatabaseWasUpgradedToVersion:(int64_t)a3 fromVersion:(int64_t)a4
{
  v7 = [(CPLSimpleUpgradeHistory *)self lastSeenDBVersion];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a4;
  }

  if (v8 != a3)
  {
    v9 = [NSNumber numberWithLongLong:?];
    [(NSMutableDictionary *)self->_history setObject:v9 forKeyedSubscript:@"previousDBVersion"];

    v10 = +[NSDate date];
    [(NSMutableDictionary *)self->_history setObject:v10 forKeyedSubscript:@"lastDBUpgradeDate"];

    v11 = [NSNumber numberWithLongLong:a3];
    [(NSMutableDictionary *)self->_history setObject:v11 forKeyedSubscript:@"lastSeenDBVersion"];

    [(CPLSimpleUpgradeHistory *)self _save];
  }
}

- (NSString)lastSeenOSBuildVersion
{
  v3 = objc_opt_class();

  return [(CPLSimpleUpgradeHistory *)self _valueForKey:@"lastSeenOSBuildVersion" class:v3];
}

- (NSString)previousOSBuildVersion
{
  v3 = objc_opt_class();

  return [(CPLSimpleUpgradeHistory *)self _valueForKey:@"previousOSBuildVersion" class:v3];
}

- (NSDate)lastOSBuildUpgradeDate
{
  v3 = objc_opt_class();

  return [(CPLSimpleUpgradeHistory *)self _valueForKey:@"lastOSBuildUpgradeDate" class:v3];
}

- (int64_t)lastSeenDBVersion
{
  v2 = [(CPLSimpleUpgradeHistory *)self _valueForKey:@"lastSeenDBVersion" class:objc_opt_class()];
  v3 = [v2 longLongValue];

  return v3;
}

- (int64_t)previousDBVersion
{
  v2 = [(CPLSimpleUpgradeHistory *)self _valueForKey:@"previousDBVersion" class:objc_opt_class()];
  v3 = [v2 longLongValue];

  return v3;
}

- (NSDate)lastDBUpgradeDate
{
  v3 = objc_opt_class();

  return [(CPLSimpleUpgradeHistory *)self _valueForKey:@"lastDBUpgradeDate" class:v3];
}

- (NSString)lastSeenCPLVersion
{
  v3 = objc_opt_class();

  return [(CPLSimpleUpgradeHistory *)self _valueForKey:@"lastSeenCPLVersion" class:v3];
}

- (NSString)previousCPLVersion
{
  v3 = objc_opt_class();

  return [(CPLSimpleUpgradeHistory *)self _valueForKey:@"previousCPLVersion" class:v3];
}

- (NSDate)lastCPLUpgradeDate
{
  v3 = objc_opt_class();

  return [(CPLSimpleUpgradeHistory *)self _valueForKey:@"lastCPLUpgradeDate" class:v3];
}

- (NSString)status
{
  v3 = [[NSMutableArray alloc] initWithCapacity:3];
  v37 = +[NSDate date];
  v4 = [(CPLSimpleUpgradeHistory *)self lastOSBuildUpgradeDate];
  if (v4)
  {
    v5 = [NSString alloc];
    v6 = [(CPLSimpleUpgradeHistory *)self previousOSBuildVersion];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = @"unknown";
    }

    v9 = [(CPLSimpleUpgradeHistory *)self lastSeenOSBuildVersion];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = @"unknown";
    }

    v12 = [CPLDateFormatter stringFromDateAgo:v4 now:v37];
    v13 = [v5 initWithFormat:@"last upgrade from %@ to %@, %@", v8, v11, v12];
    [v3 addObject:v13];
  }

  v14 = [(CPLSimpleUpgradeHistory *)self lastCPLUpgradeDate];
  if (v14)
  {
    v15 = [NSString alloc];
    v16 = [(CPLSimpleUpgradeHistory *)self previousCPLVersion];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = @"unknown";
    }

    v19 = [(CPLSimpleUpgradeHistory *)self lastSeenCPLVersion];
    v20 = v19;
    v21 = v3;
    v22 = v4;
    if (v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = @"unknown";
    }

    [CPLDateFormatter stringFromDateAgo:v14 now:v37];
    v24 = v36 = v14;
    v35 = v23;
    v4 = v22;
    v3 = v21;
    v25 = [v15 initWithFormat:@"last CPL upgrade from %@ to %@, %@", v18, v35, v24];
    [v21 addObject:v25];

    v14 = v36;
  }

  v26 = [(CPLSimpleUpgradeHistory *)self lastDBUpgradeDate];
  if (v26)
  {
    v27 = [NSString alloc];
    v28 = [(CPLSimpleUpgradeHistory *)self previousDBVersion];
    v29 = [(CPLSimpleUpgradeHistory *)self lastSeenDBVersion];
    [CPLDateFormatter stringFromDateAgo:v26 now:v37];
    v31 = v30 = v14;
    v32 = [v27 initWithFormat:@"last DB upgrade from %lld to %lld, %@", v28, v29, v31];
    [v3 addObject:v32];

    v14 = v30;
  }

  v33 = [v3 componentsJoinedByString:@"\n"];

  return v33;
}

+ (void)cleanupUnusedUpgradeHistoriesWithUsedBlock:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [@"_CPLUpgradeHistory-" length];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v27 = v4;
  v6 = [v4 dictionaryRepresentation];
  v7 = [v6 allKeys];

  v8 = v7;
  v9 = [v7 countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v30 = 0;
    v11 = *v36;
    v12 = (v3 + 2);
    v28 = v3;
    v29 = *v36;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        if ([v14 hasPrefix:@"_CPLUpgradeHistory-"])
        {
          v15 = [v14 substringFromIndex:v5];
          if ((v3[2](v3, v15) & 1) == 0)
          {
            v16 = v12;
            v17 = v8;
            v18 = v5;
            v19 = v30;
            if ((_CPLSilentLogging & 1) == 0)
            {
              v20 = sub_10017AAD4();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v41 = v15;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Removing unused history for %@", buf, 0xCu);
              }
            }

            if (!v30)
            {
              v19 = objc_alloc_init(NSMutableArray);
            }

            v30 = v19;
            [v19 addObject:v14];
            v5 = v18;
            v8 = v17;
            v12 = v16;
            v3 = v28;
            v11 = v29;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v10);
  }

  else
  {
    v30 = 0;
  }

  v21 = v30;
  if ([v30 count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = v30;
    v23 = [v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v32;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [v27 removeObjectForKey:*(*(&v31 + 1) + 8 * j)];
        }

        v24 = [v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v24);
    }

    [v27 synchronize];
    v21 = v30;
  }
}

- (void)_save
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10017AAD4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      libraryIdentifier = self->_libraryIdentifier;
      history = self->_history;
      v9 = 138412546;
      v10 = libraryIdentifier;
      v11 = 2112;
      v12 = history;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Saving upgrade history for %@: %@", &v9, 0x16u);
    }
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = self->_history;
  v8 = [(CPLSimpleUpgradeHistory *)self _defaultsKey];
  [v6 setObject:v7 forKey:v8];
}

@end