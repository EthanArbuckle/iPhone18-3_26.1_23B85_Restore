@interface IXSCacheDelete
+ (id)configureService;
- (BOOL)_onQueue_validateVolumeKey:(id)key;
- (BOOL)_registerCacheDeleteInfoCallbacks;
- (IXSCacheDelete)init;
- (id)_purge:(id)_purge urgency:(int)urgency;
- (id)_purgeable:(id)_purgeable urgency:(int)urgency;
- (unint64_t)_onQueue_sizeForPurgeableCoordinators:(id *)coordinators;
@end

@implementation IXSCacheDelete

- (unint64_t)_onQueue_sizeForPurgeableCoordinators:(id *)coordinators
{
  internalQueue = [(IXSCacheDelete *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = objc_opt_new();
  v6 = +[IXSCoordinatorManager sharedInstance];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10000983C;
  v13 = &unk_100101150;
  v15 = &v16;
  v7 = v5;
  v14 = v7;
  [v6 enumerateCoordinators:&v10];

  if (coordinators)
  {
    *coordinators = [v7 copy];
  }

  v8 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v8;
}

- (BOOL)_onQueue_validateVolumeKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[IXSCacheDelete _onQueue_validateVolumeKey:]";
      v14 = 2112;
      v15 = keyCopy;
      v10 = "%s: Unexpectedly received non string volume key: %@";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, &v12, 0x16u);
    }

LABEL_9:

    v8 = 0;
    goto LABEL_10;
  }

  v4 = +[IXGlobalConfiguration sharedInstance];
  userVolumeURL = [v4 userVolumeURL];
  path = [userVolumeURL path];
  v7 = [keyCopy hasPrefix:path];

  if ((v7 & 1) == 0)
  {
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[IXSCacheDelete _onQueue_validateVolumeKey:]";
      v14 = 2112;
      v15 = keyCopy;
      v10 = "%s: Nothing to purge on volume: %@";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v8 = 1;
LABEL_10:

  return v8;
}

- (id)_purge:(id)_purge urgency:(int)urgency
{
  _purgeCopy = _purge;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10000A0B8;
  v20 = sub_10000A0C8;
  v21 = 0;
  internalQueue = [(IXSCacheDelete *)self internalQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000A0D0;
  v11[3] = &unk_1001011A0;
  v12 = _purgeCopy;
  selfCopy = self;
  urgencyCopy = urgency;
  v14 = &v16;
  v8 = _purgeCopy;
  dispatch_sync(internalQueue, v11);

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v9;
}

- (id)_purgeable:(id)_purgeable urgency:(int)urgency
{
  _purgeableCopy = _purgeable;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10000A0B8;
  v18 = sub_10000A0C8;
  v19 = 0;
  internalQueue = [(IXSCacheDelete *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A440;
  block[3] = &unk_1001011C8;
  v11 = _purgeableCopy;
  selfCopy = self;
  v13 = &v14;
  v7 = _purgeableCopy;
  dispatch_sync(internalQueue, block);

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

- (BOOL)_registerCacheDeleteInfoCallbacks
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000A6DC;
  v9[3] = &unk_1001011F0;
  v9[4] = self;
  v3 = objc_retainBlock(v9);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000A754;
  v8[3] = &unk_1001011F0;
  v8[4] = self;
  v4 = objc_retainBlock(v8);
  v5 = CacheDeleteRegisterInfoCallbacks();
  if (v5 == -1)
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[IXSCacheDelete _registerCacheDeleteInfoCallbacks]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed to register CacheDelete callbacks", buf, 0xCu);
    }
  }

  return v5 != -1;
}

- (IXSCacheDelete)init
{
  v8.receiver = self;
  v8.super_class = IXSCacheDelete;
  v2 = [(IXSCacheDelete *)&v8 init];
  if (v2 && (dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v3 = objc_claimAutoreleasedReturnValue(), v4 = dispatch_queue_create("com.apple.installcoordination.cachedelete.internal", v3), internalQueue = v2->_internalQueue, v2->_internalQueue = v4, internalQueue, v3, [(IXSCacheDelete *)v2 _registerCacheDeleteInfoCallbacks]))
  {
    v6 = v2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)configureService
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A90C;
  block[3] = &unk_100100D40;
  block[4] = self;
  if (qword_100121C58 != -1)
  {
    dispatch_once(&qword_100121C58, block);
  }

  v2 = qword_100121C50;

  return v2;
}

@end