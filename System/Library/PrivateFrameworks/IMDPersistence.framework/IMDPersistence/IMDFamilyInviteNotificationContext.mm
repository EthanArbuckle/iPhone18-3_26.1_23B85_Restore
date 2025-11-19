@interface IMDFamilyInviteNotificationContext
- (BOOL)canPopulateUserInfoForMessageBalloonBundleID:(id)a3;
- (BOOL)inviteeIsTeen;
- (NSArray)actions;
- (id)notificationCategories;
- (void)populateUserInfoForNotificationContent:(id)a3 messageBalloonBundleID:(id)a4 payloadData:(id)a5;
@end

@implementation IMDFamilyInviteNotificationContext

- (BOOL)inviteeIsTeen
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v3 = qword_1EBA53F68;
  v28 = qword_1EBA53F68;
  if (!qword_1EBA53F68)
  {
    *buf = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = sub_1B7B79DA8;
    v23 = &unk_1E7CB6EA8;
    v24 = &v25;
    sub_1B7B79DA8(buf, a2, v2);
    v3 = v26[3];
  }

  v4 = v3;
  _Block_object_dispose(&v25, 8);
  v5 = objc_alloc_init(v3);
  objc_msgSend_setCachePolicy_(v5, v6, 1);
  v19 = 0;
  v8 = objc_msgSend_fetchFamilyCircleWithError_(v5, v7, &v19);
  v11 = v19;
  if (v11)
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF73C8(v11, v12);
    }

LABEL_6:

    goto LABEL_7;
  }

  if (!v8)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_7;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "FAFetchFamilyCircleRequest returned nil", buf, 2u);
    }

    goto LABEL_6;
  }

  v15 = objc_msgSend__serverResponse(v8, v9, v10);
  v17 = objc_msgSend_objectForKeyedSubscript_(v15, v16, @"age-category");

  LOBYTE(v15) = objc_msgSend_isEqualToString_(v17, v18, @"TEEN");
  if (v15)
  {
    v13 = 1;
    goto LABEL_8;
  }

LABEL_7:
  v13 = 0;
LABEL_8:

  return v13;
}

- (NSArray)actions
{
  v14[1] = *MEMORY[0x1E69E9840];
  actions = self->_actions;
  if (!actions)
  {
    v4 = MEMORY[0x1E6983250];
    v5 = *MEMORY[0x1E69A6F38];
    v6 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], a2, @"VIEW_INVITATION", 0);
    v8 = objc_msgSend_actionWithIdentifier_title_options_(v4, v7, v5, v6, 1);

    v14[0] = v8;
    v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v9, v14, 1);
    v11 = self->_actions;
    self->_actions = v10;

    actions = self->_actions;
  }

  v12 = *MEMORY[0x1E69E9840];

  return actions;
}

- (BOOL)canPopulateUserInfoForMessageBalloonBundleID:(id)a3
{
  v3 = *MEMORY[0x1E69A6900];
  v4 = a3;
  v5 = IMBalloonExtensionIDWithSuffix();
  isEqualToString = objc_msgSend_isEqualToString_(v4, v6, v5);

  return isEqualToString;
}

- (void)populateUserInfoForNotificationContent:(id)a3 messageBalloonBundleID:(id)a4 payloadData:(id)a5
{
  v76 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!objc_msgSend_canPopulateUserInfoForMessageBalloonBundleID_(self, v11, v9))
  {
    goto LABEL_29;
  }

  objc_msgSend_setCategoryIdentifier_(v8, v12, *MEMORY[0x1E69A7840]);
  v13 = IMDictionaryFromPayloadData();
  v14 = IMSanitizedURLForIMExtensionPayloadURLKey();
  objc_msgSend_componentsWithURL_resolvingAgainstBaseURL_(MEMORY[0x1E696AF20], v15, v14, 0);
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = v74 = 0u;
  v18 = objc_msgSend_queryItems(v70, v16, v17);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v71, v75, 16);
  if (!v20)
  {

    v24 = 0;
    goto LABEL_31;
  }

  v23 = v20;
  v65 = v14;
  v66 = v13;
  v67 = v10;
  v68 = v9;
  v69 = v8;
  v24 = 0;
  v25 = 0;
  v26 = *v72;
  do
  {
    for (i = 0; i != v23; ++i)
    {
      if (*v72 != v26)
      {
        objc_enumerationMutation(v18);
      }

      v28 = *(*(&v71 + 1) + 8 * i);
      if (!v25)
      {
        v29 = objc_msgSend_name(*(*(&v71 + 1) + 8 * i), v21, v22);
        isEqualToString = objc_msgSend_isEqualToString_(v29, v30, @"messageSubTitle");

        if (isEqualToString)
        {
          v25 = objc_msgSend_value(v28, v21, v22);
        }

        else
        {
          v25 = 0;
        }
      }

      v32 = objc_msgSend_name(v28, v21, v22);
      if (objc_msgSend_isEqualToString_(v32, v33, @"messageSubTitleTeen"))
      {
        IsTeen = objc_msgSend_inviteeIsTeen(self, v34, v35);

        if (!IsTeen)
        {
          goto LABEL_15;
        }

        objc_msgSend_value(v28, v37, v38);
        v25 = v32 = v25;
      }

LABEL_15:
      v39 = objc_msgSend_name(v28, v37, v38);
      v41 = objc_msgSend_isEqualToString_(v39, v40, @"messageTitle");

      if (v41)
      {
        v42 = objc_msgSend_value(v28, v21, v22);

        v24 = v42;
      }
    }

    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v71, v75, 16);
  }

  while (v23);

  v9 = v68;
  v8 = v69;
  v13 = v66;
  v10 = v67;
  v14 = v65;
  if (v25)
  {
    if (v24)
    {
      goto LABEL_21;
    }

LABEL_32:
    v24 = IMSanitizedAppNameForIMExtensionPayloadUserInfoKey();
    v45 = objc_msgSend_length(v24, v63, v64);
    goto LABEL_22;
  }

LABEL_31:
  v25 = IMSanitizedCaptionForIMExtensionPayloadUserInfoKey();
  if (!v24)
  {
    goto LABEL_32;
  }

LABEL_21:
  v45 = objc_msgSend_length(v24, v43, v44);
LABEL_22:
  if (v45)
  {
    objc_msgSend_setHeader_(v8, v46, v24);
  }

  v48 = v13;
  if (objc_msgSend_length(v25, v46, v47))
  {
    objc_msgSend_setBody_(v8, v49, v25);
  }

  v51 = objc_msgSend_userInfo(v8, v49, v50);
  Mutable = objc_msgSend_mutableCopy(v51, v52, v53);

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v57 = objc_msgSend_absoluteString(v14, v55, v56);
  objc_msgSend_setObject_forKey_(Mutable, v58, v57, *MEMORY[0x1E69A7820]);

  objc_msgSend_setObject_forKey_(Mutable, v59, MEMORY[0x1E695E118], *MEMORY[0x1E69A7830]);
  objc_msgSend_setUserInfo_(v8, v60, Mutable);
  objc_msgSend_setInterruptionLevel_(v8, v61, 2);

LABEL_29:
  v62 = *MEMORY[0x1E69E9840];
}

- (id)notificationCategories
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6983218];
  v4 = *MEMORY[0x1E69A7840];
  v5 = objc_msgSend_actions(self, a2, v2);
  v7 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v6, @"MADRID_MESSAGE_FORMAT", 0);
  v9 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v8, @"SINGLE_SUMMARY_FORMAT", 0);
  v10 = MEMORY[0x1E695E0F0];
  v12 = objc_msgSend_categoryWithIdentifier_actions_intentIdentifiers_hiddenPreviewsBodyPlaceholder_categorySummaryFormat_options_(v3, v11, v4, v5, MEMORY[0x1E695E0F0], v7, v9, 12);

  if (v12)
  {
    v16[0] = v12;
    v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v13, v16, 1);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

@end