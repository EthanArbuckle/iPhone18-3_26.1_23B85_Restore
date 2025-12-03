@interface ACCAuthorizationManager
+ (id)sharedManager;
+ (unint64_t)authorizationStatusForCertSerial:(id)serial;
+ (unint64_t)promptUserForAuthorizationOfAccessoryWithName:(id)name providesPower:(BOOL)power certSerial:(id)serial;
+ (void)requestAuthorizationForCertSerial:(id)serial withName:(id)name providesPower:(BOOL)power completionHandler:(id)handler;
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
    if (qword_10012BA30 != -1)
    {
      sub_1000E1E74();
    }

    if (byte_10012BA28)
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
  block[2] = sub_100029D28;
  block[3] = &unk_100111CF8;
  block[4] = self;
  if (qword_10012BA40 != -1)
  {
    dispatch_once(&qword_10012BA40, block);
  }

  v2 = qword_10012BA38;

  return v2;
}

+ (unint64_t)authorizationStatusForCertSerial:(id)serial
{
  serialCopy = serial;
  v4 = +[ACCAuthorizationManager sharedManager];
  bypassAuthorization = [v4 bypassAuthorization];

  if (bypassAuthorization)
  {
    NSLog(@"Bypassing user authorization...");
    v6 = 2;
  }

  else
  {
    v7 = [ACCAccessoryAuthorizationStore authorizationEntryForCertSerial:serialCopy];
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

+ (void)requestAuthorizationForCertSerial:(id)serial withName:(id)name providesPower:(BOOL)power completionHandler:(id)handler
{
  serialCopy = serial;
  nameCopy = name;
  handlerCopy = handler;
  v12 = [ACCAuthorizationManager authorizationStatusForCertSerial:serialCopy];
  NSLog(@"authorizationStatus: %lu", v12);
  if (v12)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v12 == 2);
    }

    goto LABEL_6;
  }

  v13 = dispatch_get_global_queue(0, 0);
  if (v13)
  {
    v14 = v13;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100029F58;
    block[3] = &unk_100113910;
    v16 = serialCopy;
    v17 = nameCopy;
    powerCopy = power;
    v18 = handlerCopy;
    dispatch_async(v14, block);

LABEL_6:
    return;
  }

  __break(0x5510u);
}

+ (unint64_t)promptUserForAuthorizationOfAccessoryWithName:(id)name providesPower:(BOOL)power certSerial:(id)serial
{
  powerCopy = power;
  nameCopy = name;
  serialCopy = serial;
  v9 = sub_100029AEC(@"ACC_AUTHORIZATION_NOTIFICATION_HEADER");
  v10 = MGCopyAnswer();
  v11 = [NSString stringWithFormat:v9, nameCopy, v10];

  v12 = sub_100029AEC(@"ACC_AUTHORIZATION_NOTIFICATION_MESSAGE");
  v13 = MGCopyAnswer();
  v14 = [NSString stringWithFormat:v12, v13];

  v43 = nameCopy;
  if (!nameCopy || ![nameCopy length])
  {
    v15 = sub_100029AEC(@"ACC_AUTHORIZATION_NOTIFICATION_HEADER_NO_NAME");
    v16 = MGCopyAnswer();
    v17 = [NSString stringWithFormat:v15, v16];

    v18 = sub_100029AEC(@"ACC_AUTHORIZATION_NOTIFICATION_MESSAGE_NO_NAME");
    v19 = MGCopyAnswer();
    v20 = [NSString stringWithFormat:v18, v19];

    v14 = v20;
    v11 = v17;
  }

  v46[0] = kCFUserNotificationAlertHeaderKey;
  v46[1] = kCFUserNotificationAlertMessageKey;
  v47[0] = v11;
  v47[1] = v14;
  v46[2] = kCFUserNotificationDefaultButtonTitleKey;
  v21 = sub_100029AEC(@"ACC_AUTHORIZATION_NOTIFICATION_ALLOW");
  v47[2] = v21;
  v46[3] = kCFUserNotificationAlternateButtonTitleKey;
  if (powerCopy)
  {
    v22 = @"ACC_AUTHORIZATION_NOTIFICATION_CHARGE_ONLY";
  }

  else
  {
    v22 = @"ACC_AUTHORIZATION_NOTIFICATION_DONT_ALLOW";
  }

  v23 = sub_100029AEC(v22);
  v47[3] = v23;
  v46[4] = kCFUserNotificationAlertTopMostKey;
  v24 = [NSNumber numberWithBool:1];
  v47[4] = v24;
  v46[5] = SBUserNotificationDismissOnLock;
  v25 = [NSNumber numberWithBool:0];
  v47[5] = v25;
  v46[6] = SBUserNotificationDontDismissOnUnlock;
  v26 = [NSNumber numberWithBool:1];
  v47[6] = v26;
  v46[7] = kCFUserNotificationIconURLKey;
  v27 = [NSURL fileURLWithPath:@"/System/Library/PreferencePanes/Security.prefPane/Contents/Resources/FileVault.icns"];
  v47[7] = v27;
  v28 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:8];

  v29 = +[ACCAuthorizationManager sharedManager];
  notificationDictMutable = [v29 notificationDictMutable];
  v31 = [notificationDictMutable objectForKey:serialCopy];

  if (v31)
  {
    CFUserNotificationCancel(v31);
  }

  error = -1431655766;
  v32 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 3uLL, &error, v28);
  v33 = +[ACCAuthorizationManager sharedManager];
  notificationDictMutable2 = [v33 notificationDictMutable];
  [notificationDictMutable2 setObject:v32 forKey:serialCopy];

  responseFlags = 0xAAAAAAAAAAAAAAAALL;
  CFUserNotificationReceiveResponse(v32, 0.0, &responseFlags);
  v35 = +[ACCAuthorizationManager sharedManager];
  notificationDictMutable3 = [v35 notificationDictMutable];
  v37 = CFEqual([notificationDictMutable3 objectForKey:serialCopy], v32);

  if (v37)
  {
    v38 = +[ACCAuthorizationManager sharedManager];
    notificationDictMutable4 = [v38 notificationDictMutable];
    [notificationDictMutable4 removeObjectForKey:serialCopy];
  }

  CFRelease(v32);
  v40 = 1;
  if (responseFlags != 1)
  {
    v40 = 2;
  }

  if (responseFlags)
  {
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  NSLog(@"promptResponse: %lu", v41);

  return v41;
}

@end