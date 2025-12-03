@interface FAFamilyPhotoCache
+ (id)cacheQueue;
- (BOOL)_isCacheDate:(id)date pastDuration:(double)duration;
- (FAFamilyPhotoCache)initWithAltDSID:(id)d;
- (id)_cacheDirectoryURLWithError:(id *)error;
- (id)_cacheURL;
- (id)_cacheURLWithError:(id *)error;
- (id)_createCacheFile;
- (id)_fetchData:(id *)data;
- (id)invalidateFamilyPhotos;
- (id)load;
- (id)load:(id *)load;
- (id)updateWithData:(id)data;
@end

@implementation FAFamilyPhotoCache

- (FAFamilyPhotoCache)initWithAltDSID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = FAFamilyPhotoCache;
  v6 = [(FAFamilyPhotoCache *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_altDSID, d);
  }

  return v7;
}

- (id)_cacheDirectoryURLWithError:(id *)error
{
  v4 = +[NSFileManager defaultManager];
  v12 = 0;
  v5 = [v4 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v12];
  v6 = v12;

  if (v6)
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100079340(v6, v7);
    }

    if (error)
    {
      v8 = v6;
      v9 = 0;
      *error = v6;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = [NSString stringWithFormat:@"FamilyCircle/Images"];
    v9 = [v5 URLByAppendingPathComponent:v10];
  }

  return v9;
}

- (id)_cacheURLWithError:(id *)error
{
  altDSID = [(FAFamilyPhotoCache *)self altDSID];
  v6 = [NSString stringWithFormat:@"%@", altDSID];

  v7 = [(FAFamilyPhotoCache *)self _cacheDirectoryURLWithError:error];
  v8 = [v7 URLByAppendingPathComponent:v6];

  return v8;
}

+ (id)cacheQueue
{
  if (qword_1000B99B0 != -1)
  {
    sub_1000793B8();
  }

  v3 = qword_1000B99A8;

  return v3;
}

- (id)_fetchData:(id *)data
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10001BA24;
  v13 = sub_10001BA34;
  v14 = 0;
  cacheQueue = [objc_opt_class() cacheQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BA3C;
  block[3] = &unk_1000A6618;
  block[4] = self;
  block[5] = &v9;
  block[6] = data;
  dispatch_sync(cacheQueue, block);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)load
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001BC30;
  v4[3] = &unk_1000A6198;
  v4[4] = self;
  v2 = [[AAFPromise alloc] initWithBlock:v4];

  return v2;
}

- (id)load:(id *)load
{
  v5 = _FASignpostLogSystem();
  v6 = _FASignpostCreate();

  v7 = _FASignpostLogSystem();
  v8 = v7;
  if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "LoadFamilyPhotoCache", "", buf, 2u);
  }

  v9 = _FASignpostLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000793CC(v6, v9);
  }

  v10 = [(FAFamilyPhotoCache *)self _fetchData:load];
  Nanoseconds = _FASignpostGetNanoseconds();
  v12 = _FASignpostLogSystem();
  v13 = v12;
  if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v6, "LoadFamilyPhotoCache", "", v16, 2u);
  }

  v14 = _FASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_100079444(v6, v14, Nanoseconds / 1000000000.0);
  }

  return v10;
}

- (BOOL)_isCacheDate:(id)date pastDuration:(double)duration
{
  dateCopy = date;
  v7 = dateCopy;
  if (dateCopy && ([dateCopy timeIntervalSinceNow], v8 > -duration))
  {
    v9 = _FALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      altDSID = [(FAFamilyPhotoCache *)self altDSID];
      v14 = 138412546;
      v15 = altDSID;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Cache photo for member %@ is valid dateCreated: %@", &v14, 0x16u);
    }

    v11 = 0;
  }

  else
  {
    v9 = _FALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      altDSID2 = [(FAFamilyPhotoCache *)self altDSID];
      v14 = 138412546;
      v15 = altDSID2;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Cache photo for member %@ expired dateCreated: %@", &v14, 0x16u);
    }

    v11 = 1;
  }

  return v11;
}

- (id)_cacheURL
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001C068;
  v4[3] = &unk_1000A6198;
  v4[4] = self;
  v2 = [[AAFPromise alloc] initWithBlock:v4];

  return v2;
}

- (id)_createCacheFile
{
  _cacheURL = [(FAFamilyPhotoCache *)self _cacheURL];
  thenOnQueue = [_cacheURL thenOnQueue];
  cacheQueue = [objc_opt_class() cacheQueue];
  v5 = (thenOnQueue)[2](thenOnQueue, cacheQueue, &stru_1000A7120);

  return v5;
}

- (id)updateWithData:(id)data
{
  dataCopy = data;
  v5 = [AAFPromise alloc];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001C328;
  v9[3] = &unk_1000A6120;
  v9[4] = self;
  v10 = dataCopy;
  v6 = dataCopy;
  v7 = [v5 initWithBlock:v9];

  return v7;
}

- (id)invalidateFamilyPhotos
{
  v3 = [[AAFPromise alloc] initWithValue:0];
  thenOnQueue = [v3 thenOnQueue];
  cacheQueue = [objc_opt_class() cacheQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001C768;
  v8[3] = &unk_1000A5ED0;
  v8[4] = self;
  v6 = (thenOnQueue)[2](thenOnQueue, cacheQueue, v8);

  return v6;
}

@end