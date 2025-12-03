@interface IMExtensionNotificationManager
+ (id)sharedInstance;
- (BOOL)canPopulateUserInfoForMessageBalloonBundleID:(id)d;
- (BOOL)shouldRetractedMessageForBalloonBundleID:(id)d;
- (IMExtensionNotificationManager)init;
- (id)notificationCategories;
- (void)populateUserInfoForNotificationContent:(id)content messageBalloonBundleID:(id)d payloadData:(id)data chatIdentifier:(id)identifier isUrgentMessageTrigger:(BOOL *)trigger shouldSuppressNotification:(BOOL *)notification;
@end

@implementation IMExtensionNotificationManager

+ (id)sharedInstance
{
  if (qword_1EDBE62B8 != -1)
  {
    sub_1B7CEEF20();
  }

  v3 = qword_1EDBE5AD0;

  return v3;
}

- (IMExtensionNotificationManager)init
{
  v36.receiver = self;
  v36.super_class = IMExtensionNotificationManager;
  v2 = [(IMExtensionNotificationManager *)&v36 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_msgSend_setNotificationsContext_(v2, v4, v3);

    v5 = objc_alloc_init(IMDFamilyInviteNotificationContext);
    v8 = objc_msgSend_notificationsContext(v2, v6, v7);
    objc_msgSend_addObject_(v8, v9, v5);

    v10 = objc_alloc_init(IMDScreenTimeAskNotificationContext);
    v13 = objc_msgSend_notificationsContext(v2, v11, v12);
    objc_msgSend_addObject_(v13, v14, v10);

    v17 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v15, v16);
    objc_msgSend_isCriticalAlertingEnabled(v17, v18, v19);

    v20 = objc_alloc_init(IMDSafetyMonitorNotificationContext);
    v23 = objc_msgSend_notificationsContext(v2, v21, v22);
    objc_msgSend_addObject_(v23, v24, v20);

    v25 = objc_alloc_init(IMDAskToBuyNotificationContext);
    v28 = objc_msgSend_notificationsContext(v2, v26, v27);
    objc_msgSend_addObject_(v28, v29, v25);

    v30 = objc_alloc_init(IMDCustomPluginNotificationContext);
    v33 = objc_msgSend_notificationsContext(v2, v31, v32);
    objc_msgSend_addObject_(v33, v34, v30);
  }

  return v2;
}

- (void)populateUserInfoForNotificationContent:(id)content messageBalloonBundleID:(id)d payloadData:(id)data chatIdentifier:(id)identifier isUrgentMessageTrigger:(BOOL *)trigger shouldSuppressNotification:(BOOL *)notification
{
  triggerCopy = trigger;
  notificationCopy = notification;
  v33 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  dCopy = d;
  dataCopy = data;
  identifierCopy = identifier;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = self->_notificationsContext;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v28, v32, 16);
  if (v18)
  {
    v20 = v18;
    v21 = *v29;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v23 = *(*(&v28 + 1) + 8 * i);
        if (objc_msgSend_canPopulateUserInfoForMessageBalloonBundleID_(v23, v19, dCopy, triggerCopy, notificationCopy, v28))
        {
          if (objc_opt_respondsToSelector())
          {
            objc_msgSend_populateUserInfoForNotificationContent_messageBalloonBundleID_payloadData_chatIdentifier_isUrgentMessageTrigger_shouldSuppressNotification_(v23, v24, contentCopy, dCopy, dataCopy, identifierCopy, triggerCopy, notificationCopy);
          }

          else
          {
            objc_msgSend_populateUserInfoForNotificationContent_messageBalloonBundleID_payloadData_(v23, v24, contentCopy, dCopy, dataCopy);
          }
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v28, v32, 16);
    }

    while (v20);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (id)notificationCategories
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_notificationsContext;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v16, v20, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = objc_msgSend_notificationCategories(*(*(&v16 + 1) + 8 * i), v7, v8, v16);
        objc_msgSend_addObjectsFromArray_(v3, v13, v12);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v16, v20, 16);
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)canPopulateUserInfoForMessageBalloonBundleID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_notificationsContext;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v14, v18, 16);
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (objc_msgSend_canPopulateUserInfoForMessageBalloonBundleID_(v11, v7, dCopy, v14))
        {
          LOBYTE(v8) = objc_msgSend_canPopulateUserInfoForMessageBalloonBundleID_(v11, v7, dCopy);
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v14, v18, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)shouldRetractedMessageForBalloonBundleID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_notificationsContext;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v15, v19, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v5);
        }

        if (objc_msgSend_canPopulateUserInfoForMessageBalloonBundleID_(*(*(&v15 + 1) + 8 * i), v8, dCopy, v15))
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v15, v19, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

@end