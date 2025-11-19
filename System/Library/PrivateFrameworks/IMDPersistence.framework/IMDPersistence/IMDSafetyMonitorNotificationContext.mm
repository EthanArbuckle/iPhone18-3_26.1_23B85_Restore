@interface IMDSafetyMonitorNotificationContext
- (BOOL)canPopulateUserInfoForMessageBalloonBundleID:(id)a3;
- (id)notificationCategories;
- (void)populateUserInfoForNotificationContent:(id)a3 messageBalloonBundleID:(id)a4 payloadData:(id)a5 chatIdentifier:(id)a6 isUrgentMessageTrigger:(BOOL *)a7 shouldSuppressNotification:(BOOL *)a8;
@end

@implementation IMDSafetyMonitorNotificationContext

- (BOOL)canPopulateUserInfoForMessageBalloonBundleID:(id)a3
{
  v3 = *MEMORY[0x1E69A6930];
  v4 = a3;
  v5 = IMBalloonExtensionIDWithSuffix();
  isEqualToString = objc_msgSend_isEqualToString_(v4, v6, v5);

  return isEqualToString;
}

- (id)notificationCategories
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6983218];
  v3 = *MEMORY[0x1E69A7838];
  v4 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], a2, @"MADRID_MESSAGE_FORMAT", 0);
  v6 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v5, @"SINGLE_SUMMARY_FORMAT", 0);
  v7 = MEMORY[0x1E695E0F0];
  v9 = objc_msgSend_categoryWithIdentifier_actions_intentIdentifiers_hiddenPreviewsBodyPlaceholder_categorySummaryFormat_options_(v2, v8, v3, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], v4, v6, 14);

  if (v9)
  {
    v13[0] = v9;
    v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v10, v13, 1);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)populateUserInfoForNotificationContent:(id)a3 messageBalloonBundleID:(id)a4 payloadData:(id)a5 chatIdentifier:(id)a6 isUrgentMessageTrigger:(BOOL *)a7 shouldSuppressNotification:(BOOL *)a8
{
  v43 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if (objc_msgSend_canPopulateUserInfoForMessageBalloonBundleID_(self, v18, v15))
  {
    v19 = IMDictionaryFromPayloadData();
    v22 = IMSanitizedURLForIMExtensionPayloadURLKey();
    if (v22)
    {
      v23 = objc_msgSend_sharedCoordinator(MEMORY[0x1E69A8218], v20, v21);
      v25 = objc_msgSend_notificationContentForInitiator_messageURL_content_(v23, v24, v17, v22, v14);

      if (v25 != 2)
      {
        if (v25 == 1)
        {
          *a7 = 1;
        }

        v28 = objc_msgSend_userInfo(v14, v26, v27);
        Mutable = objc_msgSend_mutableCopy(v28, v29, v30);

        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        v34 = objc_msgSend_absoluteString(v22, v32, v33);
        objc_msgSend_setObject_forKey_(Mutable, v35, v34, *MEMORY[0x1E69A7820]);

        objc_msgSend_setObject_forKey_(Mutable, v36, MEMORY[0x1E695E118], *MEMORY[0x1E69A7830]);
        objc_msgSend_setUserInfo_(v14, v37, Mutable);

LABEL_18:
        goto LABEL_19;
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        LOWORD(v41) = 0;
        _os_log_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_INFO, "Unable to extract URL from Message, supressing the notification", &v41, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v41 = 138412290;
        v42 = v22;
        _os_log_impl(&dword_1B7AD5000, v39, OS_LOG_TYPE_INFO, "Supressing the notification for %@", &v41, 0xCu);
      }
    }

    *a8 = 1;
    goto LABEL_18;
  }

LABEL_19:

  v40 = *MEMORY[0x1E69E9840];
}

@end