@interface CSAttSiriTCUCache
- (CSAttSiriTCUCache)init;
- (id)getRequestIdForTCUId:(id)a3;
- (id)getTCUPackageWithTrpId:(id)a3;
- (id)getTRPIdForTCUId:(id)a3;
- (id)updateTcuState:(id)a3;
- (unint64_t)cachedTCUCount;
- (void)addTCU:(id)a3 firstTRPId:(id)a4 lastTRPId:(id)a5;
- (void)cleanUpTCUCache:(id)a3;
- (void)clearTcuCache;
@end

@implementation CSAttSiriTCUCache

- (id)getTRPIdForTCUId:(id)a3
{
  v4 = a3;
  cachedTCUList = self->_cachedTCUList;
  if (cachedTCUList && ([(NSMutableDictionary *)cachedTCUList objectForKey:v4], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [(NSMutableDictionary *)self->_cachedTCUList objectForKeyedSubscript:v4];
    v8 = [v7 lastTRPId];
  }

  else
  {
    v9 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[CSAttSiriTCUCache getTRPIdForTCUId:]";
      v13 = 2112;
      v14 = v4;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Cache object not found for tcuId: %@", &v11, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

- (id)getRequestIdForTCUId:(id)a3
{
  v4 = a3;
  cachedTCUList = self->_cachedTCUList;
  if (cachedTCUList && ([(NSMutableDictionary *)cachedTCUList objectForKey:v4], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [(NSMutableDictionary *)self->_cachedTCUList objectForKeyedSubscript:v4];
    v8 = [v7 TCUPackage];
    v9 = [v8 requestId];
  }

  else
  {
    v10 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[CSAttSiriTCUCache getRequestIdForTCUId:]";
      v14 = 2112;
      v15 = v4;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Cache object not found for tcuId: %@", &v12, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (void)clearTcuCache
{
  v3 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[CSAttSiriTCUCache clearTcuCache]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  [(NSMutableDictionary *)self->_cachedTCUList removeAllObjects];
}

- (unint64_t)cachedTCUCount
{
  cachedTCUList = self->_cachedTCUList;
  if (cachedTCUList)
  {

    return [(NSMutableDictionary *)cachedTCUList count];
  }

  else
  {
    v4 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[CSAttSiriTCUCache cachedTCUCount]";
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Cache is nil!", &v5, 0xCu);
    }

    return 0;
  }
}

- (void)cleanUpTCUCache:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_cachedTCUList count];
  v6 = CSLogCategoryRequest;
  v7 = os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      cachedTCUList = self->_cachedTCUList;
      v9 = v6;
      v10 = [(NSMutableDictionary *)cachedTCUList count];
      v11 = self->_cachedTCUList;
      *buf = 136315650;
      *&buf[4] = "[CSAttSiriTCUCache cleanUpTCUCache:]";
      *&buf[12] = 2048;
      *&buf[14] = v10;
      *&buf[22] = 2112;
      v28 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s itemCount:%lu _cachedTCUList:%@", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v28 = sub_1001093EC;
    v29 = sub_1001093FC;
    v30 = +[NSMutableArray array];
    v12 = self->_cachedTCUList;
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_100109404;
    v20 = &unk_100251AB0;
    v21 = v4;
    v22 = buf;
    [(NSMutableDictionary *)v12 enumerateKeysAndObjectsUsingBlock:&v17];
    if ([*(*&buf[8] + 40) count])
    {
      v13 = CSLogCategoryRequest;
      if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(*&buf[8] + 40);
        *v23 = 136315394;
        v24 = "[CSAttSiriTCUCache cleanUpTCUCache:]";
        v25 = 2112;
        v26 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s dropTCUIDList:%@", v23, 0x16u);
      }

      [(NSMutableDictionary *)self->_cachedTCUList removeObjectsForKeys:*(*&buf[8] + 40)];
    }

    v15 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
    {
      v16 = self->_cachedTCUList;
      *v23 = 136315394;
      v24 = "[CSAttSiriTCUCache cleanUpTCUCache:]";
      v25 = 2112;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Updated TCU-cache : %@", v23, 0x16u);
    }

    _Block_object_dispose(buf, 8);
  }

  else if (v7)
  {
    *buf = 136315138;
    *&buf[4] = "[CSAttSiriTCUCache cleanUpTCUCache:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Empty Cached TCU List !", buf, 0xCu);
  }
}

- (void)addTCU:(id)a3 firstTRPId:(id)a4 lastTRPId:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [[CSAttSiriTCUCachedObject alloc] initWithTCUPackage:v8 firstTRPId:v10 lastTRPId:v9];

  if (v11)
  {
    cachedTCUList = self->_cachedTCUList;
    v13 = [v8 tcuId];
    [(NSMutableDictionary *)cachedTCUList setObject:v11 forKey:v13];

    v14 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_cachedTCUList;
      v20 = 136315394;
      v21 = "[CSAttSiriTCUCache addTCU:firstTRPId:lastTRPId:]";
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Updated TCU-Cache with new TCU:%@", &v20, 0x16u);
    }
  }

  v16 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_cachedTCUList;
    v18 = v16;
    v19 = [(NSMutableDictionary *)v17 count];
    v20 = 136315394;
    v21 = "[CSAttSiriTCUCache addTCU:firstTRPId:lastTRPId:]";
    v22 = 1024;
    LODWORD(v23) = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s Cached TCU Count:%d", &v20, 0x12u);
  }
}

- (id)updateTcuState:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1001093EC;
  v15 = sub_1001093FC;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10010994C;
  v10[3] = &unk_100251AF8;
  v10[4] = self;
  v10[5] = &v11;
  [v4 enumerateKeysAndObjectsUsingBlock:v10];
  if (v12[5])
  {
    v5 = [(NSMutableDictionary *)self->_cachedTCUList objectForKeyedSubscript:?];
    v6 = [v5 lastTRPId];
  }

  else
  {
    v6 = 0;
  }

  v7 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
  {
    cachedTCUList = self->_cachedTCUList;
    *buf = 136315394;
    v18 = "[CSAttSiriTCUCache updateTcuState:]";
    v19 = 2112;
    v20 = cachedTCUList;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Updated TCU Cache:%@", buf, 0x16u);
  }

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)getTCUPackageWithTrpId:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1001093EC;
  v16 = sub_1001093FC;
  v17 = 0;
  cachedTCUList = self->_cachedTCUList;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100109D54;
  v9[3] = &unk_100251AB0;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(NSMutableDictionary *)cachedTCUList enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (CSAttSiriTCUCache)init
{
  v6.receiver = self;
  v6.super_class = CSAttSiriTCUCache;
  v2 = [(CSAttSiriTCUCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    cachedTCUList = v2->_cachedTCUList;
    v2->_cachedTCUList = v3;
  }

  return v2;
}

@end