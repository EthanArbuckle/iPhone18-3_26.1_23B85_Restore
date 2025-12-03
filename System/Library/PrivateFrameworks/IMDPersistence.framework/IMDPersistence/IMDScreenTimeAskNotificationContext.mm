@interface IMDScreenTimeAskNotificationContext
- (BOOL)canPopulateUserInfoForMessageBalloonBundleID:(id)d;
- (NSArray)actions;
- (id)notificationCategories;
- (void)populateUserInfoForNotificationContent:(id)content messageBalloonBundleID:(id)d payloadData:(id)data;
@end

@implementation IMDScreenTimeAskNotificationContext

- (NSArray)actions
{
  v32[4] = *MEMORY[0x1E69E9840];
  actions = self->_actions;
  if (!actions)
  {
    v4 = MEMORY[0x1E6983250];
    v5 = *MEMORY[0x1E69A78D0];
    v6 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], a2, @"APPROVE_FOR_15_MINUTES", 0);
    v8 = objc_msgSend_actionWithIdentifier_title_options_(v4, v7, v5, v6, 1);

    v9 = MEMORY[0x1E6983250];
    v10 = *MEMORY[0x1E69A78E0];
    v12 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v11, @"APPROVE_FOR_AN_HOUR", 0);
    v14 = objc_msgSend_actionWithIdentifier_title_options_(v9, v13, v10, v12, 1);

    v15 = MEMORY[0x1E6983250];
    v16 = *MEMORY[0x1E69A78C8];
    v18 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v17, @"APPROVE_ALL_DAY", 0);
    v20 = objc_msgSend_actionWithIdentifier_title_options_(v15, v19, v16, v18, 1);

    v21 = MEMORY[0x1E6983250];
    v22 = *MEMORY[0x1E69A78D8];
    v24 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v23, @"DONT_APPROVE", 0);
    v26 = objc_msgSend_actionWithIdentifier_title_options_(v21, v25, v22, v24, 3);

    v32[0] = v8;
    v32[1] = v14;
    v32[2] = v20;
    v32[3] = v26;
    v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v32, 4);
    v29 = self->_actions;
    self->_actions = v28;

    actions = self->_actions;
  }

  v30 = *MEMORY[0x1E69E9840];

  return actions;
}

- (BOOL)canPopulateUserInfoForMessageBalloonBundleID:(id)d
{
  v3 = *MEMORY[0x1E69A6910];
  dCopy = d;
  v5 = IMBalloonExtensionIDWithSuffix();
  isEqualToString = objc_msgSend_isEqualToString_(dCopy, v6, v5);

  return isEqualToString;
}

- (void)populateUserInfoForNotificationContent:(id)content messageBalloonBundleID:(id)d payloadData:(id)data
{
  v68 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  dCopy = d;
  dataCopy = data;
  if (objc_msgSend_canPopulateUserInfoForMessageBalloonBundleID_(self, v11, dCopy))
  {
    objc_msgSend_setCategoryIdentifier_(contentCopy, v12, *MEMORY[0x1E69A7848]);
    v57 = dataCopy;
    v59 = IMDictionaryFromPayloadData();
    v60 = IMSanitizedURLForIMExtensionPayloadURLKey();
    v13 = [IMDAskToParser alloc];
    v58 = objc_msgSend_initWithUrl_(v13, v14, v60);
    v19 = objc_msgSend_questionIdentifier(v58, v15, v16);
    if (!v19)
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Could not find request identifier using AskTo bits. Looking in URL for request identifier instead.", buf, 2u);
        }
      }

      v56 = objc_msgSend_componentsWithURL_resolvingAgainstBaseURL_(MEMORY[0x1E696AF20], v20, v60, 0);
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v24 = objc_msgSend_queryItems(v56, v22, v23);
      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v61, v67, 16);
      if (v28)
      {
        v29 = *v62;
        while (2)
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v62 != v29)
            {
              objc_enumerationMutation(v24);
            }

            v31 = *(*(&v61 + 1) + 8 * i);
            v32 = objc_msgSend_name(v31, v26, v27);
            isEqualToString = objc_msgSend_isEqualToString_(v32, v33, @"requestID");

            if (isEqualToString)
            {
              v19 = objc_msgSend_value(v31, v26, v27);
              goto LABEL_17;
            }
          }

          v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v61, v67, 16);
          if (v28)
          {
            continue;
          }

          break;
        }
      }

      v19 = 0;
LABEL_17:
    }

    v35 = objc_msgSend_userInfo(contentCopy, v17, v18);
    Mutable = objc_msgSend_mutableCopy(v35, v36, v37);

    if (Mutable)
    {
      if (v19)
      {
LABEL_20:
        if (IMOSLoggingEnabled())
        {
          v40 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v66 = v19;
            _os_log_impl(&dword_1B7AD5000, v40, OS_LOG_TYPE_INFO, "Adding request identifier to notification context: %@", buf, 0xCu);
          }
        }

        objc_msgSend_setObject_forKey_(Mutable, v39, v19, *MEMORY[0x1E69A7828]);
LABEL_35:
        objc_msgSend_setObject_forKey_(Mutable, v41, MEMORY[0x1E695E118], *MEMORY[0x1E69A7830]);
        objc_msgSend_setUserInfo_(contentCopy, v53, Mutable);
        objc_msgSend_setInterruptionLevel_(contentCopy, v54, 2);

        dataCopy = v57;
        goto LABEL_36;
      }
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v19)
      {
        goto LABEL_20;
      }
    }

    if (v60)
    {
      if (IMOSLoggingEnabled())
      {
        v44 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v47 = objc_msgSend_absoluteString(v60, v45, v46);
          v49 = objc_msgSend_lengthOfBytesUsingEncoding_(v47, v48, 4);
          *buf = 134217984;
          v66 = v49;
          _os_log_impl(&dword_1B7AD5000, v44, OS_LOG_TYPE_INFO, "Couldn't find request identifier in URL. Attaching URL itself instead. url size is %zd", buf, 0xCu);
        }
      }

      v50 = objc_msgSend_absoluteString(v60, v42, v43);
      objc_msgSend_setObject_forKey_(Mutable, v51, v50, *MEMORY[0x1E69A7820]);
    }

    else
    {
      v52 = IMLogHandleForCategory();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF51F8(v52);
      }
    }

    goto LABEL_35;
  }

LABEL_36:

  v55 = *MEMORY[0x1E69E9840];
}

- (id)notificationCategories
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6983218];
  v4 = *MEMORY[0x1E69A7848];
  v5 = objc_msgSend_actions(self, a2, v2);
  v7 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v6, @"MADRID_MESSAGE_FORMAT", 0);
  v9 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v8, @"SINGLE_SUMMARY_FORMAT", 0);
  v10 = MEMORY[0x1E695E0F0];
  v12 = objc_msgSend_categoryWithIdentifier_actions_intentIdentifiers_hiddenPreviewsBodyPlaceholder_categorySummaryFormat_options_(v3, v11, v4, v5, MEMORY[0x1E695E0F0], v7, v9, 14);

  if (v12)
  {
    v16[0] = v12;
    v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v13, v16, 1);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

@end