@interface FASettingPresetsCache
+ (id)cacheQueue;
- (id)_cacheDirectoryURLWithError:(id *)error;
- (id)_cacheURLWithStoreFront:(id)front version:(id)version;
- (id)_cacheURLWithStoreFront:(id)front version:(id)version error:(id *)error;
- (id)_createCacheFileWithStoreFront:(id)front version:(id)version;
- (id)_fetchDataWithStoreFront:(id)front version:(id)version error:(id *)error;
- (id)invalidate;
- (id)loadForURL:(id)l storeFront:(id)front version:(id)version;
- (id)loadWithStoreFront:(id)front version:(id)version error:(id *)error;
- (id)updateWithPresets:(id)presets requestURL:(id)l storeFront:(id)front version:(id)version;
@end

@implementation FASettingPresetsCache

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
      sub_100079564(v6, v7);
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
    v10 = [NSString stringWithFormat:@"FamilyCircle/Presets"];
    v9 = [v5 URLByAppendingPathComponent:v10];
  }

  return v9;
}

- (id)_cacheURLWithStoreFront:(id)front version:(id)version error:(id *)error
{
  frontCopy = front;
  versionCopy = version;
  v10 = [@"preset_cache" mutableCopy];
  if (frontCopy && [frontCopy length])
  {
    [v10 appendFormat:@"_%@", frontCopy];
  }

  if (versionCopy && [versionCopy length])
  {
    [v10 appendFormat:@"_%@", versionCopy];
  }

  [v10 appendString:@".json"];
  v11 = [(FASettingPresetsCache *)self _cacheDirectoryURLWithError:error];
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

- (id)_fetchDataWithStoreFront:(id)front version:(id)version error:(id *)error
{
  frontCopy = front;
  versionCopy = version;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10001CD5C;
  v24 = sub_10001CD6C;
  v25 = 0;
  cacheQueue = [objc_opt_class() cacheQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001CD74;
  block[3] = &unk_1000A7190;
  block[4] = self;
  v16 = frontCopy;
  v17 = versionCopy;
  v18 = &v20;
  errorCopy = error;
  v11 = versionCopy;
  v12 = frontCopy;
  dispatch_sync(cacheQueue, block);

  v13 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v13;
}

- (id)loadForURL:(id)l storeFront:(id)front version:(id)version
{
  lCopy = l;
  frontCopy = front;
  versionCopy = version;
  v11 = [AAFPromise alloc];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001CF50;
  v17[3] = &unk_1000A71B8;
  v17[4] = self;
  v18 = frontCopy;
  v19 = versionCopy;
  v20 = lCopy;
  v12 = lCopy;
  v13 = versionCopy;
  v14 = frontCopy;
  v15 = [v11 initWithBlock:v17];

  return v15;
}

- (id)loadWithStoreFront:(id)front version:(id)version error:(id *)error
{
  versionCopy = version;
  frontCopy = front;
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

  v15 = [(FASettingPresetsCache *)self _fetchDataWithStoreFront:frontCopy version:versionCopy error:error];

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

- (id)_cacheURLWithStoreFront:(id)front version:(id)version
{
  frontCopy = front;
  versionCopy = version;
  v8 = [AAFPromise alloc];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001D340;
  v13[3] = &unk_1000A62F0;
  v13[4] = self;
  v14 = frontCopy;
  v15 = versionCopy;
  v9 = versionCopy;
  v10 = frontCopy;
  v11 = [v8 initWithBlock:v13];

  return v11;
}

- (id)_createCacheFileWithStoreFront:(id)front version:(id)version
{
  v4 = [(FASettingPresetsCache *)self _cacheURLWithStoreFront:front version:version];
  thenOnQueue = [v4 thenOnQueue];
  cacheQueue = [objc_opt_class() cacheQueue];
  v7 = (thenOnQueue)[2](thenOnQueue, cacheQueue, &stru_1000A71D8);

  return v7;
}

- (id)updateWithPresets:(id)presets requestURL:(id)l storeFront:(id)front version:(id)version
{
  presetsCopy = presets;
  lCopy = l;
  frontCopy = front;
  versionCopy = version;
  v14 = [AAFPromise alloc];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10001D67C;
  v21[3] = &unk_1000A7228;
  v21[4] = self;
  v22 = frontCopy;
  v23 = versionCopy;
  v24 = lCopy;
  v25 = presetsCopy;
  v15 = presetsCopy;
  v16 = lCopy;
  v17 = versionCopy;
  v18 = frontCopy;
  v19 = [v14 initWithBlock:v21];

  return v19;
}

- (id)invalidate
{
  v3 = [[AAFPromise alloc] initWithValue:0];
  thenOnQueue = [v3 thenOnQueue];
  cacheQueue = [objc_opt_class() cacheQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001DB98;
  v8[3] = &unk_1000A5ED0;
  v8[4] = self;
  v6 = (thenOnQueue)[2](thenOnQueue, cacheQueue, v8);

  return v6;
}

@end