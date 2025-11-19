@interface IDSAppleIDNotificationCenter
+ (IDSAppleIDNotificationCenter)sharedInstance;
- (IDSAppleIDNotificationCenter)init;
- (id)_localizedServicesAccessStringForDevice:(id)a3 serviceMessage:(id)a4;
- (id)_localizedServicesUsageStringForDevice:(id)a3 useSingular:(BOOL)a4;
- (void)_noteNewAvailableNotification:(id)a3;
- (void)_noteNewUsageNotification:(id)a3;
- (void)_postAvailableNotificationForSessions:(id)a3 appleID:(id)a4 aliases:(id)a5 deviceName:(id)a6 serviceTypes:(id)a7 blockMap:(id)a8;
- (void)_postUsageNotificationForSessions:(id)a3 appleID:(id)a4 aliases:(id)a5 deviceName:(id)a6 deviceModel:(id)a7 deviceCapabilities:(id)a8 serviceTypes:(id)a9;
- (void)_processAvailableNotifications;
- (void)_processUsageNotifications;
- (void)addAvailableNotificationForSession:(id)a3 appleID:(id)a4 alias:(id)a5 deviceName:(id)a6 serviceType:(id)a7 completionBlock:(id)a8;
- (void)addUsageNotificationForSession:(id)a3 appleID:(id)a4 alias:(id)a5 deviceName:(id)a6 hardwareVersion:(id)a7 deviceCapabilities:(id)a8 serviceType:(id)a9;
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

- (void)_postAvailableNotificationForSessions:(id)a3 appleID:(id)a4 aliases:(id)a5 deviceName:(id)a6 serviceTypes:(id)a7 blockMap:(id)a8
{
  v45 = a3;
  v47 = a4;
  v13 = a5;
  v14 = a6;
  v49 = a7;
  v44 = a8;
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v16 = v14;
  obj = v13;
  v50 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
  if (v50)
  {
    v48 = *v69;
    v43 = kFZAppBundleIdentifier;
    v55 = v14;
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
        v20 = v49;
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

        v27 = [v19 allObjects];
        v54 = [v18 allObjects];
        v28 = @"%@";
        if ([v54 count] >= 2)
        {
          v28 = IMLocalizedStringFromTableInBundle();
        }

        v29 = [v27 __imFirstObject];
        v52 = v27;
        v30 = [v27 lastObject];
        v53 = v28;
        v31 = [NSString localizedStringWithFormat:v28, v29, v30];

        v58 = IMLocalizedStringFromTableInBundle();
        v57 = IMLocalizedStringFromTableInBundle();
        v32 = IMFormattedDisplayStringForID();
        v56 = [v32 stringWithLTREmbedding];

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

          v36 = [NSString localizedStringWithFormat:v34, v47, v42];
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

            v36 = [NSString localizedStringWithFormat:v35, v47, v42];
          }

          v16 = v55;
        }

        v37 = 0;
        if (v33 && v36)
        {
          v38 = [NSString localizedStringWithFormat:v33, v56, v31];
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
              v61 = v45;
              v62 = v44;
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

- (void)_postUsageNotificationForSessions:(id)a3 appleID:(id)a4 aliases:(id)a5 deviceName:(id)a6 deviceModel:(id)a7 deviceCapabilities:(id)a8 serviceTypes:(id)a9
{
  v76 = a4;
  v12 = a5;
  v13 = a7;
  v14 = a9;
  v15 = objc_alloc_init(NSMutableArray);
  v16 = objc_alloc_init(NSMutableArray);
  v17 = objc_alloc_init(NSMutableArray);
  v78 = objc_alloc_init(NSMutableArray);
  v73 = self;
  v79 = [NSBundle bundleForClass:objc_opt_class()];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v18 = v12;
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

  v77 = [IMDeviceSupport marketingNameForModel:v13];
  v74 = v18;
  v75 = v13;
  if ([v77 isEqualToString:@"Mac"] && objc_msgSend(v13, "rangeOfString:", @"Mac") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = [v13 rangeOfString:@"Browser"];

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
  v27 = v14;
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
    v50 = [v69 username];
    v68 = v50;
    if (v76 && v50)
    {
      [v76 isEqualToString:v50];
    }

    v51 = IMLocalizedStringFromTableInBundle();
    v52 = IMLocalizedStringFromTableInBundle();
    v72 = v42;
    v53 = [(IDSAppleIDNotificationCenter *)v73 _localizedServicesAccessStringForDevice:v77 serviceMessage:v42];
    v65 = objc_alloc_init(IMWeakLinkClass());
    v54 = objc_alloc_init(IMWeakLinkClass());
    v67 = v52;
    [v54 setTitle:v52];
    v66 = v53;
    v55 = [NSString localizedStringWithFormat:v53, v51];
    [v54 setMessage:v55];

    [v54 setAction:0];
    v56 = IDSDailyAccountAddedNotificationMetricTotalKey;
    v57 = [(IDSPersistentMap *)v73->_dailyMetricsData objectForKey:IDSDailyAccountAddedNotificationMetricTotalKey];
    [v57 doubleValue];
    v59 = v58;

    v60 = [(IDSPersistentMap *)v73->_dailyMetricsData objectForKey:IDSDailyAccountAddedNotificationMetricDuplicateKey];
    [v60 doubleValue];

    dailyMetricsData = v73->_dailyMetricsData;
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

- (id)_localizedServicesAccessStringForDevice:(id)a3 serviceMessage:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  if ([v5 isEqualToString:@"Mac"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"browser"))
  {
    v8 = @"A %@ now has access to %@. %%@";
  }

  else
  {
    v8 = @"A %@ now has access to %@. %%@";
    if (([v5 isEqualToString:@"device"] & 1) == 0 && !objc_msgSend(v5, "isEqualToString:", @"HomePod"))
    {
      v8 = @"An %@ now has access to %@. %%@";
    }
  }

  v9 = [NSString localizedStringWithFormat:v8, v5, v6];
  v10 = IMLocalizedStringFromTableInBundle();

  return v10;
}

- (id)_localizedServicesUsageStringForDevice:(id)a3 useSingular:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = @"are";
  if (v4)
  {
    v7 = @"is";
  }

  v8 = [NSString localizedStringWithFormat:@"Your %%@ %@ now being used for %%@ on a new %@.", v7, v5];

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
        v4 = [v3 sessions];
        v5 = [v4 allObjects];
        v6 = [v3 appleID];
        v7 = [v3 aliases];
        v8 = [v7 allObjects];
        v9 = [v3 deviceName];
        v10 = [v3 serviceTypes];
        v11 = [v10 allObjects];
        v12 = [v3 sessionToBlockMap];
        [(IDSAppleIDNotificationCenter *)self _postAvailableNotificationForSessions:v5 appleID:v6 aliases:v8 deviceName:v9 serviceTypes:v11 blockMap:v12];
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
        v17 = [v3 sessions];
        v4 = [v17 allObjects];
        v5 = [v3 appleID];
        v6 = [v3 aliases];
        v7 = [v6 allObjects];
        v8 = [v3 deviceName];
        v9 = [v3 deviceModel];
        v10 = [v3 deviceCapabilities];
        v11 = [v3 serviceTypes];
        v12 = [v11 allObjects];
        [(IDSAppleIDNotificationCenter *)self _postUsageNotificationForSessions:v4 appleID:v5 aliases:v7 deviceName:v8 deviceModel:v9 deviceCapabilities:v10 serviceTypes:v12];
      }

      v16 = [(NSMutableArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v16);
  }

  [(NSMutableArray *)self->_usageNotifications removeAllObjects];
}

- (void)_noteNewAvailableNotification:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CUTDeferredTaskQueue *)self->_processAvailableNotificationsTask cancelPendingExecutions];
    [(CUTDeferredTaskQueue *)self->_processAvailableNotificationsTask enqueueExecutionWithTarget:self afterDelay:5.0];
    if (([(NSMutableArray *)self->_availableNotifications containsObjectIdenticalTo:v4]& 1) == 0)
    {
      [(NSMutableArray *)self->_availableNotifications addObject:v4];
    }
  }
}

- (void)_noteNewUsageNotification:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CUTDeferredTaskQueue *)self->_processUsageNotificationsTask cancelPendingExecutions];
    [(CUTDeferredTaskQueue *)self->_processUsageNotificationsTask enqueueExecutionWithTarget:self afterDelay:5.0];
    if (([(NSMutableArray *)self->_usageNotifications containsObjectIdenticalTo:v4]& 1) == 0)
    {
      [(NSMutableArray *)self->_usageNotifications addObject:v4];
    }
  }
}

- (void)addAvailableNotificationForSession:(id)a3 appleID:(id)a4 alias:(id)a5 deviceName:(id)a6 serviceType:(id)a7 completionBlock:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v41 = a6;
  v17 = a7;
  v18 = a8;
  v19 = +[IDSPairingManager sharedInstance];
  v20 = [v19 isCurrentDeviceTinkerConfiguredWatch];

  v21 = +[FTDeviceSupport sharedInstance];
  v22 = [v21 deviceType];

  if (v22 != 6 || v20 != 0)
  {
    v24 = +[IMLockdownManager sharedInstance];
    v25 = [v24 isInternalInstall];

    if (v25)
    {
      v26 = IMGetDomainBoolForKey();
      if (!v16 || (v26 & 1) != 0)
      {
        goto LABEL_24;
      }
    }

    else if (!v16)
    {
      goto LABEL_24;
    }

    v39 = self;
    v40 = v15;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v27 = self->_availableNotifications;
    v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v28)
    {
      v29 = v28;
      v37 = v17;
      v38 = v14;
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
          v34 = [v33 aliases];
          v35 = [v34 containsObject:v16];

          if (v35)
          {
            v36 = v33;

            v30 = v36;
          }
        }

        v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v29);

      v17 = v37;
      v14 = v38;
      v15 = v40;
      if (v30)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    v30 = objc_alloc_init(IDSAppleIDNotification);
    [(IDSAppleIDNotification *)v30 setAppleID:v15];
    [(IDSAppleIDNotification *)v30 setDeviceName:v41];
    [(IDSAppleIDNotification *)v30 addAlias:v16];
LABEL_23:
    [(IDSAppleIDNotification *)v30 addServiceType:v17];
    [(IDSAppleIDNotification *)v30 addSession:v14];
    [(IDSAppleIDNotification *)v30 addCompletionBlock:v18 forSession:v14];
    [(IDSAppleIDNotificationCenter *)v39 _noteNewAvailableNotification:v30];
  }

LABEL_24:
}

- (void)addUsageNotificationForSession:(id)a3 appleID:(id)a4 alias:(id)a5 deviceName:(id)a6 hardwareVersion:(id)a7 deviceCapabilities:(id)a8 serviceType:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v40 = a7;
  v41 = a8;
  v19 = a9;
  v20 = +[IDSPairingManager sharedInstance];
  v21 = [v20 isCurrentDeviceTinkerConfiguredWatch];

  v22 = +[FTDeviceSupport sharedInstance];
  v23 = [v22 deviceType];

  if (v23 != 6 || v21)
  {
    v24 = +[IMLockdownManager sharedInstance];
    v25 = [v24 isInternalInstall];

    if (!v25 || (IMGetDomainBoolForKey() & 1) == 0)
    {
      v38 = self;
      v39 = v16;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v26 = self->_usageNotifications;
      v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v27)
      {
        v28 = v27;
        v36 = v17;
        v37 = v15;
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
            v33 = [v32 deviceName];
            v34 = [v33 isEqualToString:v18];

            if (v34)
            {
              v35 = v32;

              v29 = v35;
            }
          }

          v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v28);

        v17 = v36;
        v15 = v37;
        v16 = v39;
        if (v29)
        {
          goto LABEL_18;
        }
      }

      else
      {
      }

      v29 = objc_alloc_init(IDSAppleIDNotification);
      [(IDSAppleIDNotification *)v29 setAppleID:v16];
      [(IDSAppleIDNotification *)v29 setDeviceName:v18];
      [(IDSAppleIDNotification *)v29 setDeviceModel:v40];
LABEL_18:
      [(IDSAppleIDNotification *)v29 addAlias:v17];
      [(IDSAppleIDNotification *)v29 addServiceType:v19];
      [(IDSAppleIDNotification *)v29 addSession:v15];
      [(IDSAppleIDNotification *)v29 setDeviceCapabilities:v41];
      [(IDSAppleIDNotificationCenter *)v38 _noteNewUsageNotification:v29];
    }
  }
}

- (void)reportDailyNotificationMetrics
{
  v9 = [(IDSPersistentMap *)self->_dailyMetricsData copyDictionaryRepresentation];
  v3 = IDSDailyAccountAddedNotificationMetricTotalKey;
  v4 = [v9 objectForKey:IDSDailyAccountAddedNotificationMetricTotalKey];
  v5 = IDSDailyAccountAddedNotificationMetricDuplicateKey;
  v6 = [v9 objectForKey:IDSDailyAccountAddedNotificationMetricDuplicateKey];
  v7 = [[IDSDailyAccountAddedNotificationsMetric alloc] initWithNotificationsPostedToday:v4 duplicateNotificationPostedToday:v6];
  v8 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v8 logMetric:v7];

  [(IDSPersistentMap *)self->_dailyMetricsData setObject:&off_100C3C7A8 forKey:v3];
  [(IDSPersistentMap *)self->_dailyMetricsData setObject:&off_100C3C7A8 forKey:v5];
}

@end