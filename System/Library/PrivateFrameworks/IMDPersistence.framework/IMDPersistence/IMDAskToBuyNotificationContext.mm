@interface IMDAskToBuyNotificationContext
- (BOOL)canPopulateUserInfoForMessageBalloonBundleID:(id)d;
- (NSArray)actions;
- (id)notificationCategories;
- (void)populateUserInfoForNotificationContent:(id)content messageBalloonBundleID:(id)d payloadData:(id)data;
@end

@implementation IMDAskToBuyNotificationContext

- (NSArray)actions
{
  v14[1] = *MEMORY[0x1E69E9840];
  actions = self->_actions;
  if (!actions)
  {
    v4 = MEMORY[0x1E6983250];
    v5 = *MEMORY[0x1E69A68B0];
    v6 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], a2, @"VIEW_ATB_OPTIONS", 0);
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

- (BOOL)canPopulateUserInfoForMessageBalloonBundleID:(id)d
{
  v3 = *MEMORY[0x1E69A6908];
  dCopy = d;
  v5 = IMBalloonExtensionIDWithSuffix();
  isEqualToString = objc_msgSend_isEqualToString_(dCopy, v6, v5);

  return isEqualToString;
}

- (void)populateUserInfoForNotificationContent:(id)content messageBalloonBundleID:(id)d payloadData:(id)data
{
  v53 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  dataCopy = data;
  if (objc_msgSend_canPopulateUserInfoForMessageBalloonBundleID_(self, v10, d))
  {
    objc_msgSend_setCategoryIdentifier_(contentCopy, v11, *MEMORY[0x1E69A7818]);
    v47 = IMDictionaryFromPayloadData();
    v46 = IMSanitizedURLForIMExtensionPayloadURLKey();
    objc_msgSend_componentsWithURL_resolvingAgainstBaseURL_(MEMORY[0x1E696AF20], v12, v46, 0);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v45 = v51 = 0u;
    v15 = objc_msgSend_queryItems(v45, v13, v14);
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v48, v52, 16);
    if (v17)
    {
      v20 = v17;
      v21 = *v49;
LABEL_4:
      v22 = 0;
      while (1)
      {
        if (*v49 != v21)
        {
          objc_enumerationMutation(v15);
        }

        v23 = *(*(&v48 + 1) + 8 * v22);
        v24 = objc_msgSend_name(v23, v18, v19);
        isEqualToString = objc_msgSend_isEqualToString_(v24, v25, @"notificationCaption");

        if (isEqualToString)
        {
          break;
        }

        if (v20 == ++v22)
        {
          v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v48, v52, 16);
          if (v20)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v28 = objc_msgSend_value(v23, v18, v19);

      v27 = v47;
      if (v28)
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_10:

      v27 = v47;
    }

    v28 = IMSanitizedCaptionForIMExtensionPayloadUserInfoKey();
LABEL_13:
    if (objc_msgSend_length(v28, v29, v30))
    {
      objc_msgSend_setBody_(contentCopy, v31, v28);
    }

    v33 = objc_msgSend_userInfo(contentCopy, v31, v32);
    Mutable = objc_msgSend_mutableCopy(v33, v34, v35);

    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v39 = objc_msgSend_absoluteString(v46, v37, v38);
    objc_msgSend_setObject_forKey_(Mutable, v40, v39, *MEMORY[0x1E69A7820]);

    objc_msgSend_setObject_forKey_(Mutable, v41, MEMORY[0x1E695E118], *MEMORY[0x1E69A7830]);
    objc_msgSend_setUserInfo_(contentCopy, v42, Mutable);
    objc_msgSend_setInterruptionLevel_(contentCopy, v43, 2);
  }

  v44 = *MEMORY[0x1E69E9840];
}

- (id)notificationCategories
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6983218];
  v4 = *MEMORY[0x1E69A7818];
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