@interface RegisterCacheDeleteOrphanDirHandlerService
@end

@implementation RegisterCacheDeleteOrphanDirHandlerService

void __RegisterCacheDeleteOrphanDirHandlerService_block_invoke(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.cache_delete_orphan_dir_handler_queue", v3);
  v2 = RegisterCacheDeleteOrphanDirHandlerService_orphanDirQueue;
  RegisterCacheDeleteOrphanDirHandlerService_orphanDirQueue = v1;
}

__CFDictionary *__cdecl __RegisterCacheDeleteOrphanDirHandlerService_block_invoke_2(id a1, int a2, __CFDictionary *a3)
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v5 = [(__CFDictionary *)v4 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v6 = getRootVolume();
  v7 = [v5 isEqualToString:v6];
  if (a2 == 4)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __RegisterCacheDeleteOrphanDirHandlerService_block_invoke_3;
    v15[3] = &unk_10000C6B8;
    v16 = 4;
    v15[4] = &v17;
    dispatch_sync(RegisterCacheDeleteOrphanDirHandlerService_orphanDirQueue, v15);
  }

  v25[0] = @"CACHE_DELETE_VOLUME";
  v9 = [(__CFDictionary *)v4 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v25[1] = @"CACHE_DELETE_AMOUNT";
  v26[0] = v9;
  v10 = [NSNumber numberWithUnsignedLongLong:v18[3]];
  v26[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];

  v12 = CDGetLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v18[3];
    *buf = 136315394;
    v22 = "com.apple.cache_delete_orphan_dir_handler";
    v23 = 2048;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %s returning purgeable %lld ", buf, 0x16u);
  }

  _Block_object_dispose(&v17, 8);
  return v11;
}

__CFDictionary *__cdecl __RegisterCacheDeleteOrphanDirHandlerService_block_invoke_109(id a1, int a2, __CFDictionary *a3)
{
  v4 = a3;
  v5 = [(__CFDictionary *)v4 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v6 = getRootVolume();
  v7 = [v5 isEqualToString:v6];

  v8 = 0;
  if (a2 == 4 && v7)
  {
    v8 = purge_orphans(4, 0);
  }

  v13[0] = @"CACHE_DELETE_VOLUME";
  v9 = [(__CFDictionary *)v4 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v13[1] = @"CACHE_DELETE_AMOUNT";
  v14[0] = v9;
  v10 = [NSNumber numberWithUnsignedLongLong:v8];
  v14[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v11;
}

@end