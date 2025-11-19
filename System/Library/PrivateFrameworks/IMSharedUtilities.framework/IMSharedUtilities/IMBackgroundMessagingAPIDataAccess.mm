@interface IMBackgroundMessagingAPIDataAccess
+ (id)appBundleIDs;
+ (id)recipientsForBundleID:(id)a3;
+ (id)recipientsForBundleIDFromPreferences:(id)a3;
+ (unint64_t)enabledPhoneNumbersForBundleID:(id)a3;
+ (unint64_t)numberOfAppsUsingBackgroundMessaging;
+ (void)deleteAllData;
+ (void)resetStorageIfNeeded;
+ (void)saveAppBundleIDs:(id)a3;
+ (void)saveRecipients:(id)a3 forBundleID:(id)a4;
+ (void)saveRecipientsToPreferences:(id)a3 forBundleID:(id)a4;
+ (void)toggleEnablement:(BOOL)a3 forRecipient:(id)a4 inAppBundleID:(id)a5;
@end

@implementation IMBackgroundMessagingAPIDataAccess

+ (void)deleteAllData
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [a1 appBundleIDs];
  CFPreferencesSetAppValue(@"ApprovedApps", 0, @"com.apple.messages.critical-messaging.storage");
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        CFPreferencesSetAppValue(*(*(&v8 + 1) + 8 * v7++), 0, @"com.apple.messages.critical-messaging.storage");
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  CFPreferencesAppSynchronize(@"com.apple.messages.critical-messaging.storage");
}

+ (void)resetStorageIfNeeded
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CFPreferencesCopyAppValue(@"StorageVersion", @"com.apple.messages.critical-messaging.storage");
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "storageVersion %@", &v7, 0xCu);
    }
  }

  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 intValue] <= 0)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v7) = 0;
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Deleting all data", &v7, 2u);
      }
    }

    [a1 deleteAllData];
    v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
    CFPreferencesSetAppValue(@"StorageVersion", v6, @"com.apple.messages.critical-messaging.storage");
    CFPreferencesAppSynchronize(@"com.apple.messages.critical-messaging.storage");
  }
}

+ (unint64_t)numberOfAppsUsingBackgroundMessaging
{
  v2 = +[IMBackgroundMessagingAPIDataAccess appBundleIDs];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 count];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)appBundleIDs
{
  v2 = CFPreferencesCopyAppValue(@"ApprovedApps", @"com.apple.messages.critical-messaging.storage");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Failed to parse appBundleIDs", v6, 2u);
      }
    }

    v3 = 0;
  }

  return v3;
}

+ (void)saveAppBundleIDs:(id)a3
{
  CFPreferencesSetAppValue(@"ApprovedApps", a3, @"com.apple.messages.critical-messaging.storage");

  CFPreferencesAppSynchronize(@"com.apple.messages.critical-messaging.storage");
}

+ (id)recipientsForBundleID:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [a1 recipientsForBundleIDFromPreferences:a3];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [v3 allKeys];
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v3 objectForKey:v9];
        v11 = [v10 objectForKey:@"DisplayNameKey"];
        v12 = [v10 objectForKey:@"AuthorizationStatusKey"];
        v13 = objc_alloc_init(IMBackgroundMessageRecipient);
        [(IMBackgroundMessageRecipient *)v13 setPhoneNumber:v9];
        [(IMBackgroundMessageRecipient *)v13 setDisplayName:v11];
        [v4 setObject:v12 forKey:v13];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)recipientsForBundleIDFromPreferences:(id)a3
{
  v3 = a3;
  v4 = CFPreferencesCopyAppValue(v3, @"com.apple.messages.critical-messaging.storage");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Failed to parse appBundleIDs", v8, 2u);
      }
    }

    v5 = 0;
  }

  return v5;
}

+ (void)saveRecipientsToPreferences:(id)a3 forBundleID:(id)a4
{
  CFPreferencesSetAppValue(a4, a3, @"com.apple.messages.critical-messaging.storage");

  CFPreferencesAppSynchronize(@"com.apple.messages.critical-messaging.storage");
}

+ (void)saveRecipients:(id)a3 forBundleID:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v5 = a4;
  v21 = +[IMBackgroundMessagingAPIDataAccess appBundleIDs];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1A86D310C;
  v27[3] = &unk_1E7829DA8;
  v20 = v5;
  v28 = v20;
  v29 = &v30;
  [v21 enumerateObjectsUsingBlock:v27];
  if ((v31[3] & 1) == 0)
  {
    if (v21)
    {
      v6 = [v21 mutableCopy];
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v7 = v6;
    [v6 addObject:v20];
    [IMBackgroundMessagingAPIDataAccess saveAppBundleIDs:v7];
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [v22 allKeys];
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v36 count:16];
  if (v10)
  {
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v34[0] = @"AuthorizationStatusKey";
        v14 = [v22 objectForKey:v13];
        v34[1] = @"DisplayNameKey";
        v35[0] = v14;
        v15 = [v13 displayName];
        v16 = v15;
        v17 = &stru_1F1BB91F0;
        if (v15)
        {
          v17 = v15;
        }

        v35[1] = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];

        v19 = [v13 phoneNumber];
        [v8 setObject:v18 forKey:v19];
      }

      v10 = [v9 countByEnumeratingWithState:&v23 objects:v36 count:16];
    }

    while (v10);
  }

  [IMBackgroundMessagingAPIDataAccess saveRecipientsToPreferences:v8 forBundleID:v20];
  _Block_object_dispose(&v30, 8);
}

+ (unint64_t)enabledPhoneNumbersForBundleID:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [a1 recipientsForBundleID:a3];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 allValues];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * i) intValue] == 2)
        {
          ++v7;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)toggleEnablement:(BOOL)a3 forRecipient:(id)a4 inAppBundleID:(id)a5
{
  v6 = a3;
  v17 = a4;
  v8 = a5;
  v9 = [a1 recipientsForBundleIDFromPreferences:v8];
  if (v9)
  {
    v10 = [v17 phoneNumber];
    v11 = [v9 objectForKey:v10];

    if (v11)
    {
      if (v6)
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      v13 = [MEMORY[0x1E696AD98] numberWithInt:v12];
      v14 = [v11 mutableCopy];
      [v14 setObject:v13 forKey:@"AuthorizationStatusKey"];
      v15 = [v9 mutableCopy];
      v16 = [v17 phoneNumber];
      [v15 setObject:v14 forKey:v16];

      [IMBackgroundMessagingAPIDataAccess saveRecipientsToPreferences:v15 forBundleID:v8];
    }
  }
}

@end