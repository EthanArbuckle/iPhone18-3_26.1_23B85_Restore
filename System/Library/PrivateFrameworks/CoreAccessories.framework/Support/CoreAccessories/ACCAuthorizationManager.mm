@interface ACCAuthorizationManager
+ (id)sharedManager;
+ (unint64_t)authorizationStatusForCertSerial:(id)a3;
+ (unint64_t)promptUserForAuthorizationOfAccessoryWithName:(id)a3 providesPower:(BOOL)a4 certSerial:(id)a5;
+ (void)requestAuthorizationForCertSerial:(id)a3 withName:(id)a4 providesPower:(BOOL)a5 completionHandler:(id)a6;
- (ACCAuthorizationManager)init;
- (BOOL)bypassAuthorization;
@end

@implementation ACCAuthorizationManager

- (ACCAuthorizationManager)init
{
  v6.receiver = self;
  v6.super_class = ACCAuthorizationManager;
  v2 = [(ACCAuthorizationManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    notificationDictMutable = v2->_notificationDictMutable;
    v2->_notificationDictMutable = v3;
  }

  return v2;
}

- (BOOL)bypassAuthorization
{
  v2 = +[ACCUserDefaults sharedDefaults];
  if ([v2 BOOLForKey:@"EnableTrustDialog"])
  {
    if (systemInfo_isInternalBuild())
    {
      v3 = +[ACCUserDefaults sharedDefaults];
      v4 = [v3 BOOLForKey:@"BypassTrustDialog"];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __40__ACCAuthorizationManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_once_8 != -1)
  {
    dispatch_once(&sharedManager_once_8, block);
  }

  v2 = sharedManager_sharedInstance_8;

  return v2;
}

uint64_t __40__ACCAuthorizationManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedInstance_8 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

+ (unint64_t)authorizationStatusForCertSerial:(id)a3
{
  v3 = a3;
  v4 = +[ACCAuthorizationManager sharedManager];
  v5 = [v4 bypassAuthorization];

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      v6 = 2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#AuthorizationManager] Bypassing user authorization...", v10, 2u);
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v7 = [ACCAccessoryAuthorizationStore authorizationEntryForCertSerial:v3];
    v8 = v7;
    if (v7)
    {
      if ([v7 authorized])
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (void)requestAuthorizationForCertSerial:(id)a3 withName:(id)a4 providesPower:(BOOL)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [ACCAuthorizationManager authorizationStatusForCertSerial:v9];
  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = dispatch_get_global_queue(0, 0);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __102__ACCAuthorizationManager_requestAuthorizationForCertSerial_withName_providesPower_completionHandler___block_invoke;
    v14[3] = &unk_100229C40;
    v15 = v9;
    v16 = v10;
    v18 = a5;
    v17 = v11;
    dispatch_async(v13, v14);

    goto LABEL_7;
  }

  [ACCAuthorizationManager requestAuthorizationForCertSerial:v12 withName:? providesPower:? completionHandler:?];
  if (!v12)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v11)
  {
    (*(v11 + 2))(v11, v12 == 2);
  }

LABEL_7:
}

+ (unint64_t)promptUserForAuthorizationOfAccessoryWithName:(id)a3 providesPower:(BOOL)a4 certSerial:(id)a5
{
  v50 = a4;
  v6 = a3;
  v7 = a5;
  v8 = acc_strings_bundle();
  v9 = [v8 localizedStringForKey:@"“%@” Would Like to Communicate With Your %@" value:&stru_10022D360 table:0];
  v10 = MGCopyAnswer();
  v11 = [NSString stringWithFormat:v9, v6, v10];

  v12 = acc_strings_bundle();
  v13 = [v12 localizedStringForKey:@"This accessory may access information from your %@ when connected." value:&stru_10022D360 table:0];
  v14 = MGCopyAnswer();
  v15 = [NSString stringWithFormat:v13, v14];

  v53 = v6;
  if (!v6 || ![v6 length])
  {
    v16 = acc_strings_bundle();
    v17 = [v16 localizedStringForKey:@"An Accessory Would Like to Communicate With Your %@" value:&stru_10022D360 table:0];
    v18 = v11;
    v19 = MGCopyAnswer();
    v20 = [NSString stringWithFormat:v17, v19];

    v21 = acc_strings_bundle();
    v22 = [v21 localizedStringForKey:@"The attached accessory may access information from your %@ when connected." value:&stru_10022D360 table:0];
    v23 = MGCopyAnswer();
    v24 = [NSString stringWithFormat:v22, v23];

    v15 = v24;
    v11 = v20;
  }

  v56[0] = kCFUserNotificationAlertHeaderKey;
  v56[1] = kCFUserNotificationAlertMessageKey;
  v51 = v11;
  v52 = v15;
  v57[0] = v11;
  v57[1] = v15;
  v56[2] = kCFUserNotificationDefaultButtonTitleKey;
  v25 = acc_strings_bundle();
  v26 = [v25 localizedStringForKey:@"Trust" value:&stru_10022D360 table:0];
  v57[2] = v26;
  v56[3] = kCFUserNotificationAlternateButtonTitleKey;
  v27 = acc_strings_bundle();
  v28 = v27;
  if (v50)
  {
    v29 = @"Charge Only";
  }

  else
  {
    v29 = @"Don’t Trust";
  }

  v30 = [v27 localizedStringForKey:v29 value:&stru_10022D360 table:0];
  v57[3] = v30;
  v56[4] = kCFUserNotificationAlertTopMostKey;
  v31 = [NSNumber numberWithBool:1];
  v57[4] = v31;
  v56[5] = SBUserNotificationDismissOnLock;
  v32 = [NSNumber numberWithBool:0];
  v57[5] = v32;
  v56[6] = SBUserNotificationDontDismissOnUnlock;
  v33 = [NSNumber numberWithBool:1];
  v57[6] = v33;
  v56[7] = kCFUserNotificationIconURLKey;
  v34 = [NSURL fileURLWithPath:@"/System/Library/PreferencePanes/Security.prefPane/Contents/Resources/FileVault.icns"];
  v57[7] = v34;
  v35 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:8];

  v36 = +[ACCAuthorizationManager sharedManager];
  v37 = [v36 notificationDictMutable];
  v38 = [v37 objectForKey:v7];

  if (v38)
  {
    CFUserNotificationCancel(v38);
  }

  error = -1431655766;
  v39 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 3uLL, &error, v35);
  v40 = +[ACCAuthorizationManager sharedManager];
  v41 = [v40 notificationDictMutable];
  [v41 setObject:v39 forKey:v7];

  responseFlags = 0xAAAAAAAAAAAAAAAALL;
  CFUserNotificationReceiveResponse(v39, 0.0, &responseFlags);
  v42 = +[ACCAuthorizationManager sharedManager];
  v43 = [v42 notificationDictMutable];
  v44 = CFEqual([v43 objectForKey:v7], v39);

  if (v44)
  {
    v45 = +[ACCAuthorizationManager sharedManager];
    v46 = [v45 notificationDictMutable];
    [v46 removeObjectForKey:v7];
  }

  CFRelease(v39);
  v47 = 1;
  if (responseFlags != 1)
  {
    v47 = 2;
  }

  if (responseFlags)
  {
    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    [ACCAuthorizationManager promptUserForAuthorizationOfAccessoryWithName:v48 providesPower:? certSerial:?];
  }

  return v48;
}

+ (void)requestAuthorizationForCertSerial:(uint64_t)a1 withName:providesPower:completionHandler:.cold.1(uint64_t a1)
{
  v1 = 134217984;
  v2 = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[#AuthorizationManager] authorizationStatus: %lu", &v1, 0xCu);
}

+ (void)promptUserForAuthorizationOfAccessoryWithName:(uint64_t)a1 providesPower:certSerial:.cold.1(uint64_t a1)
{
  v1 = 134217984;
  v2 = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[#AuthorizationManager] promptResponse: %lu", &v1, 0xCu);
}

@end