@interface IMDCustomPluginNotificationContext
+ (id)logger;
- (BOOL)canPopulateUserInfoForMessageBalloonBundleID:(id)d;
- (id)logger;
- (id)notificationCategories;
- (void)populateUserInfoForNotificationContent:(id)content messageBalloonBundleID:(id)d payloadData:(id)data;
@end

@implementation IMDCustomPluginNotificationContext

+ (id)logger
{
  if (qword_1EBA53EF8 != -1)
  {
    sub_1B7CEE230();
  }

  v3 = qword_1EBA53EF0;

  return v3;
}

- (id)logger
{
  v2 = objc_opt_class();

  return objc_msgSend_logger(v2, v3, v4);
}

- (BOOL)canPopulateUserInfoForMessageBalloonBundleID:(id)d
{
  v3 = *MEMORY[0x1E69A68E0];
  dCopy = d;
  v5 = IMBalloonExtensionIDWithSuffix();
  isEqualToString = objc_msgSend_isEqualToString_(dCopy, v6, v5);

  return isEqualToString;
}

- (void)populateUserInfoForNotificationContent:(id)content messageBalloonBundleID:(id)d payloadData:(id)data
{
  contentCopy = content;
  dataCopy = data;
  if (objc_msgSend_canPopulateUserInfoForMessageBalloonBundleID_(self, v9, d))
  {
    objc_msgSend_setCategoryIdentifier_(contentCopy, v10, *MEMORY[0x1E69A7838]);
    v13 = objc_msgSend_userInfo(contentCopy, v11, v12);
    Mutable = objc_msgSend_mutableCopy(v13, v14, v15);

    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v17 = IMDictionaryFromPayloadData();
    v18 = IMSanitizedURLForIMExtensionPayloadURLKey();
    v21 = v18;
    if (v18)
    {
      v22 = objc_msgSend_absoluteString(v18, v19, v20);
      objc_msgSend_setObject_forKey_(Mutable, v23, v22, *MEMORY[0x1E69A7820]);
    }

    objc_msgSend_setObject_forKey_(Mutable, v19, MEMORY[0x1E695E118], *MEMORY[0x1E69A7830]);
    objc_msgSend_setUserInfo_(contentCopy, v24, Mutable);
    objc_msgSend_setInterruptionLevel_(contentCopy, v25, 2);
  }
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

@end