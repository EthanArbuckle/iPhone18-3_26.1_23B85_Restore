@interface GEOMAResourceInfo
+ (id)baseURLForType:(unint64_t)type;
+ (id)maResourcesFolder;
- (BOOL)isExpired;
- (GEOMAResourceInfo)initWithType:(unint64_t)type overrides:(id)overrides;
- (double)lastAccessedTime;
- (id)_backgroundDownloadOptions;
- (id)baseURL;
- (id)description;
- (id)installedResources;
- (id)query;
- (void)_listResources:(BOOL)resources queue:(id)queue results:(id)results;
- (void)listResources:(BOOL)resources queue:(id)queue results:(id)results;
- (void)updateLastAccessedTime;
@end

@implementation GEOMAResourceInfo

- (id)description
{
  v3 = +[NSMutableString string];
  [v3 appendString:@"<"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendString:v5];

  [v3 appendFormat:@" %p -", self];
  queryParameters = self->_queryParameters;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100036EE8;
  v9[3] = &unk_100082B68;
  v7 = v3;
  v10 = v7;
  [(NSDictionary *)queryParameters enumerateKeysAndObjectsUsingBlock:v9];
  [v7 appendString:@">"];

  return v7;
}

- (void)_listResources:(BOOL)resources queue:(id)queue results:(id)results
{
  queueCopy = queue;
  resultsCopy = results;
  selfCopy = self;
  installedResources = [(GEOMAResourceInfo *)selfCopy installedResources];
  v12 = installedResources;
  if (resources || ![installedResources count])
  {
    [(GEOMAResourceInfo *)selfCopy query];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100037240;
    v15[3] = &unk_100082C28;
    v16 = v15[4] = selfCopy;
    v17 = queueCopy;
    v18 = v12;
    v20 = resultsCopy;
    v19 = selfCopy;
    v14 = v16;
    [v14 queryMetaDataWithError:v15];
  }

  else
  {
    v13 = sub_100020BFC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138478083;
      v22 = selfCopy;
      v23 = 2113;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "MA query found installed resources and checkForUpdates = NO; %{private}@ resources: %{private}@", buf, 0x16u);
    }

    v14 = [v12 sortedArrayUsingSelector:"compare:"];
    (*(resultsCopy + 2))(resultsCopy, 0, v14, 0);
  }
}

- (void)listResources:(BOOL)resources queue:(id)queue results:(id)results
{
  queueCopy = queue;
  resultsCopy = results;
  if (([(GEOMAResourceInfo *)self conformsToProtocol:&OBJC_PROTOCOL___GEOMAResourceInfo]& 1) != 0)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100037748;
    v10[3] = &unk_100082BB0;
    v10[4] = self;
    resourcesCopy = resources;
    v11 = queueCopy;
    v12 = resultsCopy;
    dispatch_async(v11, v10);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: [self conformsToProtocol:@protocol(GEOMAResourceInfo)]", buf, 2u);
  }
}

- (id)installedResources
{
  if (([(GEOMAResourceInfo *)self conformsToProtocol:&OBJC_PROTOCOL___GEOMAResourceInfo]& 1) != 0)
  {
    selfCopy = self;
    +[NSMutableArray array];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000378A4;
    v9[3] = &unk_100083A30;
    v9[4] = selfCopy;
    v4 = v10 = selfCopy;
    v11 = v4;
    v5 = selfCopy;
    [GEOMAResource onFileAccessQueueSync:v9];
    v6 = v11;
    v7 = v4;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: [self conformsToProtocol:@protocol(GEOMAResourceInfo)]", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)query
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v3 = qword_100096030;
  v24 = qword_100096030;
  if (!qword_100096030)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000235D0;
    v20[3] = &unk_1000830D0;
    v20[4] = &v21;
    sub_1000235D0(v20);
    v3 = v22[3];
  }

  v4 = v3;
  _Block_object_dispose(&v21, 8);
  v5 = [v4 alloc];
  _defaultQueryType = [objc_opt_class() _defaultQueryType];
  v7 = [v5 initWithType:_defaultQueryType];

  queryParameters = self->_queryParameters;
  if (queryParameters)
  {
    _defaultQueryParameters = queryParameters;
  }

  else
  {
    _defaultQueryParameters = [objc_opt_class() _defaultQueryParameters];
  }

  v10 = _defaultQueryParameters;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100037CF4;
  v18 = &unk_100082B68;
  v11 = v7;
  v19 = v11;
  [(NSDictionary *)v10 enumerateKeysAndObjectsUsingBlock:&v15];
  [v11 returnTypes:{2, v15, v16, v17, v18}];
  [v11 setDoNotBlockBeforeFirstUnlock:1];
  v12 = v19;
  v13 = v11;

  return v11;
}

- (id)_backgroundDownloadOptions
{
  v2 = objc_alloc_init(sub_100023640());
  [v2 setAllowsCellularAccess:0];
  [v2 setAllowsExpensiveAccess:0];
  [v2 setDiscretionary:1];

  return v2;
}

- (BOOL)isExpired
{
  if (([(GEOMAResourceInfo *)self conformsToProtocol:&OBJC_PROTOCOL___GEOMAResourceInfo]& 1) != 0)
  {
    selfCopy = self;
    [(GEOMAResourceInfo *)selfCopy lastAccessedTime];
    v5 = v4;
    [(GEOMAResourceInfo *)selfCopy timeToLive];
    v7 = v6;

    v8 = +[NSDate date];
    [v8 timeIntervalSinceReferenceDate];
    v10 = v9 > v5 + v7;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *v12 = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: [self conformsToProtocol:@protocol(GEOMAResourceInfo)]", v12, 2u);
    }

    return 1;
  }

  return v10;
}

- (void)updateLastAccessedTime
{
  baseURL = [(GEOMAResourceInfo *)self baseURL];
  v2 = baseURL;
  utimes([baseURL fileSystemRepresentation], 0);
}

- (double)lastAccessedTime
{
  baseURL = [(GEOMAResourceInfo *)self baseURL];
  v13 = 0;
  v12 = 0;
  v3 = [baseURL getResourceValue:&v13 forKey:NSURLContentModificationDateKey error:&v12];
  v4 = v13;
  v5 = v12;
  if (v3)
  {
    [v4 timeIntervalSinceReferenceDate];
    v7 = v6;
  }

  else
  {
    v8 = sub_100020BFC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138478083;
      v15 = baseURL;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unable to read modification time for resource %{private}@: %@", buf, 0x16u);
    }

    v9 = +[NSDate distantPast];
    [v9 timeIntervalSinceReferenceDate];
    v7 = v10;
  }

  return v7;
}

- (id)baseURL
{
  v3 = objc_opt_class();
  type = self->_type;

  return [v3 baseURLForType:type];
}

- (GEOMAResourceInfo)initWithType:(unint64_t)type overrides:(id)overrides
{
  overridesCopy = overrides;
  v18.receiver = self;
  v18.super_class = GEOMAResourceInfo;
  v7 = [(GEOMAResourceInfo *)&v18 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    _defaultQueryParameters = [objc_opt_class() _defaultQueryParameters];
    v10 = _defaultQueryParameters;
    if (overridesCopy)
    {
      v11 = [(NSDictionary *)_defaultQueryParameters mutableCopy];

      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100038268;
      v16[3] = &unk_100082B68;
      v17 = v11;
      v12 = v11;
      [overridesCopy enumerateKeysAndObjectsUsingBlock:v16];
      v13 = [(NSDictionary *)v12 copy];
      queryParameters = v8->_queryParameters;
      v8->_queryParameters = v13;
    }

    else
    {
      v12 = v8->_queryParameters;
      v8->_queryParameters = _defaultQueryParameters;
    }
  }

  return v8;
}

+ (id)baseURLForType:(unint64_t)type
{
  maResourcesFolder = [self maResourcesFolder];
  v5 = maResourcesFolder;
  v6 = @"territories";
  if (type != 1)
  {
    v6 = 0;
  }

  if (type)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"metroRegions";
  }

  v8 = [maResourcesFolder URLByAppendingPathComponent:v7 isDirectory:1];

  return v8;
}

+ (id)maResourcesFolder
{
  if (qword_1000960C8 != -1)
  {
    dispatch_once(&qword_1000960C8, &stru_100082B88);
  }

  v3 = qword_1000960C0;

  return v3;
}

@end