@interface NSSLegalDocumentsCache
+ (id)cachedReplyForPreferredLanguages:(id)languages;
+ (void)cacheReply:(id)reply forPreferredLanguages:(id)languages gizmoBuildVersion:(id)version;
+ (void)handleMemoryPressureEvent;
- (BOOL)isValidForPreferredLanguages:(id)languages gizmoBuildVersion:(id)version;
- (NSSLegalDocumentsCache)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSSLegalDocumentsCache

- (void)encodeWithCoder:(id)coder
{
  reply = self->_reply;
  coderCopy = coder;
  [coderCopy encodeObject:reply forKey:@"reply"];
  [coderCopy encodeObject:self->_preferredLanguages forKey:@"preferredLanguages"];
  [coderCopy encodeObject:self->_gizmoBuildVersion forKey:@"gizmoBuildVersion"];
}

- (NSSLegalDocumentsCache)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = NSSLegalDocumentsCache;
  v5 = [(NSSLegalDocumentsCache *)&v16 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v6, v7, objc_opt_class(), 0];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"reply"];
    reply = v5->_reply;
    v5->_reply = v9;

    v11 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"preferredLanguages"];
    preferredLanguages = v5->_preferredLanguages;
    v5->_preferredLanguages = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gizmoBuildVersion"];
    gizmoBuildVersion = v5->_gizmoBuildVersion;
    v5->_gizmoBuildVersion = v13;
  }

  return v5;
}

+ (void)cacheReply:(id)reply forPreferredLanguages:(id)languages gizmoBuildVersion:(id)version
{
  replyCopy = reply;
  languagesCopy = languages;
  versionCopy = version;
  v11 = [self cachedReplyForPreferredLanguages:languagesCopy];
  if (!v11)
  {
    v12 = +[NRPairedDeviceRegistry sharedInstance];
    v13 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v14 = [v12 getAllDevicesWithArchivedAltAccountDevicesMatching:v13];
    firstObject = [v14 firstObject];

    v16 = [firstObject valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
    v17 = v16;
    if (!versionCopy || !v16)
    {
      v21 = NSSLogForType();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = firstObject;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Device properties are unexectedly nil! Paired device: (%@)", buf, 0xCu);
      }

      goto LABEL_17;
    }

    v18 = [v16 stringByAppendingPathComponent:@"NanoSystemSettings/Caches/legal"];
    v19 = objc_opt_new();
    v20 = qword_10003DD78;
    qword_10003DD78 = v19;

    [qword_10003DD78 setReply:replyCopy];
    [qword_10003DD78 setPreferredLanguages:languagesCopy];
    [qword_10003DD78 setGizmoBuildVersion:versionCopy];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001CDA4;
    block[3] = &unk_100034B48;
    v21 = v18;
    v32 = v21;
    v29 = firstObject;
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

    firstObject = v29;
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

+ (id)cachedReplyForPreferredLanguages:(id)languages
{
  languagesCopy = languages;
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v6 = [v4 getAllDevicesWithArchivedAltAccountDevicesMatching:v5];
  firstObject = [v6 firstObject];

  v8 = [firstObject valueForProperty:NRDevicePropertySystemBuildVersion];
  v9 = [firstObject valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
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
      v23 = firstObject;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Pairing data store is unexpectedly nil! Paired device: (%@)", &v22, 0xCu);
    }

    reply = 0;
  }

  else
  {
    v14 = [qword_10003DD78 isValidForPreferredLanguages:languagesCopy gizmoBuildVersion:v8];
    if ((v14 & 1) == 0)
    {
      v15 = [v10 stringByAppendingPathComponent:@"NanoSystemSettings/Caches/legal"];
      v16 = [NSSet setWithObject:objc_opt_class()];
      v17 = [NSSKeyedArchiverUtil unarchiveObjectOfClasses:v16 withFile:v15];
      v18 = qword_10003DD78;
      qword_10003DD78 = v17;

      if (([qword_10003DD78 isValidForPreferredLanguages:languagesCopy gizmoBuildVersion:v8] & 1) == 0)
      {
        v19 = qword_10003DD78;
        qword_10003DD78 = 0;

        v20 = +[NSFileManager defaultManager];
        [v20 removeItemAtPath:v15 error:0];
      }
    }

    reply = [qword_10003DD78 reply];
  }

  return reply;
}

+ (void)handleMemoryPressureEvent
{
  v2 = qword_10003DD78;
  qword_10003DD78 = 0;
}

- (BOOL)isValidForPreferredLanguages:(id)languages gizmoBuildVersion:(id)version
{
  versionCopy = version;
  if ([(NSArray *)self->_preferredLanguages isEqualToArray:languages])
  {
    v7 = [(NSString *)self->_gizmoBuildVersion isEqualToString:versionCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end