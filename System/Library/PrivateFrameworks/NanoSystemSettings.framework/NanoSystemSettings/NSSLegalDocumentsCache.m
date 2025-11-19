@interface NSSLegalDocumentsCache
+ (id)cachedReplyForPreferredLanguages:(id)a3;
+ (void)cacheReply:(id)a3 forPreferredLanguages:(id)a4 gizmoBuildVersion:(id)a5;
+ (void)handleMemoryPressureEvent;
- (BOOL)isValidForPreferredLanguages:(id)a3 gizmoBuildVersion:(id)a4;
- (NSSLegalDocumentsCache)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSSLegalDocumentsCache

- (void)encodeWithCoder:(id)a3
{
  reply = self->_reply;
  v5 = a3;
  [v5 encodeObject:reply forKey:@"reply"];
  [v5 encodeObject:self->_preferredLanguages forKey:@"preferredLanguages"];
  [v5 encodeObject:self->_gizmoBuildVersion forKey:@"gizmoBuildVersion"];
}

- (NSSLegalDocumentsCache)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = NSSLegalDocumentsCache;
  v5 = [(NSSLegalDocumentsCache *)&v16 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v6, v7, objc_opt_class(), 0];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"reply"];
    reply = v5->_reply;
    v5->_reply = v9;

    v11 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"preferredLanguages"];
    preferredLanguages = v5->_preferredLanguages;
    v5->_preferredLanguages = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gizmoBuildVersion"];
    gizmoBuildVersion = v5->_gizmoBuildVersion;
    v5->_gizmoBuildVersion = v13;
  }

  return v5;
}

+ (void)cacheReply:(id)a3 forPreferredLanguages:(id)a4 gizmoBuildVersion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 cachedReplyForPreferredLanguages:v9];
  if (!v11)
  {
    v12 = +[NRPairedDeviceRegistry sharedInstance];
    v13 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v14 = [v12 getAllDevicesWithArchivedAltAccountDevicesMatching:v13];
    v15 = [v14 firstObject];

    v16 = [v15 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
    v17 = v16;
    if (!v10 || !v16)
    {
      v21 = NSSLogForType();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = v15;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Device properties are unexectedly nil! Paired device: (%@)", buf, 0xCu);
      }

      goto LABEL_17;
    }

    v18 = [v16 stringByAppendingPathComponent:@"NanoSystemSettings/Caches/legal"];
    v19 = objc_opt_new();
    v20 = qword_10003DD78;
    qword_10003DD78 = v19;

    [qword_10003DD78 setReply:v8];
    [qword_10003DD78 setPreferredLanguages:v9];
    [qword_10003DD78 setGizmoBuildVersion:v10];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001CDA4;
    block[3] = &unk_100034B48;
    v21 = v18;
    v32 = v21;
    v29 = v15;
    if (qword_10003DD80 != -1)
    {
      dispatch_once(&qword_10003DD80, block);
    }

    v30 = 0;
    v22 = [NSSKeyedArchiverUtil archiveObject:qword_10003DD78 toFile:v21 options:268435457 error:&v30];
    v23 = v30;
    v24 = NSSLogForType();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      if (v25)
      {
        *buf = 0;
        v26 = "Successfully persisted cache";
        v27 = v24;
        v28 = 2;
LABEL_15:
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
      }
    }

    else if (v25)
    {
      *buf = 138412290;
      v34 = v23;
      v26 = "Failed to pesist cache with error: (%@)";
      v27 = v24;
      v28 = 12;
      goto LABEL_15;
    }

    v15 = v29;
LABEL_17:

    goto LABEL_18;
  }

  v12 = NSSLogForType();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Valid reply is already cached.", buf, 2u);
  }

LABEL_18:
}

+ (id)cachedReplyForPreferredLanguages:(id)a3
{
  v3 = a3;
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v6 = [v4 getAllDevicesWithArchivedAltAccountDevicesMatching:v5];
  v7 = [v6 firstObject];

  v8 = [v7 valueForProperty:NRDevicePropertySystemBuildVersion];
  v9 = [v7 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = NSSLogForType();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Pairing data store is unexpectedly nil! Paired device: (%@)", &v22, 0xCu);
    }

    v13 = 0;
  }

  else
  {
    v14 = [qword_10003DD78 isValidForPreferredLanguages:v3 gizmoBuildVersion:v8];
    if ((v14 & 1) == 0)
    {
      v15 = [v10 stringByAppendingPathComponent:@"NanoSystemSettings/Caches/legal"];
      v16 = [NSSet setWithObject:objc_opt_class()];
      v17 = [NSSKeyedArchiverUtil unarchiveObjectOfClasses:v16 withFile:v15];
      v18 = qword_10003DD78;
      qword_10003DD78 = v17;

      if (([qword_10003DD78 isValidForPreferredLanguages:v3 gizmoBuildVersion:v8] & 1) == 0)
      {
        v19 = qword_10003DD78;
        qword_10003DD78 = 0;

        v20 = +[NSFileManager defaultManager];
        [v20 removeItemAtPath:v15 error:0];
      }
    }

    v13 = [qword_10003DD78 reply];
  }

  return v13;
}

+ (void)handleMemoryPressureEvent
{
  v2 = qword_10003DD78;
  qword_10003DD78 = 0;
}

- (BOOL)isValidForPreferredLanguages:(id)a3 gizmoBuildVersion:(id)a4
{
  v6 = a4;
  if ([(NSArray *)self->_preferredLanguages isEqualToArray:a3])
  {
    v7 = [(NSString *)self->_gizmoBuildVersion isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end