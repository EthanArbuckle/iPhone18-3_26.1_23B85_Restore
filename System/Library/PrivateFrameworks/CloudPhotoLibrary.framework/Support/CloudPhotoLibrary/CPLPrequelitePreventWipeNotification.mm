@interface CPLPrequelitePreventWipeNotification
+ (void)resetNotificationForLibraryIdentifier:(id)a3;
- (BOOL)_warnUserAndReturnIfShouldPreventWipeOnUpgradeCreateRadar:(BOOL)a3;
- (CPLPrequelitePreventWipeNotification)initWithLibraryIdentifier:(id)a3 reason:(id)a4;
- (id)createRadarURL;
- (void)_save;
@end

@implementation CPLPrequelitePreventWipeNotification

+ (void)resetNotificationForLibraryIdentifier:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v5 = +[NSUserDefaults standardUserDefaults];
    v4 = sub_100169A30(v3);

    [v5 removeObjectForKey:v4];
  }
}

- (CPLPrequelitePreventWipeNotification)initWithLibraryIdentifier:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = CPLPrequelitePreventWipeNotification;
  v8 = [(CPLPrequelitePreventWipeNotification *)&v22 init];
  if (v8)
  {
    v9 = [v6 copy];
    libraryIdentifier = v8->_libraryIdentifier;
    v8->_libraryIdentifier = v9;

    v11 = [v7 copy];
    reason = v8->_reason;
    v8->_reason = v11;

    v13 = v8->_libraryIdentifier;
    if (v13)
    {
      v14 = sub_100169A30(v13);
      defaultsKey = v8->_defaultsKey;
      v8->_defaultsKey = v14;

      v16 = +[NSUserDefaults standardUserDefaults];
      v17 = [v16 objectForKey:v8->_defaultsKey];
      ignoreBeforeDate = v8->_ignoreBeforeDate;
      v8->_ignoreBeforeDate = v17;

      v19 = v8->_ignoreBeforeDate;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = v8->_ignoreBeforeDate;
        v8->_ignoreBeforeDate = 0;
      }
    }
  }

  return v8;
}

- (void)_save
{
  if (self->_defaultsKey)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    ignoreBeforeDate = self->_ignoreBeforeDate;
    if (ignoreBeforeDate)
    {
      [v4 setObject:ignoreBeforeDate forKey:self->_defaultsKey];
    }

    else
    {
      [v4 removeObjectForKey:self->_defaultsKey];
    }

    [v4 synchronize];
  }
}

- (BOOL)_warnUserAndReturnIfShouldPreventWipeOnUpgradeCreateRadar:(BOOL)a3
{
  v3 = a3;
  if (self->_reason)
  {
    v5 = [NSString alloc];
    reason = self->_reason;
    v6 = [v5 initWithFormat:@"%@."];
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = @"iCloud Photo Library is about to wipe its whole sync state.";
  if (!a3)
  {
LABEL_3:
    v7 = [(__CFString *)v6 stringByAppendingString:@"\nThis will trigger a potential lengthy reset sync but should not lose any data."];

    v6 = v7;
  }

LABEL_4:
  v50[0] = kCFUserNotificationAlertHeaderKey;
  v50[1] = kCFUserNotificationAlertMessageKey;
  v51[0] = @"iCloud Photo Library";
  v51[1] = v6;
  v50[2] = kCFUserNotificationAlertTopMostKey;
  v51[2] = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:3];
  v9 = [v8 mutableCopy];

  if (v3)
  {
    v48[0] = kCFUserNotificationDefaultButtonTitleKey;
    v48[1] = kCFUserNotificationAlternateButtonTitleKey;
    v49[0] = @"Create Radar";
    v49[1] = @"OK";
    v48[2] = kCFUserNotificationOtherButtonTitleKey;
    v49[2] = @"Not Now";
    v10 = v49;
    v11 = v48;
  }

  else
  {
    v46[0] = kCFUserNotificationDefaultButtonTitleKey;
    v46[1] = kCFUserNotificationAlternateButtonTitleKey;
    v47[0] = @"Not now";
    v47[1] = @"Wipe Local Sync State";
    v46[2] = kCFUserNotificationOtherButtonTitleKey;
    v47[2] = @"Ignore for 1 hour";
    v10 = v47;
    v11 = v46;
  }

  v12 = [NSDictionary dictionaryWithObjects:v10 forKeys:v11 count:3];
  [v9 addEntriesFromDictionary:v12];

  HIDWORD(v42) = 0;
  v13 = CFUserNotificationCreate(0, 60.0, 3uLL, &v42 + 1, v9);
  if (v13)
  {
    v14 = v13;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v45 = HIDWORD(v6);
        sub_100169D5C(&_mh_execute_header, v16, v17, "Waiting for response to message: %@", v18, v19, v20, v21, reason, v40, responseFlags, v42, 2u);
      }
    }

    responseFlags = 0;
    CFUserNotificationReceiveResponse(v14, 60.0, &responseFlags);
    CFRelease(v14);
    v22 = responseFlags & 3;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v23 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [NSNumber numberWithUnsignedLong:v22];
        v45 = HIDWORD(v24);
        sub_100169D5C(&_mh_execute_header, v25, v26, "Button pressed is %@", v27, v28, v29, v30, reason, v40, responseFlags, v42, 2u);
      }
    }

    ignoreBeforeDate = self->_ignoreBeforeDate;
    self->_ignoreBeforeDate = 0;

    if (v3)
    {
      if (v22 != 2)
      {
        if (v22 != 1)
        {
          v32 = [(CPLPrequelitePreventWipeNotification *)self createRadarURL];
          v33 = +[LSApplicationWorkspace defaultWorkspace];
          [v33 openURL:v32 configuration:0 completionHandler:0];
        }

        goto LABEL_29;
      }
    }

    else if (v22 == 2)
    {
      v36 = [NSDate dateWithTimeIntervalSinceNow:3600.0];
      v37 = self->_ignoreBeforeDate;
      self->_ignoreBeforeDate = v36;
    }

    else if (v22 == 1)
    {
LABEL_29:
      v35 = 0;
LABEL_32:
      [(CPLPrequelitePreventWipeNotification *)self _save];
      goto LABEL_33;
    }

    v35 = 1;
    goto LABEL_32;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v34 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v44 = HIDWORD(v42);
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Could not create user notification to prevent wiping database: %d", buf, 8u);
    }
  }

  v35 = 0;
LABEL_33:

  return v35;
}

- (id)createRadarURL
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = v3;
  if (self->_reason)
  {
    reason = self->_reason;
  }

  else
  {
    reason = @"CPL wants to wipe its database";
  }

  [v3 setObject:reason forKeyedSubscript:@"Title"];
  [v4 setObject:@"Other Bug" forKeyedSubscript:@"Classification"];
  [v4 setObject:@"com.apple.PhotoLibraryServices.PhotosDiagnostics" forKeyedSubscript:@"ExtensionIdentifiers"];
  [v4 setObject:@"Not Applicable" forKeyedSubscript:@"Reproducibility"];
  [v4 setObject:@"Photos Backend iCloud" forKeyedSubscript:@"ComponentName"];
  [v4 setObject:@"630691" forKeyedSubscript:@"ComponentID"];
  [v4 setObject:@"all" forKeyedSubscript:@"ComponentVersion"];
  if (self->_reason)
  {
    v6 = [[NSString alloc] initWithFormat:@"%@\nReason: %@.", @"CPL presented a notification warning me that it was about to wipe its database.", self->_reason];
    [v4 setObject:v6 forKeyedSubscript:@"Description"];
  }

  else
  {
    [v4 setObject:@"CPL presented a notification warning me that it was about to wipe its database." forKeyedSubscript:@"Description"];
  }

  v7 = [NSURLComponents componentsWithString:@"tap-to-radar://new"];
  v8 = objc_alloc_init(NSMutableArray);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v9 objectForKeyedSubscript:v14];
        v16 = [NSURLQueryItem queryItemWithName:v14 value:v15];
        [v8 addObject:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v11);
  }

  [v7 setQueryItems:v8];
  v17 = [v7 URL];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v18 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Create radar URL: %@", buf, 0xCu);
    }
  }

  return v17;
}

@end