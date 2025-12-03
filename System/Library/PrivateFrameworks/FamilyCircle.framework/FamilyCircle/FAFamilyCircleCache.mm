@interface FAFamilyCircleCache
+ (id)cacheQueue;
- (BOOL)_isCacheDate:(id)date withinDuration:(double)duration;
- (FAFamilyCircleCache)initWithAccount:(id)account;
- (id)_cacheDataWithFamilyCircle:(id)circle serverTag:(id)tag;
- (id)_cacheURL;
- (id)_cacheURLWithError:(id *)error;
- (id)_createCacheFile;
- (id)_fetchData:(id *)data;
- (id)_onQueue:(id)queue;
- (id)_username;
- (id)invalidate;
- (id)load;
- (id)loadWithError:(id *)error;
- (id)updateWithFamilyCircle:(id)circle serverTag:(id)tag;
@end

@implementation FAFamilyCircleCache

- (id)load
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000318C;
  v4[3] = &unk_1000A6198;
  v4[4] = self;
  v2 = [[AAFPromise alloc] initWithBlock:v4];

  return v2;
}

+ (id)cacheQueue
{
  if (qword_1000B9970 != -1)
  {
    sub_100078BB8();
  }

  v3 = qword_1000B9968;

  return v3;
}

- (id)_username
{
  account = [(FAFamilyCircleCache *)self account];
  aa_personID = [account aa_personID];

  return aa_personID;
}

- (FAFamilyCircleCache)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = FAFamilyCircleCache;
  v6 = [(FAFamilyCircleCache *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (id)_cacheURLWithError:(id *)error
{
  v4 = +[NSFileManager defaultManager];
  v11 = 0;
  v5 = [v4 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v11];
  v6 = v11;

  if (v6)
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100078B50();
    }

    if (error)
    {
      v8 = v6;
      *error = v6;
    }
  }

  v9 = [v5 URLByAppendingPathComponent:@"FamilyCircle/CircleCache.plist"];

  return v9;
}

- (id)_fetchData:(id *)data
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100012218;
  v13 = sub_100012228;
  v14 = 0;
  cacheQueue = [objc_opt_class() cacheQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012230;
  block[3] = &unk_1000A6618;
  block[4] = self;
  block[5] = &v9;
  block[6] = data;
  dispatch_sync(cacheQueue, block);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)loadWithError:(id *)error
{
  v5 = _FASignpostLogSystem();
  v6 = _FASignpostCreate();

  v7 = _FASignpostLogSystem();
  v8 = v7;
  v9 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "LoadFamilyCache", "", buf, 2u);
  }

  v10 = _FASignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100078BCC();
  }

  v54 = 0;
  v11 = [(FAFamilyCircleCache *)self _fetchData:&v54];
  v12 = v54;
  if (!v12)
  {
    if (v11)
    {
      v53 = 0;
      v18 = [NSPropertyListSerialization propertyListWithData:v11 options:0 format:0 error:&v53];
      v17 = v53;
      if (v17)
      {
        v19 = _FALogSystem();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100078D10();
        }

        if (error)
        {
          v20 = v17;
          *error = v17;
        }

        _FASignpostGetNanoseconds();
        v21 = _FASignpostLogSystem();
        v22 = v21;
        if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, v6, "LoadFamilyCache", "", buf, 2u);
        }

        v23 = _FASignpostLogSystem();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          sub_100078CA8();
        }

        v24 = 0;
LABEL_28:

        goto LABEL_60;
      }

      if (v18)
      {
        v25 = [v18 objectForKeyedSubscript:@"username"];
        v51 = [v18 objectForKeyedSubscript:@"serverTag"];
        v26 = [v18 objectForKeyedSubscript:@"timestamp"];
        v49 = v18;
        v27 = [v18 objectForKeyedSubscript:@"circle"];
        _username = [(FAFamilyCircleCache *)self _username];
        v50 = v25;
        v24 = [v25 isEqualToString:_username];

        v52 = v26;
        v29 = v26 == 0;
        v30 = v27;
        if (v29)
        {
          v31 = 0;
        }

        else
        {
          v31 = v24;
        }

        if (!v27)
        {
          v31 = 0;
        }

        v48 = v31;
        if (v31 == 1)
        {
          v32 = [v27 objectForKeyedSubscript:@"cacheDuration"];
          [v32 doubleValue];
          v34 = v33;

          if (v34 == 0.0)
          {
            v35 = _FALogSystem();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v56 = 0x40F5180000000000;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Defaulting to cache age of: %f", buf, 0xCu);
            }

            v34 = 86400.0;
          }

          v36 = [[FAFamilyCircle alloc] initWithServerResponse:v27];
          v24 = [[FAFamilyCircleCacheResponse alloc] initWithFamilyCircle:v36 serverTag:v51 cacheDate:v52 maxAge:v34];
          _FASignpostGetNanoseconds();
          v37 = _FASignpostLogSystem();
          v38 = v37;
          if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_END, v6, "LoadFamilyCache", "", buf, 2u);
          }

          v39 = _FASignpostLogSystem();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            sub_100078CA8();
          }

          v30 = v27;
        }

        else
        {
          v41 = _FALogSystem();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v47 = [NSNumber numberWithBool:v24];
            v46 = [NSNumber numberWithInt:v52 == 0];
            v42 = [NSNumber numberWithInt:v30 == 0];
            *buf = 138412802;
            v56 = v47;
            v57 = 2112;
            v58 = v46;
            v59 = 2112;
            v60 = v42;
            v24 = v42;
            v36 = v41;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Invalid cache detected... validUser: %@, cachedTimestamp: %@, cachedCirclePlist: %@", buf, 0x20u);
          }

          else
          {
            v36 = v41;
          }
        }

        v18 = v49;

        if (v48)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v40 = _FALogSystem();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "FAFamilyCircleCache plist == nil", buf, 2u);
        }
      }
    }

    _FASignpostGetNanoseconds();
    v43 = _FASignpostLogSystem();
    v44 = v43;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_INTERVAL_END, v6, "LoadFamilyCache", "", buf, 2u);
    }

    v17 = _FASignpostLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_100078CA8();
    }

    goto LABEL_59;
  }

  v13 = _FALogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100078C40();
  }

  if (error)
  {
    v14 = v12;
    *error = v12;
  }

  _FASignpostGetNanoseconds();
  v15 = _FASignpostLogSystem();
  v16 = v15;
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, v6, "LoadFamilyCache", "", buf, 2u);
  }

  v17 = _FASignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_100078CA8();
  }

LABEL_59:
  v24 = 0;
LABEL_60:

  return v24;
}

- (BOOL)_isCacheDate:(id)date withinDuration:(double)duration
{
  dateCopy = date;
  [dateCopy timeIntervalSinceNow];
  v7 = fabs(v6);
  v8 = _FALogSystem();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7 >= duration)
  {
    if (v9)
    {
      v12 = 138412290;
      v13 = dateCopy;
      v10 = "Attempting to fetch the family circle from the server as the cache is stale (%@)";
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    v12 = 138412290;
    v13 = dateCopy;
    v10 = "Skipping server fetch of family circle as the cache is fresh (%@)";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, &v12, 0xCu);
  }

  return v7 < duration;
}

- (id)_cacheDataWithFamilyCircle:(id)circle serverTag:(id)tag
{
  circleCopy = circle;
  tagCopy = tag;
  v8 = [AAFPromise alloc];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100012C78;
  v13[3] = &unk_1000A62F0;
  v13[4] = self;
  v14 = circleCopy;
  v15 = tagCopy;
  v9 = tagCopy;
  v10 = circleCopy;
  v11 = [v8 initWithBlock:v13];

  return v11;
}

- (id)_cacheURL
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100012E38;
  v4[3] = &unk_1000A6198;
  v4[4] = self;
  v2 = [[AAFPromise alloc] initWithBlock:v4];

  return v2;
}

- (id)_createCacheFile
{
  _cacheURL = [(FAFamilyCircleCache *)self _cacheURL];
  then = [_cacheURL then];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100012F7C;
  v7[3] = &unk_1000A65F0;
  v7[4] = self;
  v5 = (then)[2](then, v7);

  return v5;
}

- (id)updateWithFamilyCircle:(id)circle serverTag:(id)tag
{
  circleCopy = circle;
  tagCopy = tag;
  v8 = [AAFPromise alloc];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000131F8;
  v13[3] = &unk_1000A62F0;
  v13[4] = self;
  v14 = circleCopy;
  v15 = tagCopy;
  v9 = tagCopy;
  v10 = circleCopy;
  v11 = [v8 initWithBlock:v13];

  return v11;
}

- (id)_onQueue:(id)queue
{
  queueCopy = queue;
  v5 = [AAFPromise alloc];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000135E4;
  v9[3] = &unk_1000A6668;
  v9[4] = self;
  v10 = queueCopy;
  v6 = queueCopy;
  v7 = [v5 initWithBlock:v9];

  return v7;
}

- (id)invalidate
{
  _cacheURL = [(FAFamilyCircleCache *)self _cacheURL];
  then = [_cacheURL then];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100013808;
  v7[3] = &unk_1000A65F0;
  v7[4] = self;
  v5 = (then)[2](then, v7);

  return v5;
}

@end