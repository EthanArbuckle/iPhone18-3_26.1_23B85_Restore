@interface FASettingPresetsCache
+ (id)cacheQueue;
- (id)_cacheDirectoryURLWithError:(id *)a3;
- (id)_cacheURLWithStoreFront:(id)a3 version:(id)a4;
- (id)_cacheURLWithStoreFront:(id)a3 version:(id)a4 error:(id *)a5;
- (id)_createCacheFileWithStoreFront:(id)a3 version:(id)a4;
- (id)_fetchDataWithStoreFront:(id)a3 version:(id)a4 error:(id *)a5;
- (id)invalidate;
- (id)loadForURL:(id)a3 storeFront:(id)a4 version:(id)a5;
- (id)loadWithStoreFront:(id)a3 version:(id)a4 error:(id *)a5;
- (id)updateWithPresets:(id)a3 requestURL:(id)a4 storeFront:(id)a5 version:(id)a6;
@end

@implementation FASettingPresetsCache

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
      sub_100079564(v6, v7);
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
    v10 = [NSString stringWithFormat:@"FamilyCircle/Presets"];
    v9 = [v5 URLByAppendingPathComponent:v10];
  }

  return v9;
}

- (id)_cacheURLWithStoreFront:(id)a3 version:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [@"preset_cache" mutableCopy];
  if (v8 && [v8 length])
  {
    [v10 appendFormat:@"_%@", v8];
  }

  if (v9 && [v9 length])
  {
    [v10 appendFormat:@"_%@", v9];
  }

  [v10 appendString:@".json"];
  v11 = [(FASettingPresetsCache *)self _cacheDirectoryURLWithError:a5];
  v12 = [v10 copy];
  v13 = [v11 URLByAppendingPathComponent:v12];

  return v13;
}

+ (id)cacheQueue
{
  if (qword_1000B99C0[0] != -1)
  {
    sub_1000795DC();
  }

  v3 = qword_1000B99B8;

  return v3;
}

- (id)_fetchDataWithStoreFront:(id)a3 version:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10001CD5C;
  v24 = sub_10001CD6C;
  v25 = 0;
  v10 = [objc_opt_class() cacheQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001CD74;
  block[3] = &unk_1000A7190;
  block[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = &v20;
  v19 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_sync(v10, block);

  v13 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v13;
}

- (id)loadForURL:(id)a3 storeFront:(id)a4 version:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [AAFPromise alloc];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001CF50;
  v17[3] = &unk_1000A71B8;
  v17[4] = self;
  v18 = v9;
  v19 = v10;
  v20 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  v15 = [v11 initWithBlock:v17];

  return v15;
}

- (id)loadWithStoreFront:(id)a3 version:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = _FASignpostLogSystem();
  v11 = _FASignpostCreate();

  v12 = _FASignpostLogSystem();
  v13 = v12;
  if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "LoadFamilyPhotoCache", "", buf, 2u);
  }

  v14 = _FASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_1000793CC(v11, v14);
  }

  v15 = [(FASettingPresetsCache *)self _fetchDataWithStoreFront:v9 version:v8 error:a5];

  Nanoseconds = _FASignpostGetNanoseconds();
  v17 = _FASignpostLogSystem();
  v18 = v17;
  if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *v21 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v11, "LoadFamilyPhotoCache", "", v21, 2u);
  }

  v19 = _FASignpostLogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_100079444(v11, v19, Nanoseconds / 1000000000.0);
  }

  return v15;
}

- (id)_cacheURLWithStoreFront:(id)a3 version:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [AAFPromise alloc];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001D340;
  v13[3] = &unk_1000A62F0;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 initWithBlock:v13];

  return v11;
}

- (id)_createCacheFileWithStoreFront:(id)a3 version:(id)a4
{
  v4 = [(FASettingPresetsCache *)self _cacheURLWithStoreFront:a3 version:a4];
  v5 = [v4 thenOnQueue];
  v6 = [objc_opt_class() cacheQueue];
  v7 = (v5)[2](v5, v6, &stru_1000A71D8);

  return v7;
}

- (id)updateWithPresets:(id)a3 requestURL:(id)a4 storeFront:(id)a5 version:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [AAFPromise alloc];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10001D67C;
  v21[3] = &unk_1000A7228;
  v21[4] = self;
  v22 = v12;
  v23 = v13;
  v24 = v11;
  v25 = v10;
  v15 = v10;
  v16 = v11;
  v17 = v13;
  v18 = v12;
  v19 = [v14 initWithBlock:v21];

  return v19;
}

- (id)invalidate
{
  v3 = [[AAFPromise alloc] initWithValue:0];
  v4 = [v3 thenOnQueue];
  v5 = [objc_opt_class() cacheQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001DB98;
  v8[3] = &unk_1000A5ED0;
  v8[4] = self;
  v6 = (v4)[2](v4, v5, v8);

  return v6;
}

@end