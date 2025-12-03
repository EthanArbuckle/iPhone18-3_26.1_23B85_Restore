@interface IMSenderIdentityManager
+ (BOOL)isTUSenderIdentity:(id)identity equalToSubscriptionContext:(id)context;
+ (id)sharedInstance;
- (IMSenderIdentityManager)init;
- (id)bestSenderIdentityForGeminiHandle:(id)handle contact:(id)contact;
- (id)bestSenderIdentityForHandleID:(id)d contact:(id)contact;
- (id)bestSenderIdentityForHandleIDs:(id)ds;
- (id)contactPreferredSenderIdentityForHandleID:(id)d contact:(id)contact;
@end

@implementation IMSenderIdentityManager

+ (id)sharedInstance
{
  if (qword_1ED8CA450 != -1)
  {
    sub_1A88C582C();
  }

  v3 = qword_1ED8CA3B8;

  return v3;
}

- (IMSenderIdentityManager)init
{
  v6.receiver = self;
  v6.super_class = IMSenderIdentityManager;
  v2 = [(IMSenderIdentityManager *)&v6 init];
  if (v2)
  {
    if (qword_1EB309620 != -1)
    {
      sub_1A88C5840();
    }

    v3 = objc_alloc_init(MEMORY[0x1AC570AA0](@"CNGeminiManager", @"Contacts"));
    geminiManager = v2->_geminiManager;
    v2->_geminiManager = v3;
  }

  return v2;
}

- (id)bestSenderIdentityForHandleIDs:(id)ds
{
  v27 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  dsCopy = ds;
  v5 = 0;
  v6 = [dsCopy countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v7 = *v19;
    while (2)
    {
      v8 = 0;
      v9 = v5;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(dsCopy);
        }

        v10 = [(IMSenderIdentityManager *)self bestSenderIdentityForHandleID:*(*(&v18 + 1) + 8 * v8) contact:0, v18];
        v5 = v10;
        if (v9)
        {
          if (v10)
          {
            accountUUID = [v10 accountUUID];
            accountUUID2 = [v9 accountUUID];
            v13 = [accountUUID isEqual:accountUUID2];

            if ((v13 & 1) == 0)
            {
              if (IMOSLoggingEnabled())
              {
                v16 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v23 = v9;
                  v24 = 2112;
                  v25 = v5;
                  _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "Chat had recipients with different contact preferred subscriptions (%@ / %@). Returning nil.", buf, 0x16u);
                }
              }

              v15 = 0;
              goto LABEL_21;
            }
          }
        }

        ++v8;
        v9 = v5;
      }

      while (v6 != v8);
      v6 = [dsCopy countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v23 = v5;
      v24 = 2112;
      v25 = dsCopy;
      _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Best sender identity :%@ for handleIDs :%@", buf, 0x16u);
    }
  }

  v9 = v5;
  v15 = v9;
LABEL_21:

  return v15;
}

- (id)bestSenderIdentityForHandleID:(id)d contact:(id)contact
{
  dCopy = d;
  contactCopy = contact;
  v8 = [dCopy length];
  if (contactCopy || v8)
  {
    v11 = [[qword_1EB3096C8 alloc] initWithString:dCopy type:-1];
    v10 = [(IMSenderIdentityManager *)self bestSenderIdentityForGeminiHandle:v11 contact:contactCopy];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "bestSenderIdentityForHandleID: called with empty handle and no contact", v13, 2u);
      }
    }

    v10 = 0;
  }

  return v10;
}

- (id)contactPreferredSenderIdentityForHandleID:(id)d contact:(id)contact
{
  dCopy = d;
  contactCopy = contact;
  v8 = [dCopy length];
  if (contactCopy || v8)
  {
    geminiManager = [(IMSenderIdentityManager *)self geminiManager];
    v18 = 0;
    v12 = [geminiManager geminiResultForContact:contactCopy error:&v18];
    v13 = v18;

    if ([v12 usage] == 1)
    {
      geminiManager2 = [(IMSenderIdentityManager *)self geminiManager];
      v17 = v13;
      v10 = [geminiManager2 bestSenderIdentityForContact:contactCopy error:&v17];
      v15 = v17;

      v13 = v15;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "contactPreferredSenderIdentityForHandleID: called with empty handle and no contact", buf, 2u);
      }
    }

    v10 = 0;
  }

  return v10;
}

- (id)bestSenderIdentityForGeminiHandle:(id)handle contact:(id)contact
{
  v37 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  contactCopy = contact;
  if ([IMContactStore isCNContactAKnownContact:contactCopy])
  {
    geminiManager = [(IMSenderIdentityManager *)self geminiManager];
    v32 = 0;
    firstObject = [geminiManager bestSenderIdentityForContact:contactCopy error:&v32];
    v10 = v32;

    goto LABEL_12;
  }

  stringValue = [handleCopy stringValue];
  v12 = [stringValue length];

  v13 = IMOSLoggingEnabled();
  if (v12)
  {
    if (v13)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v34 = handleCopy;
        v35 = 2112;
        v36 = handleCopy;
        _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "bestSenderIdentityForGeminiHandle:contact: called with handle that has nil contact: %@. Attempting to find with TU handle %@.", buf, 0x16u);
      }
    }

    geminiManager2 = [(IMSenderIdentityManager *)self geminiManager];
    v16 = objc_alloc_init(qword_1ED8CA2A8);
    v31 = 0;
    firstObject = [geminiManager2 bestSenderIdentityForHandle:handleCopy contactStore:v16 error:&v31];
    v10 = v31;

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        handle = [firstObject handle];
        value = [handle value];
        *buf = 138412290;
        v34 = value;
        _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "bestSenderIdentityForGeminiHandle:contact: returned handle %@.", buf, 0xCu);
      }
    }

LABEL_12:
    if (v10 && IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v34 = v10;
        _os_log_impl(&dword_1A85E5000, v20, OS_LOG_TYPE_INFO, "IMSenderIdentityManager: Error fetching sender identity: %@", buf, 0xCu);
      }
    }

    if (firstObject)
    {
      goto LABEL_40;
    }

    goto LABEL_24;
  }

  if (v13)
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v21, OS_LOG_TYPE_INFO, "bestSenderIdentityForGeminiHandle:contact: called with empty handle and no contact", buf, 2u);
    }
  }

  v10 = 0;
LABEL_24:
  v22 = MEMORY[0x1AC570AA0](@"TUCallCenter", @"TelephonyUtilities");
  if (!v22)
  {
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v28, OS_LOG_TYPE_INFO, "Failed to weak link TUCallCenter", buf, 2u);
      }
    }

    goto LABEL_35;
  }

  sharedInstance = [v22 sharedInstance];
  providerManager = [sharedInstance providerManager];
  telephonyProvider = [providerManager telephonyProvider];

  prioritizedSenderIdentities = [telephonyProvider prioritizedSenderIdentities];
  firstObject = [prioritizedSenderIdentities firstObject];

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = firstObject;
      _os_log_impl(&dword_1A85E5000, v27, OS_LOG_TYPE_INFO, "TUCallProvider provided prioritized sender identity: %@", buf, 0xCu);
    }
  }

  if (!firstObject)
  {
LABEL_35:
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v29, OS_LOG_TYPE_INFO, "IMSenderIdentityManager: bestSenderIdentityForGeminiHandle:contact: returning nil sender identity", buf, 2u);
      }
    }

    firstObject = 0;
  }

LABEL_40:

  return firstObject;
}

+ (BOOL)isTUSenderIdentity:(id)identity equalToSubscriptionContext:(id)context
{
  if (!identity || !context)
  {
    return 0;
  }

  contextCopy = context;
  accountUUID = [identity accountUUID];
  uUIDString = [accountUUID UUIDString];
  labelID = [contextCopy labelID];

  LOBYTE(contextCopy) = [uUIDString isEqualToString:labelID];
  return contextCopy;
}

@end