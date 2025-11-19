@interface NSSLocaleInfoCache
+ (id)cachedReply;
+ (void)cacheReply:(id)a3 forGizmoBuildVersion:(id)a4;
+ (void)handleMemoryPressureEvent;
- (NSSLocaleInfoCache)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSSLocaleInfoCache

- (void)encodeWithCoder:(id)a3
{
  reply = self->_reply;
  v5 = a3;
  [v5 encodeObject:reply forKey:@"reply"];
  [v5 encodeObject:self->_gizmoBuildVersion forKey:@"gizmoBuildVersion"];
}

- (NSSLocaleInfoCache)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = NSSLocaleInfoCache;
  v5 = [(NSSLocaleInfoCache *)&v14 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v6, v7, objc_opt_class(), 0];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"reply"];
    reply = v5->_reply;
    v5->_reply = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gizmoBuildVersion"];
    gizmoBuildVersion = v5->_gizmoBuildVersion;
    v5->_gizmoBuildVersion = v11;
  }

  return v5;
}

+ (void)cacheReply:(id)a3 forGizmoBuildVersion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 cachedReply];
  if (!v8)
  {
    v9 = +[NRPairedDeviceRegistry sharedInstance];
    v10 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v11 = [v9 getAllDevicesWithArchivedAltAccountDevicesMatching:v10];
    v12 = [v11 firstObject];

    v13 = [v12 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
    v14 = v13;
    if (!v13)
    {
      v18 = NSSLogForType();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v12;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Device properties are unexectedly nil! Paired device: (%@)", buf, 0xCu);
      }

      goto LABEL_16;
    }

    v15 = [v13 stringByAppendingPathComponent:@"NanoSystemSettings/Caches/locale"];
    v16 = objc_opt_new();
    v17 = qword_10003DD88;
    qword_10003DD88 = v16;

    [qword_10003DD88 setReply:v6];
    [qword_10003DD88 setGizmoBuildVersion:v7];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001D6B0;
    block[3] = &unk_100034B48;
    v18 = v15;
    v28 = v18;
    if (qword_10003DD90 != -1)
    {
      dispatch_once(&qword_10003DD90, block);
    }

    v26 = 0;
    v19 = [NSSKeyedArchiverUtil archiveObject:qword_10003DD88 toFile:v18 options:268435457 error:&v26];
    v20 = v26;
    v21 = NSSLogForType();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (v22)
      {
        *buf = 0;
        v23 = "Successfully persisted cache";
        v24 = v21;
        v25 = 2;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
      }
    }

    else if (v22)
    {
      *buf = 138412290;
      v30 = v20;
      v23 = "Failed to pesist cache with error: (%@)";
      v24 = v21;
      v25 = 12;
      goto LABEL_14;
    }

LABEL_16:
    goto LABEL_17;
  }

  v9 = NSSLogForType();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Valid reply is already cached.", buf, 2u);
  }

LABEL_17:
}

+ (id)cachedReply
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  v5 = [v4 firstObject];

  v6 = [v5 valueForProperty:NRDevicePropertySystemBuildVersion];
  v7 = [v5 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = NSSLogForType();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Pairing data store is unexpectedly nil! Paired device: (%@)", &v20, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v12 = [qword_10003DD88 isValidForGizmoBuildVersion:v6];
    if ((v12 & 1) == 0)
    {
      v13 = [v8 stringByAppendingPathComponent:@"NanoSystemSettings/Caches/locale"];
      v14 = [NSSet setWithObject:objc_opt_class()];
      v15 = [NSSKeyedArchiverUtil unarchiveObjectOfClasses:v14 withFile:v13];
      v16 = qword_10003DD88;
      qword_10003DD88 = v15;

      if (([qword_10003DD88 isValidForGizmoBuildVersion:v6] & 1) == 0)
      {
        v17 = qword_10003DD88;
        qword_10003DD88 = 0;

        v18 = +[NSFileManager defaultManager];
        [v18 removeItemAtPath:v13 error:0];
      }
    }

    v11 = [qword_10003DD88 reply];
  }

  return v11;
}

+ (void)handleMemoryPressureEvent
{
  v2 = qword_10003DD88;
  qword_10003DD88 = 0;
}

@end