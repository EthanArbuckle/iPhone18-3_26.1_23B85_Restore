@interface FAFamilyPhotoCache
+ (id)cacheQueue;
- (BOOL)_isCacheDate:(id)a3 pastDuration:(double)a4;
- (FAFamilyPhotoCache)initWithAltDSID:(id)a3;
- (id)_cacheDirectoryURLWithError:(id *)a3;
- (id)_cacheURL;
- (id)_cacheURLWithError:(id *)a3;
- (id)_createCacheFile;
- (id)_fetchData:(id *)a3;
- (id)invalidateFamilyPhotos;
- (id)load;
- (id)load:(id *)a3;
- (id)updateWithData:(id)a3;
@end

@implementation FAFamilyPhotoCache

- (FAFamilyPhotoCache)initWithAltDSID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FAFamilyPhotoCache;
  v6 = [(FAFamilyPhotoCache *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_altDSID, a3);
  }

  return v7;
}

- (id)_cacheDirectoryURLWithError:(id *)a3
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

    if (a3)
    {
      v8 = v6;
      v9 = 0;
      *a3 = v6;
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

- (id)_cacheURLWithError:(id *)a3
{
  v5 = [(FAFamilyPhotoCache *)self altDSID];
  v6 = [NSString stringWithFormat:@"%@", v5];

  v7 = [(FAFamilyPhotoCache *)self _cacheDirectoryURLWithError:a3];
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

- (id)_fetchData:(id *)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10001BA24;
  v13 = sub_10001BA34;
  v14 = 0;
  v5 = [objc_opt_class() cacheQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BA3C;
  block[3] = &unk_1000A6618;
  block[4] = self;
  block[5] = &v9;
  block[6] = a3;
  dispatch_sync(v5, block);

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

- (id)load:(id *)a3
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

  v10 = [(FAFamilyPhotoCache *)self _fetchData:a3];
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

- (BOOL)_isCacheDate:(id)a3 pastDuration:(double)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && ([v6 timeIntervalSinceNow], v8 > -a4))
  {
    v9 = _FALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(FAFamilyPhotoCache *)self altDSID];
      v14 = 138412546;
      v15 = v10;
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
      v12 = [(FAFamilyPhotoCache *)self altDSID];
      v14 = 138412546;
      v15 = v12;
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
  v2 = [(FAFamilyPhotoCache *)self _cacheURL];
  v3 = [v2 thenOnQueue];
  v4 = [objc_opt_class() cacheQueue];
  v5 = (v3)[2](v3, v4, &stru_1000A7120);

  return v5;
}

- (id)updateWithData:(id)a3
{
  v4 = a3;
  v5 = [AAFPromise alloc];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001C328;
  v9[3] = &unk_1000A6120;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 initWithBlock:v9];

  return v7;
}

- (id)invalidateFamilyPhotos
{
  v3 = [[AAFPromise alloc] initWithValue:0];
  v4 = [v3 thenOnQueue];
  v5 = [objc_opt_class() cacheQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001C768;
  v8[3] = &unk_1000A5ED0;
  v8[4] = self;
  v6 = (v4)[2](v4, v5, v8);

  return v6;
}

@end