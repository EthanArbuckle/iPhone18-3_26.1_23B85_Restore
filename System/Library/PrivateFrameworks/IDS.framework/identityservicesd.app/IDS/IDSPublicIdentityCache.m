@interface IDSPublicIdentityCache
+ (id)sharedInstance;
- (BOOL)addIdentity:(id)a3 forToken:(id)a4 uri:(id)a5 service:(id)a6 error:(id *)a7;
- (BOOL)addIdentityData:(id)a3 forToken:(id)a4 uri:(id)a5 service:(id)a6 error:(id *)a7;
- (BOOL)cleanupWithError:(id *)a3;
- (IDSPublicIdentityCache)init;
- (IDSPublicIdentityCache)initWithPath:(id)a3 withPersistenceManager:(id)a4;
- (id)identityDataForToken:(id)a3 uri:(id)a4 service:(id)a5 error:(id *)a6;
- (id)identityForToken:(id)a3 uri:(id)a4 service:(id)a5 error:(id *)a6;
- (id)keyForToken:(id)a3 uri:(id)a4 service:(id)a5;
- (id)recentURIsWithinTimeInterval:(double)a3 forService:(id)a4 error:(id *)a5;
@end

@implementation IDSPublicIdentityCache

+ (id)sharedInstance
{
  if (qword_100CBCDE0 != -1)
  {
    sub_1009150B8();
  }

  v3 = qword_100CBCDE8;

  return v3;
}

- (IDSPublicIdentityCache)init
{
  v3 = CSDBGetMobileUserDirectory();
  if (v3)
  {
    v4 = [NSString stringWithUTF8String:v3];
  }

  else
  {
    v4 = @"~";
  }

  v11[0] = v4;
  v11[1] = @"/Library/IdentityServices/ids-pub-id.db";
  v5 = [NSArray arrayWithObjects:v11 count:2];
  v6 = [NSString pathWithComponents:v5];

  if (v3)
  {
  }

  v7 = +[IDSDaemon sharedInstance];
  v8 = [v7 persistenceManager];
  v9 = [(IDSPublicIdentityCache *)self initWithPath:v6 withPersistenceManager:v8];

  return v9;
}

- (IDSPublicIdentityCache)initWithPath:(id)a3 withPersistenceManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = IDSPublicIdentityCache;
  v8 = [(IDSPublicIdentityCache *)&v12 init];
  if (v8)
  {
    v9 = [[IDSKVStore alloc] initWithPath:v6 storeName:@"PublicIdentityCache" dataProtectionClass:0];
    kvStore = v8->_kvStore;
    v8->_kvStore = v9;

    objc_storeStrong(&v8->_persistenceManager, a4);
  }

  return v8;
}

- (id)keyForToken:(id)a3 uri:(id)a4 service:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [a3 __imHexString];
  v10 = [NSString stringWithFormat:@"%@-%@-%@", v9, v8, v7];

  return v10;
}

- (BOOL)addIdentityData:(id)a3 forToken:(id)a4 uri:(id)a5 service:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a5;
  if (_os_feature_enabled_impl())
  {
    [(IDSQuerySDPersistenceManager *)self->_persistenceManager savePublicIdentityData:v12 token:v13 uri:v15 service:v14 completion:&stru_100BD7508];
    v16 = 1;
  }

  else
  {
    v17 = [v15 prefixedURI];

    v15 = [(IDSPublicIdentityCache *)self keyForToken:v13 uri:v17 service:v14];

    v16 = [(IDSKVStore *)self->_kvStore persistData:v12 forKey:v15 error:a7];
  }

  return v16;
}

- (id)identityDataForToken:(id)a3 uri:(id)a4 service:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  if (_os_feature_enabled_impl())
  {
    [(IDSQuerySDPersistenceManager *)self->_persistenceManager publicIdentityDataFor:v10 uri:v12 service:v11];
  }

  else
  {
    v13 = [v12 prefixedURI];

    v12 = [(IDSPublicIdentityCache *)self keyForToken:v10 uri:v13 service:v11];

    [(IDSKVStore *)self->_kvStore dataForKey:v12 error:a6];
  }
  v14 = ;

  return v14;
}

- (BOOL)addIdentity:(id)a3 forToken:(id)a4 uri:(id)a5 service:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v11 dataRepresentationWithError:a7];
  if (v15)
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = IDSLoggableDescriptionForTokenOnService();
      v18 = [v13 prefixedURI];
      v19 = IDSLoggableDescriptionForHandleOnService();
      *buf = 138413058;
      v30 = v11;
      v31 = 2112;
      v32 = v17;
      v33 = 2112;
      v34 = v19;
      v35 = 2112;
      v36 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Adding identity to last resort DB { identity: %@, token: %@, uri: %@, service: %@ }", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v20 = IDSLoggableDescriptionForTokenOnService();
      v21 = [v13 prefixedURI];
      v26 = IDSLoggableDescriptionForHandleOnService();
      v27 = v14;
      v24 = v11;
      v25 = v20;
      _IDSLogV();
    }

    v22 = [(IDSPublicIdentityCache *)self addIdentityData:v15 forToken:v12 uri:v13 service:v14 error:a7, v24, v25, v26, v27];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)identityForToken:(id)a3 uri:(id)a4 service:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = IDSLoggableDescriptionForTokenOnService();
    v15 = IDSLoggableDescriptionForTokenOnService();
    *buf = 138412802;
    v29 = v14;
    v30 = 2112;
    v31 = v15;
    v32 = 2112;
    v33 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Checking last resort DB for identity { token: %@, uri: %@, service: %@ }", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v16 = IDSLoggableDescriptionForTokenOnService();
    v25 = IDSLoggableDescriptionForTokenOnService();
    v26 = v12;
    v24 = v16;
    _IDSLogV();
  }

  v17 = [(IDSPublicIdentityCache *)self identityDataForToken:v10 uri:v11 service:v12 error:a6, v24, v25, v26];
  if (v17)
  {
    v18 = [IDSMPPublicDeviceIdentityContainer identityWithDataRepresentation:v17 error:a6];
    if (v18)
    {
      v19 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = IDSLoggableDescriptionForTokenOnService();
        v21 = IDSLoggableDescriptionForTokenOnService();
        *buf = 138413058;
        v29 = v18;
        v30 = 2112;
        v31 = v20;
        v32 = 2112;
        v33 = v21;
        v34 = 2112;
        v35 = v12;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Found identity in last resort DB { identity: %@, token: %@, uri: %@, service: %@ }", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v22 = IDSLoggableDescriptionForTokenOnService();
        v27 = IDSLoggableDescriptionForTokenOnService();
        _IDSLogV();
      }
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)cleanupWithError:(id *)a3
{
  v5 = +[IDSServerBag sharedInstance];
  v6 = [v5 objectForKey:@"public-identity-clear-time-seconds"];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = v6;
  }

  else
  {
    v7 = &off_100C3B9E0;
  }

  v8 = +[IDSServerBag sharedInstance];
  v9 = [v8 objectForKey:@"public-identity-future-clear-time-seconds"];

  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = v9;
  }

  else
  {
    v10 = &off_100C3B9E0;
  }

  v11 = +[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", -[v7 integerValue]);
  v12 = +[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", [v10 integerValue]);
  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Cleaning last resort DB with date range %@ to %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (_os_feature_enabled_impl())
  {
    persistenceManager = self->_persistenceManager;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100324BF8;
    v17[3] = &unk_100BD71D8;
    v18 = v11;
    v19 = v12;
    [(IDSQuerySDPersistenceManager *)persistenceManager deletePublicIdentitiesBeforeDate:v18 afterDate:v19 completion:v17];

    v15 = 1;
  }

  else
  {
    v15 = [(IDSKVStore *)self->_kvStore deleteEntriesBeforeDate:v11 afterDate:v12 error:a3];
  }

  return v15;
}

- (id)recentURIsWithinTimeInterval:(double)a3 forService:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [NSDate dateWithTimeIntervalSinceNow:-a3];
  if (_os_feature_enabled_impl())
  {
    v10 = [(IDSQuerySDPersistenceManager *)self->_persistenceManager recentURIsSinceDate:v9 service:v8];
    v11 = v10;
    if (!v10 || ![v10 count])
    {
      v12 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v28 = v8;
        v29 = 2112;
        v30 = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found no recent URIs for service: %@ in last resort cache since date %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v23 = v8;
        v24 = v9;
        _IDSLogV();
      }

LABEL_26:
      v19 = [NSSet set:v23];
      goto LABEL_27;
    }
  }

  else
  {
    v13 = [(IDSKVStore *)self->_kvStore storedKeysAfterDate:v9 error:a5];
    v11 = v13;
    if (!v13 || ![v13 count])
    {
      v21 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v28 = v8;
        v29 = 2112;
        v30 = v9;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Found no recent URIs for service: %@ in last resort cache since date %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v23 = v8;
        v24 = v9;
        _IDSLogV();
      }

      goto LABEL_26;
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10032517C;
    v25[3] = &unk_100BD7530;
    v26 = v8;
    v14 = [v11 __imArrayByApplyingBlock:v25];

    v11 = v14;
  }

  v15 = [v11 __imArrayByFilteringWithBlock:&stru_100BD7570];
  v16 = v15;
  v17 = &__NSArray0__struct;
  if (v15)
  {
    v17 = v15;
  }

  v18 = v17;

  v19 = [NSSet setWithArray:v18];
  v20 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    v31 = 2112;
    v32 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Fetched recent URIs for service: %@ in last resort cache since date %@ { URIs: %@ }", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

LABEL_27:

  return v19;
}

@end