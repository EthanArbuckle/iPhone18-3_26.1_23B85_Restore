@interface IDSAppleIDNotificationCenter
+ (IDSAppleIDNotificationCenter)sharedInstance;
- (IDSAppleIDNotificationCenter)init;
- (id)_localizedServicesAccessStringForDevice:(id)device serviceMessage:(id)message;
- (id)_localizedServicesUsageStringForDevice:(id)device useSingular:(BOOL)singular;
- (void)_noteNewAvailableNotification:(id)notification;
- (void)_noteNewUsageNotification:(id)notification;
- (void)_postAvailableNotificationForSessions:(id)sessions appleID:(id)d aliases:(id)aliases deviceName:(id)name serviceTypes:(id)types blockMap:(id)map;
- (void)_postUsageNotificationForSessions:(id)sessions appleID:(id)d aliases:(id)aliases deviceName:(id)name deviceModel:(id)model deviceCapabilities:(id)capabilities serviceTypes:(id)types;
- (void)_processAvailableNotifications;
- (void)_processUsageNotifications;
- (void)addAvailableNotificationForSession:(id)session appleID:(id)d alias:(id)alias deviceName:(id)name serviceType:(id)type completionBlock:(id)block;
- (void)addUsageNotificationForSession:(id)session appleID:(id)d alias:(id)alias deviceName:(id)name hardwareVersion:(id)version deviceCapabilities:(id)capabilities serviceType:(id)type;
- (void)reportDailyNotificationMetrics;
@end

@implementation IDSAppleIDNotificationCenter

+ (IDSAppleIDNotificationCenter)sharedInstance
{
  if (qword_100CBD568 != -1)
  {
    sub_100921BA4();
  }

  v3 = qword_100CBD570;

  return v3;
}

- (IDSAppleIDNotificationCenter)init
{
  v21.receiver = self;
  v21.super_class = IDSAppleIDNotificationCenter;
  v2 = [(IDSAppleIDNotificationCenter *)&v21 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    availableNotifications = v2->_availableNotifications;
    v2->_availableNotifications = v3;

    v5 = objc_alloc_init(NSMutableArray);
    usageNotifications = v2->_usageNotifications;
    v2->_usageNotifications = v5;

    v7 = [CUTDeferredTaskQueue alloc];
    v8 = im_primary_queue();
    v9 = [v7 initWithCapacity:1 queue:v8 block:&stru_100BDDA98];
    processAvailableNotificationsTask = v2->_processAvailableNotificationsTask;
    v2->_processAvailableNotificationsTask = v9;

    v11 = [CUTDeferredTaskQueue alloc];
    v12 = im_primary_queue();
    v13 = [v11 initWithCapacity:1 queue:v12 block:&stru_100BDDAB8];
    processUsageNotificationsTask = v2->_processUsageNotificationsTask;
    v2->_processUsageNotificationsTask = v13;

    v15 = [IDSPersistentMap alloc];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v16 = [NSArray arrayWithObjects:v22 count:2];
    v17 = [NSSet setWithArray:v16];
    v18 = [(IDSPersistentMap *)v15 initWithIdentifier:@"com.apple.identityservices.dailyDeviceAddedNotificationData" versionNumber:0 decodableClasses:v17 migrationBlock:0];
    dailyMetricsData = v2->_dailyMetricsData;
    v2->_dailyMetricsData = v18;
  }

  return v2;
}

- (void)_postAvailableNotificationForSessions:(id)sessions appleID:(id)d aliases:(id)aliases deviceName:(id)name serviceTypes:(id)types blockMap:(id)map
{
  sessionsCopy = sessions;
  dCopy = d;
  aliasesCopy = aliases;
  nameCopy = name;
  typesCopy = types;
  mapCopy = map;
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v16 = nameCopy;
  obj = aliasesCopy;
  v50 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
  if (v50)
  {
    v48 = *v69;
    v43 = kFZAppBundleIdentifier;
    v55 = nameCopy;
    do
    {
      for (i = 0; i != v50; i = i + 1)
      {
        if (*v69 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v59 = *(*(&v68 + 1) + 8 * i);
        IsEmail = IMStringIsEmail();
        v18 = objc_alloc_init(NSMutableSet);
        v19 = objc_alloc_init(NSMutableSet);
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v20 = typesCopy;
        v21 = [v20 countByEnumeratingWithState:&v64 objects:v72 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v65;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v65 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = _UIStringForIDSRegistrationServiceType();
              if ([v25 length])
              {
                [v18 addObject:v25];
                v26 = sub_1004A6900(v25, v15);
                [v19 addObject:v26];
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v64 objects:v72 count:16];
          }

          while (v22);
        }

        allObjects = [v19 allObjects];
        allObjects2 = [v18 allObjects];
        v28 = @"%@";
        if ([allObjects2 count] >= 2)
        {
          v28 = IMLocalizedStringFromTableInBundle();
        }

        __imFirstObject = [allObjects __imFirstObject];
        v52 = allObjects;
        lastObject = [allObjects lastObject];
        v53 = v28;
        v31 = [NSString localizedStringWithFormat:v28, __imFirstObject, lastObject];

        v58 = IMLocalizedStringFromTableInBundle();
        v57 = IMLocalizedStringFromTableInBundle();
        v32 = IMFormattedDisplayStringForID();
        stringWithLTREmbedding = [v32 stringWithLTREmbedding];

        v16 = v55;
        if (IsEmail)
        {
          v33 = IMLocalizedStringFromTableInBundle();
          if ([v55 length])
          {
            v34 = IMLocalizedStringFromTableInBundle();
            v42 = v55;
          }

          else
          {
            v34 = IMLocalizedStringFromTableInBundle();
          }

          v36 = [NSString localizedStringWithFormat:v34, dCopy, v42];
        }

        else
        {
          v34 = +[IDSRegistrationController registeredPhoneNumbers];
          if ([v34 count] && objc_msgSend(v34, "containsObject:", v59))
          {
            v35 = +[IMRGLog registration];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "** This is for my phone, ignoring", buf, 2u);
            }

            v36 = 0;
            v33 = 0;
          }

          else
          {
            v33 = IMLocalizedStringFromTableInBundle();
            if ([v55 length])
            {
              v35 = IMLocalizedStringFromTableInBundle();
              v42 = v55;
            }

            else
            {
              v35 = IMLocalizedStringFromTableInBundle();
            }

            v36 = [NSString localizedStringWithFormat:v35, dCopy, v42];
          }

          v16 = v55;
        }

        v37 = 0;
        if (v33 && v36)
        {
          v38 = [NSString localizedStringWithFormat:v33, stringWithLTREmbedding, v31];
          v37 = [IMUserNotification userNotificationWithIdentifier:@"ServerAlerts" title:v38 message:v36 defaultButton:v58 alternateButton:0 otherButton:v57];

          if (v37)
          {
            if (!IMGetCachedDomainBoolForKey() || (+[IMLockdownManager sharedInstance](IMLockdownManager, "sharedInstance"), v39 = objc_claimAutoreleasedReturnValue(), v40 = [v39 isInternalInstall], v39, (v40 & 1) == 0))
            {
              [v37 setRepresentedApplicationBundle:v43];
              v41 = +[IMUserNotificationCenter sharedInstance];
              v60[0] = _NSConcreteStackBlock;
              v60[1] = 3221225472;
              v60[2] = sub_1004A69BC;
              v60[3] = &unk_100BDDAE0;
              v60[4] = v59;
              v61 = sessionsCopy;
              v62 = mapCopy;
              [v41 addUserNotification:v37 listener:0 completionHandler:v60];
            }
          }

          v16 = v55;
        }
      }

      v50 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
    }

    while (v50);
  }
}

- (void)_postUsageNotificationForSessions:(id)sessions appleID:(id)d aliases:(id)aliases deviceName:(id)name deviceModel:(id)model deviceCapabilities:(id)capabilities serviceTypes:(id)types
{
  dCopy = d;
  aliasesCopy = aliases;
  modelCopy = model;
  typesCopy = types;
  v15 = objc_alloc_init(NSMutableArray);
  v16 = objc_alloc_init(NSMutableArray);
  v17 = objc_alloc_init(NSMutableArray);
  v78 = objc_alloc_init(NSMutableArray);
  selfCopy = self;
  v79 = [NSBundle bundleForClass:objc_opt_class()];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v18 = aliasesCopy;
  v19 = [v18 countByEnumeratingWithState:&v85 objects:v92 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v86;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v86 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v85 + 1) + 8 * i);
        if (IMStringIsEmail())
        {
          v24 = v15;
        }

        else
        {
          v24 = v16;
        }

        [v24 addObject:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v85 objects:v92 count:16];
    }

    while (v20);
  }

  v77 = [IMDeviceSupport marketingNameForModel:modelCopy];
  v74 = v18;
  v75 = modelCopy;
  if ([v77 isEqualToString:@"Mac"] && objc_msgSend(modelCopy, "rangeOfString:", @"Mac") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = [modelCopy rangeOfString:@"Browser"];

    v26 = @"browser";
    if (v25 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = @"device";
    }

    v77 = v26;
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v27 = typesCopy;
  v28 = [v27 countByEnumeratingWithState:&v81 objects:v91 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v82;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v82 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = _UIStringForIDSRegistrationServiceType();
        if ([v32 length] && (objc_msgSend(v17, "containsObject:", v32) & 1) == 0 && ((objc_msgSend(v32, "isEqualToIgnoringCase:", @"iMessage") & 1) != 0 || objc_msgSend(v32, "isEqualToIgnoringCase:", @"FaceTime")))
        {
          [v17 addObject:v32];
          v33 = sub_1004A6900(v32, v79);
          [v78 addObject:v33];
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v81 objects:v91 count:16];
    }

    while (v29);
  }

  if (([v15 count] || objc_msgSend(v16, "count")) && objc_msgSend(v17, "count"))
  {
    v34 = [v15 count];
    v35 = [v16 count];
    if (v34 || v35)
    {
      IMLocalizedStringFromTableInBundle();
    }

    v36 = [v17 count];
    if (v36 == 3)
    {
      v42 = @"iCloud, iMessage, and FaceTime";
      goto LABEL_47;
    }

    if (v36 == 2)
    {
      v38 = [v17 objectAtIndex:0];
      v39 = [v38 isEqualToString:@"iCloud"];

      if (v39)
      {
        v40 = v17;
        v41 = 1;
      }

      else
      {
        v43 = [v17 objectAtIndex:1];
        v44 = [v43 isEqualToString:@"iCloud"];

        if (!v44)
        {
          v45 = [v17 objectAtIndex:0];
          v46 = [v45 isEqualToString:@"iMessage"];

          v37 = [v17 objectAtIndex:v46 != 0];
          [NSString localizedStringWithFormat:@"iMessage and %@", v37];
          goto LABEL_46;
        }

        v40 = v17;
        v41 = 0;
      }

      v37 = [v40 objectAtIndex:v41];
      [NSString localizedStringWithFormat:@"iCloud and %@", v37];
    }

    else
    {
      if (v36 != 1)
      {
        v42 = 0;
        goto LABEL_47;
      }

      v37 = [v17 objectAtIndex:0];
      [NSString localizedStringWithFormat:@"%@", v37];
    }

    v42 = LABEL_46:;

LABEL_47:
    v47 = [IDSSystemAccountAdapter alloc];
    v48 = im_primary_queue();
    v49 = [(IDSSystemAccountAdapter *)v47 initWithQueue:v48];

    v80 = 0;
    v71 = v49;
    v69 = [(IDSSystemAccountAdapter *)v49 iCloudSystemAccountWithError:&v80];
    v70 = v80;
    username = [v69 username];
    v68 = username;
    if (dCopy && username)
    {
      [dCopy isEqualToString:username];
    }

    v51 = IMLocalizedStringFromTableInBundle();
    v52 = IMLocalizedStringFromTableInBundle();
    v72 = v42;
    v53 = [(IDSAppleIDNotificationCenter *)selfCopy _localizedServicesAccessStringForDevice:v77 serviceMessage:v42];
    v65 = objc_alloc_init(IMWeakLinkClass());
    v54 = objc_alloc_init(IMWeakLinkClass());
    v67 = v52;
    [v54 setTitle:v52];
    v66 = v53;
    v55 = [NSString localizedStringWithFormat:v53, v51];
    [v54 setMessage:v55];

    [v54 setAction:0];
    v56 = IDSDailyAccountAddedNotificationMetricTotalKey;
    v57 = [(IDSPersistentMap *)selfCopy->_dailyMetricsData objectForKey:IDSDailyAccountAddedNotificationMetricTotalKey];
    [v57 doubleValue];
    v59 = v58;

    v60 = [(IDSPersistentMap *)selfCopy->_dailyMetricsData objectForKey:IDSDailyAccountAddedNotificationMetricDuplicateKey];
    [v60 doubleValue];

    dailyMetricsData = selfCopy->_dailyMetricsData;
    v62 = [NSNumber numberWithInteger:v59 + 1];
    [(IDSPersistentMap *)dailyMetricsData setObject:v62 forKey:v56];

    v63 = +[IMRGLog registration];
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v64 = [NSNumber numberWithInteger:v59 + 1];
      *buf = 138412290;
      v90 = v64;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Posting new device notification. Number of notifications posted today: %@", buf, 0xCu);
    }

    [v65 postAccountUserNotificationWith:v54 completion:&stru_100BDDB00];
  }
}

- (id)_localizedServicesAccessStringForDevice:(id)device serviceMessage:(id)message
{
  deviceCopy = device;
  messageCopy = message;
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  if ([deviceCopy isEqualToString:@"Mac"] & 1) != 0 || (objc_msgSend(deviceCopy, "isEqualToString:", @"browser"))
  {
    v8 = @"A %@ now has access to %@. %%@";
  }

  else
  {
    v8 = @"A %@ now has access to %@. %%@";
    if (([deviceCopy isEqualToString:@"device"] & 1) == 0 && !objc_msgSend(deviceCopy, "isEqualToString:", @"HomePod"))
    {
      v8 = @"An %@ now has access to %@. %%@";
    }
  }

  messageCopy = [NSString localizedStringWithFormat:v8, deviceCopy, messageCopy];
  v10 = IMLocalizedStringFromTableInBundle();

  return v10;
}

- (id)_localizedServicesUsageStringForDevice:(id)device useSingular:(BOOL)singular
{
  singularCopy = singular;
  deviceCopy = device;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = @"are";
  if (singularCopy)
  {
    v7 = @"is";
  }

  deviceCopy = [NSString localizedStringWithFormat:@"Your %%@ %@ now being used for %%@ on a new %@.", v7, deviceCopy];

  v9 = IMLocalizedStringFromTableInBundle();

  return v9;
}

- (void)_processAvailableNotifications
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_availableNotifications;
  v16 = [(NSMutableArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v16)
  {
    v14 = *v18;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v17 + 1) + 8 * i);
        sessions = [v3 sessions];
        allObjects = [sessions allObjects];
        appleID = [v3 appleID];
        aliases = [v3 aliases];
        allObjects2 = [aliases allObjects];
        deviceName = [v3 deviceName];
        serviceTypes = [v3 serviceTypes];
        allObjects3 = [serviceTypes allObjects];
        sessionToBlockMap = [v3 sessionToBlockMap];
        [(IDSAppleIDNotificationCenter *)self _postAvailableNotificationForSessions:allObjects appleID:appleID aliases:allObjects2 deviceName:deviceName serviceTypes:allObjects3 blockMap:sessionToBlockMap];
      }

      v16 = [(NSMutableArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v16);
  }

  [(NSMutableArray *)self->_availableNotifications removeAllObjects];
}

- (void)_processUsageNotifications
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_usageNotifications;
  v16 = [(NSMutableArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v16)
  {
    v14 = *v19;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v18 + 1) + 8 * i);
        sessions = [v3 sessions];
        allObjects = [sessions allObjects];
        appleID = [v3 appleID];
        aliases = [v3 aliases];
        allObjects2 = [aliases allObjects];
        deviceName = [v3 deviceName];
        deviceModel = [v3 deviceModel];
        deviceCapabilities = [v3 deviceCapabilities];
        serviceTypes = [v3 serviceTypes];
        allObjects3 = [serviceTypes allObjects];
        [(IDSAppleIDNotificationCenter *)self _postUsageNotificationForSessions:allObjects appleID:appleID aliases:allObjects2 deviceName:deviceName deviceModel:deviceModel deviceCapabilities:deviceCapabilities serviceTypes:allObjects3];
      }

      v16 = [(NSMutableArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v16);
  }

  [(NSMutableArray *)self->_usageNotifications removeAllObjects];
}

- (void)_noteNewAvailableNotification:(id)notification
{
  notificationCopy = notification;
  if (notificationCopy)
  {
    [(CUTDeferredTaskQueue *)self->_processAvailableNotificationsTask cancelPendingExecutions];
    [(CUTDeferredTaskQueue *)self->_processAvailableNotificationsTask enqueueExecutionWithTarget:self afterDelay:5.0];
    if (([(NSMutableArray *)self->_availableNotifications containsObjectIdenticalTo:notificationCopy]& 1) == 0)
    {
      [(NSMutableArray *)self->_availableNotifications addObject:notificationCopy];
    }
  }
}

- (void)_noteNewUsageNotification:(id)notification
{
  notificationCopy = notification;
  if (notificationCopy)
  {
    [(CUTDeferredTaskQueue *)self->_processUsageNotificationsTask cancelPendingExecutions];
    [(CUTDeferredTaskQueue *)self->_processUsageNotificationsTask enqueueExecutionWithTarget:self afterDelay:5.0];
    if (([(NSMutableArray *)self->_usageNotifications containsObjectIdenticalTo:notificationCopy]& 1) == 0)
    {
      [(NSMutableArray *)self->_usageNotifications addObject:notificationCopy];
    }
  }
}

- (void)addAvailableNotificationForSession:(id)session appleID:(id)d alias:(id)alias deviceName:(id)name serviceType:(id)type completionBlock:(id)block
{
  sessionCopy = session;
  dCopy = d;
  aliasCopy = alias;
  nameCopy = name;
  typeCopy = type;
  blockCopy = block;
  v19 = +[IDSPairingManager sharedInstance];
  isCurrentDeviceTinkerConfiguredWatch = [v19 isCurrentDeviceTinkerConfiguredWatch];

  v21 = +[FTDeviceSupport sharedInstance];
  deviceType = [v21 deviceType];

  if (deviceType != 6 || isCurrentDeviceTinkerConfiguredWatch != 0)
  {
    v24 = +[IMLockdownManager sharedInstance];
    isInternalInstall = [v24 isInternalInstall];

    if (isInternalInstall)
    {
      v26 = IMGetDomainBoolForKey();
      if (!aliasCopy || (v26 & 1) != 0)
      {
        goto LABEL_24;
      }
    }

    else if (!aliasCopy)
    {
      goto LABEL_24;
    }

    selfCopy = self;
    v40 = dCopy;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v27 = self->_availableNotifications;
    v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v28)
    {
      v29 = v28;
      v37 = typeCopy;
      v38 = sessionCopy;
      v30 = 0;
      v31 = *v43;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v43 != v31)
          {
            objc_enumerationMutation(v27);
          }

          v33 = *(*(&v42 + 1) + 8 * i);
          aliases = [v33 aliases];
          v35 = [aliases containsObject:aliasCopy];

          if (v35)
          {
            v36 = v33;

            v30 = v36;
          }
        }

        v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v29);

      typeCopy = v37;
      sessionCopy = v38;
      dCopy = v40;
      if (v30)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    v30 = objc_alloc_init(IDSAppleIDNotification);
    [(IDSAppleIDNotification *)v30 setAppleID:dCopy];
    [(IDSAppleIDNotification *)v30 setDeviceName:nameCopy];
    [(IDSAppleIDNotification *)v30 addAlias:aliasCopy];
LABEL_23:
    [(IDSAppleIDNotification *)v30 addServiceType:typeCopy];
    [(IDSAppleIDNotification *)v30 addSession:sessionCopy];
    [(IDSAppleIDNotification *)v30 addCompletionBlock:blockCopy forSession:sessionCopy];
    [(IDSAppleIDNotificationCenter *)selfCopy _noteNewAvailableNotification:v30];
  }

LABEL_24:
}

- (void)addUsageNotificationForSession:(id)session appleID:(id)d alias:(id)alias deviceName:(id)name hardwareVersion:(id)version deviceCapabilities:(id)capabilities serviceType:(id)type
{
  sessionCopy = session;
  dCopy = d;
  aliasCopy = alias;
  nameCopy = name;
  versionCopy = version;
  capabilitiesCopy = capabilities;
  typeCopy = type;
  v20 = +[IDSPairingManager sharedInstance];
  isCurrentDeviceTinkerConfiguredWatch = [v20 isCurrentDeviceTinkerConfiguredWatch];

  v22 = +[FTDeviceSupport sharedInstance];
  deviceType = [v22 deviceType];

  if (deviceType != 6 || isCurrentDeviceTinkerConfiguredWatch)
  {
    v24 = +[IMLockdownManager sharedInstance];
    isInternalInstall = [v24 isInternalInstall];

    if (!isInternalInstall || (IMGetDomainBoolForKey() & 1) == 0)
    {
      selfCopy = self;
      v39 = dCopy;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v26 = self->_usageNotifications;
      v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v27)
      {
        v28 = v27;
        v36 = aliasCopy;
        v37 = sessionCopy;
        v29 = 0;
        v30 = *v43;
        do
        {
          for (i = 0; i != v28; i = i + 1)
          {
            if (*v43 != v30)
            {
              objc_enumerationMutation(v26);
            }

            v32 = *(*(&v42 + 1) + 8 * i);
            deviceName = [v32 deviceName];
            v34 = [deviceName isEqualToString:nameCopy];

            if (v34)
            {
              v35 = v32;

              v29 = v35;
            }
          }

          v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v28);

        aliasCopy = v36;
        sessionCopy = v37;
        dCopy = v39;
        if (v29)
        {
          goto LABEL_18;
        }
      }

      else
      {
      }

      v29 = objc_alloc_init(IDSAppleIDNotification);
      [(IDSAppleIDNotification *)v29 setAppleID:dCopy];
      [(IDSAppleIDNotification *)v29 setDeviceName:nameCopy];
      [(IDSAppleIDNotification *)v29 setDeviceModel:versionCopy];
LABEL_18:
      [(IDSAppleIDNotification *)v29 addAlias:aliasCopy];
      [(IDSAppleIDNotification *)v29 addServiceType:typeCopy];
      [(IDSAppleIDNotification *)v29 addSession:sessionCopy];
      [(IDSAppleIDNotification *)v29 setDeviceCapabilities:capabilitiesCopy];
      [(IDSAppleIDNotificationCenter *)selfCopy _noteNewUsageNotification:v29];
    }
  }
}

- (void)reportDailyNotificationMetrics
{
  copyDictionaryRepresentation = [(IDSPersistentMap *)self->_dailyMetricsData copyDictionaryRepresentation];
  v3 = IDSDailyAccountAddedNotificationMetricTotalKey;
  v4 = [copyDictionaryRepresentation objectForKey:IDSDailyAccountAddedNotificationMetricTotalKey];
  v5 = IDSDailyAccountAddedNotificationMetricDuplicateKey;
  v6 = [copyDictionaryRepresentation objectForKey:IDSDailyAccountAddedNotificationMetricDuplicateKey];
  v7 = [[IDSDailyAccountAddedNotificationsMetric alloc] initWithNotificationsPostedToday:v4 duplicateNotificationPostedToday:v6];
  v8 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v8 logMetric:v7];

  [(IDSPersistentMap *)self->_dailyMetricsData setObject:&off_100C3C7A8 forKey:v3];
  [(IDSPersistentMap *)self->_dailyMetricsData setObject:&off_100C3C7A8 forKey:v5];
}

@end