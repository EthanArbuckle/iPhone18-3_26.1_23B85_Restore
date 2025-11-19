@interface IDSRegistrationKeychainReader
+ (id)keychainAccountForVersion:(unint64_t)a3;
+ (id)keychainServiceForVersion:(unint64_t)a3;
+ (id)sharedInstance;
- (IDSRegistrationKeychainReader)init;
- (id)registrationData;
- (id)registrationWithServiceType:(id)a3 accountType:(int)a4 isTemporary:(BOOL)a5 value:(id)a6;
- (void)_flush;
- (void)_reloadFromDictionaryLocked:(id)a3;
- (void)_reloadFromKeychainLocked;
- (void)_setPurgeTimer;
- (void)dealloc;
@end

@implementation IDSRegistrationKeychainReader

- (void)_flush
{
  v3 = im_primary_queue();
  dispatch_async(v3, self->_purgeCancelBlock);

  pthread_mutex_lock(&stru_1EB2B3410);
  registrationData = self->_registrationData;
  self->_registrationData = 0;

  v5 = [MEMORY[0x1E69A6138] keychainManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "Purged keychain reader", v6, 2u);
  }

  pthread_mutex_unlock(&stru_1EB2B3410);
}

+ (id)sharedInstance
{
  if (qword_1ED5DF6B8 != -1)
  {
    sub_1A7E142B8();
  }

  v3 = qword_1ED5DF708;

  return v3;
}

- (IDSRegistrationKeychainReader)init
{
  v19.receiver = self;
  v19.super_class = IDSRegistrationKeychainReader;
  v2 = [(IDSRegistrationKeychainReader *)&v19 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1A7B0D49C;
    v15[3] = &unk_1E77E08E0;
    objc_copyWeak(&v17, &location);
    v3 = v2;
    v16 = v3;
    v4 = [v15 copy];
    purgeCancelBlock = v3->_purgeCancelBlock;
    v3->_purgeCancelBlock = v4;

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1A7B505C4;
    v12[3] = &unk_1E77E08E0;
    objc_copyWeak(&v14, &location);
    v6 = v3;
    v13 = v6;
    v7 = [v12 copy];
    purgeEnqueueBlock = v6->_purgeEnqueueBlock;
    v6->_purgeEnqueueBlock = v7;

    pthread_mutex_lock(&stru_1EB2B3410);
    registrationData = v6->_registrationData;
    v6->_registrationData = 0;

    pthread_mutex_unlock(&stru_1EB2B3410);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, sub_1A7B0D3DC, @"__kIDSRegistrationKeychainChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  pthread_mutex_lock(&stru_1EB2B3410);
  pthread_mutex_unlock(&stru_1EB2B3410);
  v3.receiver = self;
  v3.super_class = IDSRegistrationKeychainReader;
  [(IDSRegistrationKeychainReader *)&v3 dealloc];
}

+ (id)keychainServiceForVersion:(unint64_t)a3
{
  if (a3)
  {
    v4 = @"com.apple.facetime";
  }

  else
  {
    v4 = @"com.apple.iChat.VeniceRegistrationAgent";
  }

  return v4;
}

+ (id)keychainAccountForVersion:(unint64_t)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@V%d", @"registration", a3];
  }

  else
  {
    v3 = @"VeniceInfo";
  }

  return v3;
}

- (void)_setPurgeTimer
{
  v3 = im_primary_queue();
  dispatch_async(v3, self->_purgeEnqueueBlock);
}

- (void)_reloadFromDictionaryLocked:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKey:@"data"];
  v6 = [v4 objectForKey:@"save-identifier"];

  v7 = [v6 unsignedIntValue];
  v8 = [v5 mutableCopy];
  registrationData = self->_registrationData;
  self->_registrationData = v8;

  v10 = [(NSMutableArray *)self->_registrationData count];
  v11 = [MEMORY[0x1E69A6138] keychainManager];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109376;
    v12[1] = v10;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "Loaded keychain dictionary, %d entries, saveIdentifier %u", v12, 0xEu);
  }
}

- (id)registrationData
{
  pthread_mutex_lock(&stru_1EB2B3410);
  registrationData = self->_registrationData;
  if (!registrationData)
  {
    [(IDSRegistrationKeychainReader *)self _reloadFromKeychainLocked];
    registrationData = self->_registrationData;
  }

  v4 = [(NSMutableArray *)registrationData copy];
  pthread_mutex_unlock(&stru_1EB2B3410);
  [(IDSRegistrationKeychainReader *)self _setPurgeTimer];

  return v4;
}

- (void)_reloadFromKeychainLocked
{
  v3 = 0;
  v4 = 0;
  v60 = *MEMORY[0x1E69E9840];
  v5 = 3;
  while (1)
  {
    v6 = v3;
    v7 = [objc_opt_class() keychainServiceForVersion:v5];
    v8 = [objc_opt_class() keychainAccountForVersion:v5];
    v9 = [objc_opt_class() keychainAccessGroupForVersion:v5];
    v53 = 0;
    v10 = [MEMORY[0x1E69A6138] keychainManager];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 67109890;
      *v55 = v5;
      *&v55[4] = 2112;
      *&v55[6] = v7;
      v56 = 2112;
      v57 = v8;
      v58 = 2112;
      v59 = v9;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_INFO, "Attempting to load V%d keychain blob from service: %@   account: %@   accessGroup: %@", buf, 0x26u);
    }

    v52[1] = v6;
    v11 = IMGetKeychainData();
    v3 = v6;

    if (v11)
    {
      if (v3)
      {
        break;
      }
    }

    ++v4;
    --v5;
    if (v4 > 3)
    {
      v5 = 0;
      goto LABEL_12;
    }
  }

  v12 = [MEMORY[0x1E69A6138] keychainManager];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *v55 = v5;
    _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_INFO, "  => Found V%d keychain blob", buf, 8u);
  }

LABEL_12:
  if ([v3 length])
  {
    v52[0] = 0;
    v14 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:0 error:v52];
    v15 = v52[0];
    v16 = v15;
    if (!v14)
    {
      v19 = [MEMORY[0x1E69A6138] keychainManager];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v55 = v16;
        _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "Unable to parse property list: %@", buf, 0xCu);
      }

      v20 = [objc_opt_class() keychainServiceForVersion:v5];
      v21 = [objc_opt_class() keychainAccountForVersion:v5];
      v22 = [MEMORY[0x1E69A6138] keychainManager];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        *v55 = v5;
        *&v55[4] = 2112;
        *&v55[6] = v20;
        v56 = 2112;
        v57 = v21;
        _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "Removing invalid keychain data (V%d) for service: %@   account: %@", buf, 0x1Cu);
      }

      v53 = 0;
      if ((IMRemoveKeychainData() & 1) == 0)
      {
        v23 = [MEMORY[0x1E69A6138] keychainManager];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v55 = v53;
          _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "  => Unable to remove invalid keychain blob (error: %d)", buf, 8u);
        }
      }

      v14 = 0;
      goto LABEL_81;
    }

    v17 = [v14 objectForKey:@"version"];
    v16 = v17;
    if (v17)
    {
      v18 = [v17 unsignedIntegerValue];
    }

    else
    {
      v18 = 0;
    }

    if (v18 >= 3)
    {
      goto LABEL_82;
    }

    v24 = [MEMORY[0x1E69A6138] keychainManager];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v55 = v18;
      _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "Keychain dictionary V%d needs upgrade", buf, 8u);
    }

    v21 = v14;
    if (![v21 count])
    {
      v14 = 0;
LABEL_80:
      v20 = v21;
LABEL_81:

LABEL_82:
      goto LABEL_83;
    }

    v25 = v21;
    v26 = [v25 objectForKey:@"version"];
    v27 = [v26 unsignedIntegerValue];
    v28 = [MEMORY[0x1E69A6138] keychainManager];
    v29 = v28;
    if (v27 > 3)
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v55 = v27;
        *&v55[4] = 1024;
        *&v55[6] = 3;
        _os_log_impl(&dword_1A7AD9000, v29, OS_LOG_TYPE_DEFAULT, "Invalid keychain dict version (%d) -- current is %d", buf, 0xEu);
      }

      v14 = 0;
LABEL_79:

      goto LABEL_80;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v55 = 3;
      _os_log_impl(&dword_1A7AD9000, v29, OS_LOG_TYPE_INFO, "Updating keychain dict to current version (%d)", buf, 8u);
    }

    v30 = [MEMORY[0x1E69A6138] keychainManager];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v55 = v25;
      _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_INFO, "Keychain dictionary before upgrade : %@", buf, 0xCu);
    }

    if (v27 >= 3)
    {
LABEL_76:
      v50 = [MEMORY[0x1E69A6138] keychainManager];
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v55 = v25;
        _os_log_impl(&dword_1A7AD9000, v50, OS_LOG_TYPE_INFO, "Keychain dictionary after upgrade : %@", buf, 0xCu);
      }

      v25 = v25;
      v14 = v25;
      goto LABEL_79;
    }

    v51 = v26;
    while (1)
    {
      if (v27 == 2)
      {
        v33 = [MEMORY[0x1E69A6138] keychainManager];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v33, OS_LOG_TYPE_INFO, "  => Updating from V2 to V3", buf, 2u);
        }

        v27 = 3;
        goto LABEL_75;
      }

      if (v27 == 1)
      {
        v33 = [MEMORY[0x1E69A6138] keychainManager];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v33, OS_LOG_TYPE_INFO, "  => Updating from V1 to V2", buf, 2u);
        }

        v27 = 2;
        goto LABEL_75;
      }

      v31 = [MEMORY[0x1E69A6138] keychainManager];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_INFO, "  => Updating from V0 to V1", buf, 2u);
      }

      v32 = v25;
      v33 = v32;
      if (!v32 || ![v32 count])
      {
        v35 = [MEMORY[0x1E69A6138] keychainManager];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v35, OS_LOG_TYPE_DEFAULT, "Unable to upgrade an empty keychain data from V0 to V1", buf, 2u);
        }

        v25 = 0;
        goto LABEL_74;
      }

      v34 = [MEMORY[0x1E695DF90] dictionary];
      v35 = [v33 mutableCopy];
      v36 = [v33 mutableCopy];
      v37 = [v33 objectForKey:@"type"];
      v38 = [v37 intValue];

      if (!v38)
      {
        break;
      }

      if (v38 == 1)
      {
        v39 = [v33 objectForKey:@"phone-number"];
        if (v39)
        {
          CFDictionarySetValue(v35, @"main-id", v39);
        }

        v40 = [v33 objectForKey:@"phone-number"];
        if (v40)
        {
          CFDictionarySetValue(v36, @"main-id", v40);
        }

        v41 = [v33 objectForKey:@"user-id"];
        if (v41)
        {
          CFDictionarySetValue(v35, @"profile-id", v41);
        }

        v42 = [v33 objectForKey:@"user-id"];
        if (v42)
        {
          v43 = v36;
          v44 = @"profile-id";
          goto LABEL_71;
        }

        goto LABEL_72;
      }

LABEL_73:
      CFDictionarySetValue(v35, @"migrated-v0-dictionary", v33);
      CFDictionarySetValue(v36, @"migrated-v0-dictionary", v33);
      v46 = _StringForIDSRegistrationServiceType(@"FaceTime");
      [v35 setObject:v46 forKey:@"service"];

      v47 = _StringForIDSRegistrationServiceType(@"iMessage");
      [(__CFDictionary *)v36 setObject:v47 forKey:@"service"];

      v48 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
      v25 = v34;
      [v34 setObject:v48 forKey:@"version"];

      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v35, v36, 0}];
      [v34 setObject:v49 forKey:@"data"];

      v26 = v51;
LABEL_74:

      v27 = 1;
LABEL_75:

      if (v27 >= 3)
      {
        goto LABEL_76;
      }
    }

    v45 = [v33 objectForKey:@"phone-number"];
    if (v45)
    {
      CFDictionarySetValue(v35, @"main-id", v45);
    }

    v42 = [v33 objectForKey:@"phone-number"];
    if (v42)
    {
      v43 = v36;
      v44 = @"main-id";
LABEL_71:
      CFDictionarySetValue(v43, v44, v42);
    }

LABEL_72:

    goto LABEL_73;
  }

  v14 = 0;
LABEL_83:
  [(IDSRegistrationKeychainReader *)self _reloadFromDictionaryLocked:v14];
}

- (id)registrationWithServiceType:(id)a3 accountType:(int)a4 isTemporary:(BOOL)a5 value:(id)a6
{
  v7 = a5;
  v49 = *MEMORY[0x1E69E9840];
  v35 = a3;
  v33 = a6;
  pthread_mutex_lock(&stru_1EB2B3410);
  if (a4 == 2)
  {
    v10 = [MEMORY[0x1E69A6138] keychainManager];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_INFO, "Ignoring keychain registration request for local account", buf, 2u);
    }

    v11 = 0;
  }

  else
  {
    if (!self->_registrationData)
    {
      [(IDSRegistrationKeychainReader *)self _reloadFromKeychainLocked];
    }

    v12 = [MEMORY[0x1E69A6138] keychainManager];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = _StringForIDSRegistrationServiceType(v35);
      v14 = _StringForIDSAccountType(a4);
      v15 = v14;
      v16 = @"NO";
      *buf = 138413058;
      v42 = v13;
      if (v7)
      {
        v16 = @"YES";
      }

      v43 = 2112;
      v44 = v14;
      v45 = 2112;
      v46 = v16;
      v47 = 2112;
      v48 = v33;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_INFO, "Looking up registration with service type: %@  account type: %@  temporary: %@  value: %@", buf, 0x2Au);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = self->_registrationData;
    v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v37;
      if (v7)
      {
        v20 = 2;
      }

      else
      {
        v20 = 0;
      }

      v21 = a4 == 0;
      if (a4)
      {
        v22 = 1;
      }

      else
      {
        v22 = v20;
      }

      if (v21)
      {
        v23 = @"user-unique-identifier";
      }

      else
      {
        v23 = @"main-id";
      }

      v32 = v23;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v36 + 1) + 8 * i);
          v26 = [v25 objectForKey:@"type"];
          v27 = [v26 intValue];

          v28 = [v25 objectForKey:@"service"];
          v29 = _IDSRegistrationServiceTypeForString(v28);

          if (v27 == v22 && (v29 == v35 || [v29 isEqualToString:v35]))
          {
            v30 = [v25 objectForKey:v32];
            if ([v30 isEqualToString:v33])
            {
              v11 = v25;

              goto LABEL_35;
            }
          }
        }

        v18 = [(NSMutableArray *)obj countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v11 = 0;
    }

    else
    {
      v11 = 0;
    }

LABEL_35:

    pthread_mutex_unlock(&stru_1EB2B3410);
    [(IDSRegistrationKeychainReader *)self _setPurgeTimer];
  }

  return v11;
}

@end