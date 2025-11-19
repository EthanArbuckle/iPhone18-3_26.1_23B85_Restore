@interface IDSRegistrationKeychainManager
+ (IDSRegistrationKeychainManager)sharedInstance;
+ (id)_UpdateKeychainDataDictToCurrentVersion:(id)a3;
+ (id)_UpdateKeychainDataDictV0ToV1:(id)a3;
+ (id)_UpdateKeychainDataDictV1ToV2:(id)a3;
+ (id)_UpdateKeychainDataDictV2ToV3:(id)a3;
+ (id)keychainAccountForVersion:(unint64_t)a3;
+ (id)keychainServiceForVersion:(unint64_t)a3;
- (BOOL)__saveToKeychain;
- (BOOL)_saveToKeychain;
- (BOOL)addRegistration:(id)a3;
- (BOOL)removeAllRegistrations;
- (BOOL)removeRegistration:(id)a3;
- (IDSRegistrationKeychainManager)init;
- (NSArray)registrations;
- (id)authenticationCertForID:(id)a3;
- (id)registrationWithServiceType:(id)a3 registrationType:(int)a4 value:(id)a5;
- (id)smsIDs;
- (id)smsSignatureForID:(id)a3;
- (id)smsSignatureMechanismForID:(id)a3;
- (id)tempPhoneCredentialForID:(id)a3;
- (void)_flush;
- (void)_loadIfNeeded;
- (void)_purgeTimerFiredOnMain;
- (void)_reloadFromDictionary:(id)a3;
- (void)_setPurgeTimer;
- (void)dealloc;
- (void)reloadFromKeychain;
- (void)setAuthenticationCert:(id)a3 forID:(id)a4;
- (void)setSMSSignature:(id)a3 mainID:(id)a4;
- (void)setSMSSignatureMechanism:(id)a3 mainID:(id)a4;
- (void)setTempPhoneCredential:(id)a3 forID:(id)a4;
- (void)systemDidFinishMigration;
@end

@implementation IDSRegistrationKeychainManager

- (void)_loadIfNeeded
{
  [(NSRecursiveLock *)self->_lock lock];
  if (!self->_loaded)
  {
    self->_loaded = 1;
    [(IDSRegistrationKeychainManager *)self reloadFromKeychain];
  }

  [(NSRecursiveLock *)self->_lock unlock];

  [(IDSRegistrationKeychainManager *)self _setPurgeTimer];
}

- (void)_setPurgeTimer
{
  v3 = im_primary_queue();
  dispatch_async(v3, self->_purgeEnqueueBlock);
}

+ (IDSRegistrationKeychainManager)sharedInstance
{
  if (qword_100CBEE40 != -1)
  {
    sub_1009288C8();
  }

  v3 = qword_100CBEE48;

  return v3;
}

- (void)reloadFromKeychain
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = 0;
  v4 = 0;
  v39 = 0;
  v5 = IDSKeychainBlobCurrentVersion;
  v36 = IDSKeychainBlobCurrentVersion;
  while (1)
  {
    v6 = v3;
    v7 = [objc_opt_class() keychainServiceForVersion:v5];
    v8 = [objc_opt_class() keychainAccountForVersion:v5];
    v9 = [objc_opt_class() keychainAccessGroupForVersion:v5];
    v10 = +[IMRGLog keychainManager];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109890;
      *v41 = v5;
      *&v41[4] = 2112;
      *&v41[6] = v7;
      v42 = 2112;
      v43 = v8;
      v44 = 2112;
      v45 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Attempting to load V%d keychain blob from service: %@   account: %@   accessGroup: %@", buf, 0x26u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v34 = v8;
      v35 = v9;
      v31 = v5;
      v33 = v7;
      MarcoLogRegistration();
    }

    v11 = [IDSDependencyProvider keychainAdapter:v31];
    v38 = v6;
    v12 = [v11 getKeychainData:&v38 service:v7 account:v8 accessGroup:v9 error:&v39];
    v3 = v38;

    if (v12)
    {
      if (v3)
      {
        v15 = +[IMRGLog keychainManager];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v41 = v5;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "  => Found V%d keychain blob", buf, 8u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          v31 = v5;
          MarcoLogRegistration();
        }

        goto LABEL_27;
      }

      goto LABEL_20;
    }

    if (v39 == -25300)
    {
      v14 = +[IMRGLog keychainManager];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "  => No blob found in keychain", buf, 2u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_20;
      }

LABEL_19:
      MarcoLogRegistration();
      goto LABEL_20;
    }

    if (v39)
    {
      break;
    }

LABEL_20:

    ++v4;
    --v5;
    if (v4 > v36)
    {
      v5 = 0;
LABEL_27:
      if ([v3 length])
      {
        v37 = 0;
        v7 = [NSPropertyListSerialization propertyListWithData:v3 options:0 format:0 error:&v37];
        v17 = v37;
        if (v7)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && !v17)
          {
            goto LABEL_45;
          }
        }

        v18 = +[IMRGLog keychainManager];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v41 = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Unable to parse property list: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          v32 = v17;
          MarcoLogRegistration();
        }

        v19 = [objc_opt_class() keychainServiceForVersion:v5];
        v20 = [objc_opt_class() keychainAccountForVersion:v5];
        v21 = +[IMRGLog keychainManager];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109634;
          *v41 = v5;
          *&v41[4] = 2112;
          *&v41[6] = v19;
          v42 = 2112;
          v43 = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Removing invalid keychain data (V%d) for service: %@   account: %@", buf, 0x1Cu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          v33 = v19;
          v34 = v20;
          v32 = v5;
          MarcoLogRegistration();
        }

        v39 = 0;
        v22 = [IDSDependencyProvider keychainAdapter:v32];
        v23 = [v22 removeKeychainDataOnService:v19 account:v20 error:&v39];

        if ((v23 & 1) == 0)
        {
          v24 = +[IMRGLog keychainManager];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *v41 = v39;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "  => Unable to remove invalid keychain blob (error: %d)", buf, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            v32 = v39;
            MarcoLogRegistration();
          }
        }

        if (v7)
        {
LABEL_45:
          v25 = [v7 objectForKey:{@"version", v32}];
          v26 = v25;
          if (v25)
          {
            v27 = [v25 unsignedIntegerValue];
          }

          else
          {
            v27 = 0;
          }

          if (v27 < v36)
          {
            v28 = +[IMRGLog keychainManager];
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *v41 = v27;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Keychain dictionary V%d needs upgrade", buf, 8u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              v32 = v27;
              MarcoLogRegistration();
            }

            v29 = [IDSRegistrationKeychainManager _UpdateKeychainDataDictToCurrentVersion:v7, v32];

            v7 = v29;
          }
        }
      }

      else
      {
        v7 = 0;
      }

      [(IDSRegistrationKeychainManager *)self _reloadFromDictionary:v7, v32];
      [(NSRecursiveLock *)self->_lock unlock];
      goto LABEL_57;
    }
  }

  if (v39 != -34019)
  {
    v13 = +[IMRGLog keychainManager];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v41 = v39;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "  => Failed to get keychain blob (error: %d)", buf, 8u);
    }

    if (!os_log_shim_legacy_logging_enabled())
    {
      goto LABEL_20;
    }

    v31 = v39;
    goto LABEL_19;
  }

  v30 = +[IMRGLog keychainManager];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "  => Keychain upgrade pending, waiting to load registrations...", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogRegistration();
  }

  self->_loaded = 0;

LABEL_57:
}

- (BOOL)_saveToKeychain
{
  [(NSRecursiveLock *)self->_lock lock];
  if ((byte_100CBEE50 & 1) == 0)
  {
    byte_100CBEE50 = 1;
    im_dispatch_after_primary_queue();
  }

  [(NSRecursiveLock *)self->_lock unlock];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, IDSRegistrationKeychainChangedNotification, 0, 0, 0);
  return 1;
}

- (BOOL)__saveToKeychain
{
  if (self->_loaded)
  {
    [(NSRecursiveLock *)self->_lock lock];
    byte_100CBEE50 = 0;
    v3 = +[IMRGLog keychainManager];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "** Saving registration data to keychain: Begin **", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogRegistration();
    }

    v62 = objc_alloc_init(NSMutableDictionary);
    v64 = objc_alloc_init(NSMutableArray);
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v61 = self;
    obj = self->_registrationData;
    v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v72 objects:v80 count:16];
    v5 = &uuid_unparse_upper_ptr;
    if (v4)
    {
      v6 = v4;
      v7 = *v73;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v73 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v72 + 1) + 8 * i);
          v10 = [v9 dictionaryRepresentation];
          v11 = [v5[504] keychainManager];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = [v9 serviceType];
            v13 = [v9 mainID];
            *buf = 138412546;
            v77 = v12;
            v78 = 2112;
            v79 = v13;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "  => Adding registration for service: %@  ID: %@  to keychain dictionary", buf, 0x16u);

            v5 = &uuid_unparse_upper_ptr;
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            v14 = [v9 serviceType];
            [v9 mainID];
            v60 = v55 = v14;
            MarcoLogRegistration();

            v5 = &uuid_unparse_upper_ptr;
          }

          v15 = [v5[504] keychainManager];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v9 description];
            *buf = 138412290;
            v77 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "     => Registration %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            v56 = [v9 description];
            MarcoLogRegistration();
          }

          v17 = [v5[504] keychainManager];
          v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
          if (v10)
          {
            if (v18)
            {
              v19 = [v10 count];
              *buf = 134217984;
              v77 = v19;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "    => Dictionary has %lu key-value pairs", buf, 0xCu);
            }

            [v64 addObject:v10];
          }

          else
          {
            if (v18)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "    => Not saving, got a nil dictionary representation", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              MarcoLogRegistration();
            }
          }
        }

        v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v72 objects:v80 count:16];
      }

      while (v6);
    }

    v20 = objc_opt_class();
    v21 = IDSKeychainBlobCurrentVersion;
    v22 = [v20 keychainServiceForVersion:IDSKeychainBlobCurrentVersion];
    v23 = [objc_opt_class() keychainAccountForVersion:v21];
    v24 = [v5[504] keychainManager];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v64 count];
      *buf = 134217984;
      v77 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Final keychain data array count: %lu", buf, 0xCu);
    }

    v26 = v62;
    if ([v64 count])
    {
      [v62 setObject:v64 forKey:@"data"];
    }

    v27 = [NSNumber numberWithUnsignedInteger:v21];
    [v62 setObject:v27 forKey:@"version"];

    if ([(NSMutableDictionary *)v61->_authenticationCerts count])
    {
      [v62 setObject:v61->_authenticationCerts forKey:@"auth-certs"];
      v28 = &uuid_unparse_upper_ptr;
      v29 = +[IMRGLog keychainManager];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [(NSMutableDictionary *)v61->_authenticationCerts count];
        v31 = [(NSMutableDictionary *)v61->_authenticationCerts allKeys];
        *buf = 134218242;
        v77 = v30;
        v28 = &uuid_unparse_upper_ptr;
        v78 = 2112;
        v79 = v31;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "  => Adding %lu auth certs for users %@", buf, 0x16u);

        v26 = v62;
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        v32 = [(NSMutableDictionary *)v61->_authenticationCerts count];
        [(NSMutableDictionary *)v61->_authenticationCerts allKeys];
        v60 = v55 = v32;
        MarcoLogRegistration();

        v28 = &uuid_unparse_upper_ptr;
      }
    }

    else
    {
      v28 = &uuid_unparse_upper_ptr;
      v35 = +[IMRGLog keychainManager];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "  => We don't have any auth certs to save", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        MarcoLogRegistration();
      }
    }

    if ([(NSMutableDictionary *)v61->_smsSignatures count:v55])
    {
      [v26 setObject:v61->_smsSignatures forKey:@"sms-signatures"];
      v36 = [v28[504] keychainManager];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [(NSMutableDictionary *)v61->_smsSignatures count];
        *buf = 134217984;
        v77 = v37;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "  => Adding %lu SMS signatures", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        v57 = [(NSMutableDictionary *)v61->_smsSignatures count];
LABEL_55:
        MarcoLogRegistration();
      }
    }

    else
    {
      v38 = [v28[504] keychainManager];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "  => We don't have any SMS signatures to save", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_55;
      }
    }

    if ([(NSMutableDictionary *)v61->_smsSignatureMechanisms count])
    {
      [v26 setObject:v61->_smsSignatureMechanisms forKey:@"sms-signature-mechanisms"];
      v39 = [v28[504] keychainManager];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [(NSMutableDictionary *)v61->_smsSignatureMechanisms count];
        *buf = 134217984;
        v77 = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "  => Adding %lu SMS signature types", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        v58 = [(NSMutableDictionary *)v61->_smsSignatureMechanisms count];
LABEL_64:
        MarcoLogRegistration();
      }
    }

    else
    {
      v41 = [v28[504] keychainManager];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "  => We don't have any SMS signature types to save", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_64;
      }
    }

    if ([(NSMutableDictionary *)v61->_tempPhoneCredentials count])
    {
      [v26 setObject:v61->_tempPhoneCredentials forKey:@"temp-phone-creds"];
      v42 = [v28[504] keychainManager];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [(NSMutableDictionary *)v61->_tempPhoneCredentials count];
        *buf = 134217984;
        v77 = v43;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "  => Adding %lu temp phone credentials", buf, 0xCu);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_74;
      }

      v59 = [(NSMutableDictionary *)v61->_tempPhoneCredentials count];
    }

    else
    {
      v44 = [v28[504] keychainManager];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "  => We don't have any temp phone credentials to save", buf, 2u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_74;
      }
    }

    MarcoLogRegistration();
LABEL_74:
    v45 = arc4random();
    v46 = [NSNumber numberWithUnsignedInt:v45];
    [v26 setObject:v46 forKey:@"save-identifier"];

    v71 = 0;
    v47 = [NSPropertyListSerialization dataWithPropertyList:v26 format:200 options:0 error:&v71];
    v48 = v71;
    v34 = v47 != 0;
    if (v47)
    {
      v49 = [objc_opt_class() keychainAccessGroupForVersion:v21];
      saveQueue = v61->_saveQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002445C;
      block[3] = &unk_100BDF658;
      v66 = v47;
      v67 = v22;
      v68 = v23;
      v69 = v49;
      v70 = v45;
      v51 = v49;
      dispatch_async(saveQueue, block);

      v52 = v64;
    }

    else
    {
      v53 = +[IMRGLog keychainManager];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v77 = v48;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Unable to build property list data: %@", buf, 0xCu);
      }

      v52 = v64;
      if (os_log_shim_legacy_logging_enabled())
      {
        v59 = v48;
        MarcoLogRegistration();
      }
    }

    [(NSRecursiveLock *)v61->_lock unlock];

    return v34;
  }

  v33 = +[IMRGLog keychainManager];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "** We haven't loaded anything, ignoring save to keychain **", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogRegistration();
  }

  return 0;
}

- (IDSRegistrationKeychainManager)init
{
  v23.receiver = self;
  v23.super_class = IDSRegistrationKeychainManager;
  v2 = [(IDSRegistrationKeychainManager *)&v23 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    registrationData = v2->_registrationData;
    v2->_registrationData = v3;

    v5 = +[IMSystemMonitor sharedInstance];
    [v5 _addEarlyListener:v2];

    v6 = objc_alloc_init(NSRecursiveLock);
    lock = v2->_lock;
    v2->_lock = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.identityservicesd.registrationKeychainManager-save", v8);
    saveQueue = v2->_saveQueue;
    v2->_saveQueue = v9;

    objc_initWeak(&location, v2);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10051C7E4;
    v20[3] = &unk_100BD9D38;
    objc_copyWeak(&v21, &location);
    v11 = [v20 copy];
    purgeCancelBlock = v2->_purgeCancelBlock;
    v2->_purgeCancelBlock = v11;

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10001D3CC;
    v17[3] = &unk_100BDA6B0;
    objc_copyWeak(&v19, &location);
    v13 = v2;
    v18 = v13;
    v14 = [v17 copy];
    purgeEnqueueBlock = v13->_purgeEnqueueBlock;
    v13->_purgeEnqueueBlock = v14;

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[IMSystemMonitor sharedInstance];
  [v3 _removeEarlyListener:self];

  v4.receiver = self;
  v4.super_class = IDSRegistrationKeychainManager;
  [(IDSRegistrationKeychainManager *)&v4 dealloc];
}

- (void)_purgeTimerFiredOnMain
{
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10051C924;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)systemDidFinishMigration
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reloading keychain information: %@", &v4, 0xCu);
  }

  [(IDSRegistrationKeychainManager *)self reloadFromKeychain];
}

+ (id)keychainServiceForVersion:(unint64_t)a3
{
  if (a3)
  {
    v4 = @"com.apple.facetime";
  }

  else
  {
    v4 = IDSKeychainServiceNameV0;
  }

  return v4;
}

+ (id)keychainAccountForVersion:(unint64_t)a3
{
  if (a3)
  {
    v3 = [NSString stringWithFormat:@"%@V%d", @"registration", a3];
  }

  else
  {
    v3 = IDSKeychainAccountNameV0;
  }

  return v3;
}

- (void)_flush
{
  v3 = im_primary_queue();
  dispatch_async(v3, self->_purgeCancelBlock);

  [(NSRecursiveLock *)self->_lock lock];
  if (self->_loaded)
  {
    v4 = +[IMRGLog keychainManager];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NSMutableArray *)self->_registrationData count];
      v6 = [(NSMutableDictionary *)self->_authenticationCerts count];
      *buf = 67109376;
      v15 = v5;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Forcing save of registration objects from keychain dictionary, %d entries  %d auth certs", buf, 0xEu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v10 = [(NSMutableArray *)self->_registrationData count];
      v12 = [(NSMutableDictionary *)self->_authenticationCerts count];
      MarcoLogRegistration();
    }

    [(IDSRegistrationKeychainManager *)self __saveToKeychain:v10];
    v7 = +[IMRGLog keychainManager];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(NSMutableArray *)self->_registrationData count];
      v9 = [(NSMutableDictionary *)self->_authenticationCerts count];
      *buf = 67109376;
      v15 = v8;
      v16 = 1024;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Flushing registration objects from keychain dictionary, %d entries  %d auth certs", buf, 0xEu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v11 = [(NSMutableArray *)self->_registrationData count];
      v13 = [(NSMutableDictionary *)self->_authenticationCerts count];
      MarcoLogRegistration();
    }

    [(NSMutableArray *)self->_registrationData removeAllObjects:v11];
    [(NSMutableDictionary *)self->_authenticationCerts removeAllObjects];
    [(NSMutableDictionary *)self->_smsSignatures removeAllObjects];
    [(NSMutableDictionary *)self->_tempPhoneCredentials removeAllObjects];
    self->_loaded = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)_reloadFromDictionary:(id)a3
{
  v4 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [v4 objectForKey:@"data"];
  [(NSMutableArray *)self->_registrationData removeAllObjects];
  [(NSMutableDictionary *)self->_authenticationCerts removeAllObjects];
  v62 = self;
  authenticationCerts = self->_authenticationCerts;
  if (!authenticationCerts)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v8 = self->_authenticationCerts;
    self->_authenticationCerts = Mutable;

    authenticationCerts = self->_authenticationCerts;
  }

  v9 = [v4 objectForKey:@"auth-certs"];
  [(NSMutableDictionary *)authenticationCerts addEntriesFromDictionary:v9];

  v10 = +[IMRGLog keychainManager];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(NSMutableDictionary *)self->_authenticationCerts count];
    v12 = [(NSMutableDictionary *)self->_authenticationCerts allKeys];
    *buf = 67109378;
    v74 = v11;
    v75 = 2112;
    v76 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Loaded %d auth certs for users %@", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v13 = [(NSMutableDictionary *)self->_authenticationCerts count];
    [(NSMutableDictionary *)self->_authenticationCerts allKeys];
    v58 = v54 = v13;
    MarcoLogRegistration();
  }

  [(NSMutableDictionary *)self->_smsSignatures removeAllObjects:v54];
  smsSignatures = self->_smsSignatures;
  if (!smsSignatures)
  {
    v15 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v16 = self->_smsSignatures;
    self->_smsSignatures = v15;

    smsSignatures = self->_smsSignatures;
  }

  v17 = [v4 objectForKey:@"sms-signatures"];
  [(NSMutableDictionary *)smsSignatures addEntriesFromDictionary:v17];

  v18 = +[IMRGLog keychainManager];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(NSMutableDictionary *)self->_smsSignatures count];
    *buf = 67109120;
    v74 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Loaded %d sms signatures", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v55 = [(NSMutableDictionary *)self->_smsSignatures count];
    MarcoLogRegistration();
  }

  [(NSMutableDictionary *)self->_tempPhoneCredentials removeAllObjects];
  tempPhoneCredentials = self->_tempPhoneCredentials;
  if (!tempPhoneCredentials)
  {
    v21 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v22 = self->_tempPhoneCredentials;
    self->_tempPhoneCredentials = v21;

    tempPhoneCredentials = self->_tempPhoneCredentials;
  }

  v23 = [v4 objectForKey:@"temp-phone-creds"];
  [(NSMutableDictionary *)tempPhoneCredentials addEntriesFromDictionary:v23];

  v24 = +[IMRGLog keychainManager];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [(NSMutableDictionary *)self->_tempPhoneCredentials count];
    *buf = 67109120;
    v74 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Loaded %d temp phone credentials", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v56 = [(NSMutableDictionary *)self->_tempPhoneCredentials count];
    MarcoLogRegistration();
  }

  v26 = [v4 _numberForKey:{@"save-identifier", v56}];
  v27 = [v26 unsignedIntValue];

  v28 = [v5 count];
  v29 = +[IMRGLog keychainManager];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v74 = v28;
    v75 = 1024;
    LODWORD(v76) = v27;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Reloading registration objects from keychain dictionary, %d entries {saveIdentifier: %u}", buf, 0xEu);
  }

  v61 = v4;

  if (os_log_shim_legacy_logging_enabled())
  {
    v57 = v28;
    v59 = v27;
    MarcoLogRegistration();
  }

  v60 = v28;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v30 = v5;
  v31 = [v30 countByEnumeratingWithState:&v67 objects:v72 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v68;
    do
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v68 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v67 + 1) + 8 * i);
        v36 = [v35 objectForKey:{@"service", v57, v59}];
        if ([v36 isEqualToString:@"iMessage"])
        {
        }

        else
        {
          v37 = [v35 objectForKey:@"service"];
          v38 = [v37 isEqualToString:@"FaceTime"];

          if (!v38)
          {
            continue;
          }
        }

        v39 = [[IDSRegistration alloc] initWithDictionary:v35];
        if (v39)
        {
          v40 = [v35 objectForKey:@"migrated-v0-dictionary"];
          [(IDSRegistration *)v39 setMigrationContext:v40];
          [(NSMutableArray *)v62->_registrationData addObject:v39];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v67 objects:v72 count:16];
    }

    while (v32);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v41 = v30;
  v42 = [v41 countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (!v42)
  {
    goto LABEL_48;
  }

  v43 = v42;
  v44 = *v64;
  do
  {
    for (j = 0; j != v43; j = j + 1)
    {
      if (*v64 != v44)
      {
        objc_enumerationMutation(v41);
      }

      v46 = *(*(&v63 + 1) + 8 * j);
      v47 = [v46 objectForKey:{@"service", v57}];
      if (([(IDSRegistration *)v47 isEqualToString:@"iMessage"]& 1) == 0)
      {
        v48 = [v46 objectForKey:@"service"];
        v49 = [v48 isEqualToString:@"FaceTime"];

        if (v49)
        {
          continue;
        }

        v47 = [[IDSRegistration alloc] initWithDictionary:v46];
        if (v47)
        {
          v50 = [v46 objectForKey:@"migrated-v0-dictionary"];
          [(IDSRegistration *)v47 setMigrationContext:v50];
          [(NSMutableArray *)v62->_registrationData addObject:v47];
        }
      }
    }

    v43 = [v41 countByEnumeratingWithState:&v63 objects:v71 count:16];
  }

  while (v43);
LABEL_48:

  v51 = [(NSMutableArray *)v62->_registrationData count];
  if (v51 != v60)
  {
    v52 = v51;
    v53 = +[IMRGLog keychainManager];
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v74 = v60;
      v75 = 1024;
      LODWORD(v76) = v52;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Expected to load %d registration objects, but only loaded %d", buf, 0xEu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v57 = v60;
      v59 = v52;
      MarcoLogRegistration();
    }
  }

  [(NSRecursiveLock *)v62->_lock unlock:v57];
}

- (id)registrationWithServiceType:(id)a3 registrationType:(int)a4 value:(id)a5
{
  v8 = a3;
  v31 = a5;
  [(IDSRegistrationKeychainManager *)self _loadIfNeeded];
  [(NSRecursiveLock *)self->_lock lock];
  v9 = +[IMRGLog keychainManager];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = _StringForIDSRegistrationServiceType();
    v11 = _StringForIDSRegistrationType(a4);
    *buf = 138412802;
    v38 = v10;
    v39 = 2112;
    v40 = v11;
    v41 = 2112;
    v42 = v31;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Looking up registration with service type: %@  registration type: %@   value: %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v12 = _StringForIDSRegistrationServiceType();
    v28 = _StringForIDSRegistrationType(a4);
    v29 = v31;
    v27 = v12;
    MarcoLogRegistration();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = self->_registrationData;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v14)
  {
    v25 = 0;
    goto LABEL_22;
  }

  v15 = v14;
  v30 = self;
  v16 = *v33;
  while (2)
  {
    for (i = 0; i != v15; i = i + 1)
    {
      if (*v33 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v32 + 1) + 8 * i);
      if ([v18 registrationType] == a4)
      {
        v19 = [v18 serviceType];
        v20 = v19;
        if (v19 == v8)
        {
        }

        else
        {
          v21 = [v18 serviceType];
          v22 = [v21 isEqualToString:v8];

          if (!v22)
          {
            continue;
          }
        }

        v23 = [v18 _keychain_comparisonValue];
        v24 = [v23 isEqualToString:v31];

        if (v24)
        {
          v25 = v18;
          goto LABEL_20;
        }
      }
    }

    v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

  v25 = 0;
LABEL_20:
  self = v30;
LABEL_22:

  [(NSRecursiveLock *)self->_lock unlock];

  return v25;
}

- (NSArray)registrations
{
  [(IDSRegistrationKeychainManager *)self _loadIfNeeded];
  [(NSRecursiveLock *)self->_lock lock];
  registrationData = self->_registrationData;
  if (registrationData)
  {
    v4 = [(NSMutableArray *)registrationData copy];
  }

  else
  {
    v4 = objc_alloc_init(NSArray);
  }

  v5 = v4;
  [(NSRecursiveLock *)self->_lock unlock];

  return v5;
}

- (BOOL)addRegistration:(id)a3
{
  v4 = a3;
  [(IDSRegistrationKeychainManager *)self _loadIfNeeded];
  [(NSRecursiveLock *)self->_lock lock];
  if (v4)
  {
    if ([(NSMutableArray *)self->_registrationData count]>= 0x29)
    {
      v5 = +[IMRGLog keychainManager];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v12 = 40;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " => Removing first keychain entry, we're over max of %d entries", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        v10 = 40;
        MarcoLogRegistration();
      }

      [(NSMutableArray *)self->_registrationData removeObjectAtIndex:0, v10];
    }

    if ([(NSMutableArray *)self->_registrationData count])
    {
      v6 = 0;
      while (1)
      {
        v7 = [(NSMutableArray *)self->_registrationData objectAtIndex:v6];
        if ([v7 _keychain_isEqual:v4])
        {
          break;
        }

        if (++v6 >= [(NSMutableArray *)self->_registrationData count])
        {
          goto LABEL_16;
        }
      }

      if (v7)
      {
        [(NSMutableArray *)self->_registrationData removeObjectIdenticalTo:v7];
      }
    }

LABEL_16:
    [(NSMutableArray *)self->_registrationData addObject:v4];
    v8 = [(IDSRegistrationKeychainManager *)self _saveToKeychain];
  }

  else
  {
    v8 = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];

  return v8;
}

- (BOOL)removeRegistration:(id)a3
{
  v4 = a3;
  [(IDSRegistrationKeychainManager *)self _loadIfNeeded];
  [(NSRecursiveLock *)self->_lock lock];
  v5 = +[IMRGLog keychainManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing registration : %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v11 = v4;
    MarcoLogRegistration();
  }

  if (!v4)
  {
    goto LABEL_14;
  }

  if (![(NSMutableArray *)self->_registrationData count])
  {
LABEL_10:
    v8 = +[IMRGLog keychainManager];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "  => No matching registration found to remove", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogRegistration();
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  v6 = 0;
  while (1)
  {
    v7 = [(NSMutableArray *)self->_registrationData objectAtIndex:v6, v11];
    if ([v7 _keychain_isEqual:v4])
    {
      break;
    }

    if (++v6 >= [(NSMutableArray *)self->_registrationData count])
    {
      goto LABEL_10;
    }
  }

  [(NSMutableArray *)self->_registrationData removeObjectAtIndex:v6];

  v9 = [(IDSRegistrationKeychainManager *)self _saveToKeychain];
LABEL_15:
  [(NSRecursiveLock *)self->_lock unlock];

  return v9;
}

- (BOOL)removeAllRegistrations
{
  [(IDSRegistrationKeychainManager *)self _loadIfNeeded];
  [(NSRecursiveLock *)self->_lock lock];
  v3 = +[IMRGLog keychainManager];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing all registrations", v6, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogRegistration();
  }

  [(NSMutableArray *)self->_registrationData removeAllObjects];
  v4 = [(IDSRegistrationKeychainManager *)self __saveToKeychain];
  [(NSRecursiveLock *)self->_lock unlock];
  return v4;
}

+ (id)_UpdateKeychainDataDictToCurrentVersion:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3 || ![v3 count])
  {
    v11 = 0;
    goto LABEL_45;
  }

  v5 = v4;
  v6 = [v5 objectForKey:@"version"];
  v7 = [v6 unsignedIntegerValue];
  v8 = IDSKeychainBlobCurrentVersion;
  v9 = +[IMRGLog keychainManager];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v7 <= v8)
  {
    if (v10)
    {
      *buf = 67109120;
      LODWORD(v23[0]) = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updating keychain dict to current version (%d)", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v19 = v8;
      MarcoLogRegistration();
    }

    v12 = +[IMRGLog keychainManager];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23[0] = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Keychain dictionary before upgrade : %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v20 = v5;
      MarcoLogRegistration();
    }

    v21 = v6;
    if (v7 >= v8)
    {
LABEL_39:
      v17 = +[IMRGLog keychainManager];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23[0] = v5;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Keychain dictionary after upgrade : %@", buf, 0xCu);
      }

      v6 = v21;
      if (os_log_shim_legacy_logging_enabled())
      {
        MarcoLogRegistration();
      }

      v5 = v5;
      v11 = v5;
      goto LABEL_44;
    }

    while (1)
    {
      if (v7 == 2)
      {
        v16 = +[IMRGLog keychainManager];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "  => Updating from V2 to V3", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          MarcoLogRegistration();
        }

        v14 = [IDSRegistrationKeychainManager _UpdateKeychainDataDictV2ToV3:v5, v20];
        v7 = 3;
        goto LABEL_37;
      }

      if (v7 == 1)
      {
        break;
      }

      if (!v7)
      {
        v13 = +[IMRGLog keychainManager];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "  => Updating from V0 to V1", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          MarcoLogRegistration();
        }

        v14 = [IDSRegistrationKeychainManager _UpdateKeychainDataDictV0ToV1:v5, v20];
        v7 = 1;
LABEL_37:

        v5 = v14;
      }

      if (v7 >= v8)
      {
        goto LABEL_39;
      }
    }

    v15 = +[IMRGLog keychainManager];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "  => Updating from V1 to V2", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogRegistration();
    }

    v14 = [IDSRegistrationKeychainManager _UpdateKeychainDataDictV1ToV2:v5, v20];
    v7 = 2;
    goto LABEL_37;
  }

  if (v10)
  {
    *buf = 67109376;
    LODWORD(v23[0]) = v7;
    WORD2(v23[0]) = 1024;
    *(v23 + 6) = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Invalid keychain dict version (%d) -- current is %d", buf, 0xEu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogRegistration();
  }

  v11 = 0;
LABEL_44:

LABEL_45:

  return v11;
}

+ (id)_UpdateKeychainDataDictV0ToV1:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = +[NSMutableDictionary dictionary];
    v6 = [v4 mutableCopy];
    v7 = [v4 mutableCopy];
    v8 = [v4 objectForKey:@"type"];
    v9 = [v8 intValue];

    if (v9)
    {
      if (v9 != 1)
      {
LABEL_24:
        CFDictionarySetValue(v6, @"migrated-v0-dictionary", v4);
        CFDictionarySetValue(v7, @"migrated-v0-dictionary", v4);
        v17 = _StringForIDSRegistrationServiceType();
        [(__CFDictionary *)v6 setObject:v17 forKey:@"service"];

        v18 = _StringForIDSRegistrationServiceType();
        [(__CFDictionary *)v7 setObject:v18 forKey:@"service"];

        v19 = [NSNumber numberWithUnsignedInteger:1];
        [v5 setObject:v19 forKey:@"version"];

        v20 = [NSArray arrayWithObjects:v6, v7, 0];
        [v5 setObject:v20 forKey:@"data"];

        goto LABEL_25;
      }

      v10 = [v4 objectForKey:@"phone-number"];
      if (v10)
      {
        CFDictionarySetValue(v6, @"main-id", v10);
      }

      v11 = [v4 objectForKey:@"phone-number"];
      if (v11)
      {
        CFDictionarySetValue(v7, @"main-id", v11);
      }

      v12 = [v4 objectForKey:@"user-id"];
      if (v12)
      {
        CFDictionarySetValue(v6, @"profile-id", v12);
      }

      v13 = [v4 objectForKey:@"user-id"];
      if (!v13)
      {
LABEL_23:

        goto LABEL_24;
      }

      v14 = @"profile-id";
    }

    else
    {
      v16 = [v4 objectForKey:@"phone-number"];
      if (v16)
      {
        CFDictionarySetValue(v6, @"main-id", v16);
      }

      v13 = [v4 objectForKey:@"phone-number"];
      if (!v13)
      {
        goto LABEL_23;
      }

      v14 = @"main-id";
    }

    CFDictionarySetValue(v7, v14, v13);
    goto LABEL_23;
  }

  v15 = +[IMRGLog keychainManager];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Unable to upgrade an empty keychain data from V0 to V1", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogRegistration();
  }

  v5 = 0;
LABEL_25:

  return v5;
}

+ (id)_UpdateKeychainDataDictV1ToV2:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [v4 objectForKey:@"sms-signatures"];
    v6 = [v5 mutableCopy];

    v7 = [v6 objectForKey:@"phone-number-registration-main-id"];
    v8 = [v6 objectForKey:@"phone-number-registration"];
    [v6 removeAllObjects];
    v9 = [v7 length];
    v10 = [v8 length];
    if (v9 && v10)
    {
      [v6 setObject:v8 forKey:v7];
    }

    v11 = [v4 mutableCopy];
    v12 = v11;
    if (v6)
    {
      v13 = v6;
    }

    else
    {
      v13 = &__NSDictionary0__struct;
    }

    [v11 setObject:v13 forKey:@"sms-signatures"];
    v14 = [NSNumber numberWithUnsignedInteger:2];
    [v12 setObject:v14 forKey:@"version"];

    v15 = [v12 copy];
  }

  else
  {
    v16 = +[IMRGLog keychainManager];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Unable to upgrade an empty keychain data from V1 to V2", v18, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogRegistration();
    }

    v15 = 0;
  }

  return v15;
}

+ (id)_UpdateKeychainDataDictV2ToV3:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [v4 objectForKey:@"sms-signatures"];
    v6 = objc_alloc_init(NSMutableDictionary);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [v5 allKeys];
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v6 setObject:&off_100C3C970 forKey:*(*(&v19 + 1) + 8 * i)];
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v9);
    }

    v12 = [v4 mutableCopy];
    v13 = v12;
    if (v6)
    {
      v14 = v6;
    }

    else
    {
      v14 = &__NSDictionary0__struct;
    }

    [v12 setObject:v14 forKey:@"sms-signature-mechanisms"];
    v15 = [NSNumber numberWithUnsignedInteger:3];
    [v13 setObject:v15 forKey:@"version"];

    v16 = [v13 copy];
  }

  else
  {
    v17 = +[IMRGLog keychainManager];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Unable to upgrade an empty keychain data from V2 to V3", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogRegistration();
    }

    v16 = 0;
  }

  return v16;
}

- (id)authenticationCertForID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [(NSRecursiveLock *)self->_lock lock];
    [(IDSRegistrationKeychainManager *)self _loadIfNeeded];
    v5 = [(NSMutableDictionary *)self->_authenticationCerts objectForKey:v4];
    [(NSRecursiveLock *)self->_lock unlock];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAuthenticationCert:(id)a3 forID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    v8 = +[IMRGLog keychainManager];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting IDS auth cert: %p   for ID: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v12 = v6;
      v13 = v7;
      MarcoLogRegistration();
    }

    [(NSRecursiveLock *)self->_lock lock:v12];
    [(IDSRegistrationKeychainManager *)self _loadIfNeeded];
    if (!self->_authenticationCerts)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      authenticationCerts = self->_authenticationCerts;
      self->_authenticationCerts = Mutable;
    }

    v11 = self->_authenticationCerts;
    if (v6)
    {
      [(NSMutableDictionary *)v11 setObject:v6 forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)v11 removeObjectForKey:v7];
    }

    [(NSRecursiveLock *)self->_lock unlock];
    [(IDSRegistrationKeychainManager *)self _saveToKeychain];
  }
}

- (id)smsSignatureForID:(id)a3
{
  v4 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeychainManager *)self _loadIfNeeded];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_smsSignatures objectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];
  v6 = +[IMRGLog keychainManager];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 description];
    v8 = IMTruncatedLoggingStringForString();
    *buf = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Returning SMS sig for ID: %@   signature: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v9 = [v5 description];
    v11 = IMTruncatedLoggingStringForString();
    MarcoLogRegistration();
  }

  return v5;
}

- (id)smsIDs
{
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeychainManager *)self _loadIfNeeded];
  v3 = [(NSMutableDictionary *)self->_smsSignatures allKeys];
  [(NSRecursiveLock *)self->_lock unlock];
  v4 = +[IMRGLog keychainManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Returning SMS IDs: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogRegistration();
  }

  return v3;
}

- (void)setSMSSignature:(id)a3 mainID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMRGLog keychainManager];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 description];
    v10 = IMTruncatedLoggingStringForString();
    *buf = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting SMS main ID: %@   signature: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v11 = [v6 description];
    IMTruncatedLoggingStringForString();
    v15 = v14 = v7;
    MarcoLogRegistration();
  }

  [(NSRecursiveLock *)self->_lock lock:v14];
  [(IDSRegistrationKeychainManager *)self _loadIfNeeded];
  if (!self->_smsSignatures)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    smsSignatures = self->_smsSignatures;
    self->_smsSignatures = Mutable;
  }

  if ([v6 length] && objc_msgSend(v7, "length"))
  {
    [(NSMutableDictionary *)self->_smsSignatures setObject:v6 forKey:v7];
  }

  else if (v7)
  {
    [(NSMutableDictionary *)self->_smsSignatures removeObjectForKey:v7];
  }

  [(NSRecursiveLock *)self->_lock unlock];
  [(IDSRegistrationKeychainManager *)self _saveToKeychain];
}

- (id)smsSignatureMechanismForID:(id)a3
{
  v4 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeychainManager *)self _loadIfNeeded];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_smsSignatureMechanisms objectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];
  v6 = +[IMRGLog keychainManager];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Returning SMS Sig mechanism for ID: %@ signature mechanism: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogRegistration();
  }

  return v5;
}

- (void)setSMSSignatureMechanism:(id)a3 mainID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMRGLog keychainManager];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting SMS mainID: %@ signature mechanism: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v11 = v7;
    v12 = v6;
    MarcoLogRegistration();
  }

  [(NSRecursiveLock *)self->_lock lock:v11];
  [(IDSRegistrationKeychainManager *)self _loadIfNeeded];
  if (self->_smsSignatureMechanisms)
  {
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    smsSignatureMechanisms = self->_smsSignatureMechanisms;
    self->_smsSignatureMechanisms = Mutable;

    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if ([v7 length])
  {
    [(NSMutableDictionary *)self->_smsSignatureMechanisms setObject:v6 forKey:v7];
    goto LABEL_13;
  }

LABEL_11:
  if (v7)
  {
    [(NSMutableDictionary *)self->_smsSignatureMechanisms removeObjectForKey:v7];
  }

LABEL_13:
  [(NSRecursiveLock *)self->_lock unlock];
  [(IDSRegistrationKeychainManager *)self _saveToKeychain];
}

- (id)tempPhoneCredentialForID:(id)a3
{
  v4 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSRegistrationKeychainManager *)self _loadIfNeeded];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_tempPhoneCredentials objectForKeyedSubscript:v4];
  }

  else
  {
    v5 = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];
  v6 = +[IMRGLog keychainManager];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Returning temp phone credential for ID: %@ cert: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogRegistration();
  }

  return v5;
}

- (void)setTempPhoneCredential:(id)a3 forID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMRGLog keychainManager];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v7;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Returning temp phone credential for ID: %@ tempCredential: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v13 = v7;
    v14 = v6;
    MarcoLogRegistration();
  }

  [(NSRecursiveLock *)self->_lock lock:v13];
  [(IDSRegistrationKeychainManager *)self _loadIfNeeded];
  if (!self->_tempPhoneCredentials)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    tempPhoneCredentials = self->_tempPhoneCredentials;
    self->_tempPhoneCredentials = Mutable;
  }

  if ([v7 length])
  {
    v11 = self->_tempPhoneCredentials;
    v12 = v6;
LABEL_11:
    [(NSMutableDictionary *)v11 setObject:v12 forKeyedSubscript:v7];
    goto LABEL_12;
  }

  if (v7)
  {
    v11 = self->_tempPhoneCredentials;
    v12 = 0;
    goto LABEL_11;
  }

LABEL_12:
  [(NSRecursiveLock *)self->_lock unlock];
  [(IDSRegistrationKeychainManager *)self _saveToKeychain];
}

@end