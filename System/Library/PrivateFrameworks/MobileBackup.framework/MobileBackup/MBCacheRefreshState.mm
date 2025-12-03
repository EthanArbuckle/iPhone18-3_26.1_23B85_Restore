@interface MBCacheRefreshState
+ (BOOL)saveRefreshState:(id)state toCache:(id)cache error:(id *)error;
+ (id)loadFromCache:(id)cache;
- (BOOL)hasRefreshedSnapshotID:(id)d;
- (BOOL)isExpired;
- (MBCacheRefreshState)init;
- (MBCacheRefreshState)initWithCoder:(id)coder;
- (id)description;
- (id)queryCursorForSnapshotID:(id)d;
- (void)addQueryCursor:(id)cursor forSnapshotID:(id)d;
- (void)addRefreshedSnapshotID:(id)d;
- (void)encodeWithCoder:(id)coder;
- (void)forgetSnapshotID:(id)d;
@end

@implementation MBCacheRefreshState

- (MBCacheRefreshState)init
{
  v10.receiver = self;
  v10.super_class = MBCacheRefreshState;
  v2 = [(MBCacheRefreshState *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    queryCursorsBySnapshotIDs = v2->_queryCursorsBySnapshotIDs;
    v2->_queryCursorsBySnapshotIDs = v3;

    v5 = objc_opt_new();
    refreshedSnapshotIDs = v2->_refreshedSnapshotIDs;
    v2->_refreshedSnapshotIDs = v5;

    v7 = [NSDate dateWithTimeIntervalSinceNow:172800.0];
    expiryDate = v2->_expiryDate;
    v2->_expiryDate = v7;
  }

  return v2;
}

- (MBCacheRefreshState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = MBCacheRefreshState;
  v5 = [(MBCacheRefreshState *)&v17 init];
  if (v5)
  {
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v19[2] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v19 count:3];
    v7 = [NSSet setWithArray:v6];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"queryCursorsBySnapshotIDs"];
    queryCursorsBySnapshotIDs = v5->_queryCursorsBySnapshotIDs;
    v5->_queryCursorsBySnapshotIDs = v8;

    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v10 = [NSArray arrayWithObjects:v18 count:2];
    v11 = [NSSet setWithArray:v10];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"refreshedSnapshotIDs"];
    refreshedSnapshotIDs = v5->_refreshedSnapshotIDs;
    v5->_refreshedSnapshotIDs = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expiryDate"];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  queryCursorsBySnapshotIDs = self->_queryCursorsBySnapshotIDs;
  coderCopy = coder;
  [coderCopy encodeObject:queryCursorsBySnapshotIDs forKey:@"queryCursorsBySnapshotIDs"];
  [coderCopy encodeObject:self->_refreshedSnapshotIDs forKey:@"refreshedSnapshotIDs"];
  [coderCopy encodeObject:self->_expiryDate forKey:@"expiryDate"];
}

- (BOOL)isExpired
{
  v3 = +[NSDate now];
  [v3 timeIntervalSinceDate:self->_expiryDate];
  LOBYTE(self) = v4 > 0.0;

  return self;
}

- (void)forgetSnapshotID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    __assert_rtn("[MBCacheRefreshState forgetSnapshotID:]", "MBCacheRefreshState.m", 55, "snapshotID");
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_queryCursorsBySnapshotIDs removeObjectForKey:dCopy];
  [(NSMutableSet *)selfCopy->_refreshedSnapshotIDs removeObject:dCopy];
  objc_sync_exit(selfCopy);
}

- (void)addRefreshedSnapshotID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    __assert_rtn("[MBCacheRefreshState addRefreshedSnapshotID:]", "MBCacheRefreshState.m", 63, "snapshotID");
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_queryCursorsBySnapshotIDs removeObjectForKey:dCopy];
  [(NSMutableSet *)selfCopy->_refreshedSnapshotIDs addObject:dCopy];
  objc_sync_exit(selfCopy);
}

- (BOOL)hasRefreshedSnapshotID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    __assert_rtn("[MBCacheRefreshState hasRefreshedSnapshotID:]", "MBCacheRefreshState.m", 71, "snapshotID");
  }

  v5 = dCopy;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [(NSMutableSet *)selfCopy->_refreshedSnapshotIDs containsObject:v5];
  objc_sync_exit(selfCopy);

  return v7;
}

- (void)addQueryCursor:(id)cursor forSnapshotID:(id)d
{
  cursorCopy = cursor;
  dCopy = d;
  if (!cursorCopy)
  {
    __assert_rtn("[MBCacheRefreshState addQueryCursor:forSnapshotID:]", "MBCacheRefreshState.m", 78, "queryCursor");
  }

  if (!dCopy)
  {
    __assert_rtn("[MBCacheRefreshState addQueryCursor:forSnapshotID:]", "MBCacheRefreshState.m", 79, "snapshotID");
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_refreshedSnapshotIDs removeObject:dCopy];
  [(NSMutableDictionary *)selfCopy->_queryCursorsBySnapshotIDs setObject:cursorCopy forKeyedSubscript:dCopy];
  objc_sync_exit(selfCopy);
}

- (id)queryCursorForSnapshotID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    __assert_rtn("[MBCacheRefreshState queryCursorForSnapshotID:]", "MBCacheRefreshState.m", 87, "snapshotID");
  }

  v5 = dCopy;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [(NSMutableDictionary *)selfCopy->_queryCursorsBySnapshotIDs objectForKeyedSubscript:v5];
  objc_sync_exit(selfCopy);

  return v7;
}

- (id)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_opt_class();
  refreshedSnapshotIDs = selfCopy->_refreshedSnapshotIDs;
  v5 = [NSString stringWithFormat:@"<%@: %p expiryDate=%@, refreshedSnapshotIDs=%@, queryCursors=%@", v3, selfCopy, selfCopy->_expiryDate, refreshedSnapshotIDs, selfCopy->_queryCursorsBySnapshotIDs];;
  objc_sync_exit(selfCopy);

  return v5;
}

+ (id)loadFromCache:(id)cache
{
  v17 = 0;
  v3 = [cache propertyForKey:@"CacheRefreshState" error:&v17];
  v4 = v17;
  if (!v4)
  {
    if (!v3)
    {
      v7 = objc_opt_new();
      goto LABEL_19;
    }

    v8 = [[NSData alloc] initWithBase64EncodedString:v3 options:0];
    v16 = 0;
    v9 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v16];
    v10 = v16;
    if (v9)
    {
      isExpired = [v9 isExpired];
      v12 = MBGetDefaultLog();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (!isExpired)
      {
        if (v13)
        {
          *buf = 138412290;
          v19 = v9;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Loaded cache refresh state: %@", buf, 0xCu);
          _MBLog();
        }

        v14 = v9;
        goto LABEL_18;
      }

      if (v13)
      {
        *buf = 138412290;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Not using expired cache refresh state: %@", buf, 0xCu);
LABEL_13:
        _MBLog();
      }
    }

    else
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Not using invalid cache refresh state: %@", buf, 0xCu);
        goto LABEL_13;
      }
    }

    v14 = objc_opt_new();
LABEL_18:
    v7 = v14;

    goto LABEL_19;
  }

  v5 = v4;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to load cache refresh state from cache: %@", buf, 0xCu);
    _MBLog();
  }

  v7 = objc_opt_new();
LABEL_19:

  return v7;
}

+ (BOOL)saveRefreshState:(id)state toCache:(id)cache error:(id *)error
{
  stateCopy = state;
  cacheCopy = cache;
  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = stateCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Saving cache refresh state: %@", buf, 0xCu);
    _MBLog();
  }

  if (stateCopy)
  {
    v21 = 0;
    v10 = [NSKeyedArchiver archivedDataWithRootObject:stateCopy requiringSecureCoding:1 error:&v21];
    v11 = v21;
    if (v10)
    {
      v12 = [v10 base64EncodedStringWithOptions:0];
      v13 = [cacheCopy setProperty:v12 forKey:@"CacheRefreshState"];

      v14 = v13 == 0;
      if (error && v13)
      {
        v15 = v13;
        *error = v13;
      }
    }

    else
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v23 = stateCopy;
        v24 = 2112;
        v25 = v11;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Failed to serialize %@: %@", buf, 0x16u);
        _MBLog();
      }

      if (error)
      {
        v19 = v11;
        v14 = 0;
        *error = v11;
      }

      else
      {
        v14 = 0;
      }

      v13 = v11;
    }
  }

  else
  {
    v16 = [cacheCopy setProperty:0 forKey:@"CacheRefreshState"];
    v13 = v16;
    if (error)
    {
      v17 = v16;
      *error = v13;
    }

    v14 = v13 == 0;
  }

  return v14;
}

@end