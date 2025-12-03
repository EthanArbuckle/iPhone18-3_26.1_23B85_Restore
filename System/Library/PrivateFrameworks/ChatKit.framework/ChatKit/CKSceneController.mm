@interface CKSceneController
- (BOOL)shouldSuppressNotificationForMessageWithRelevantContext:(id)context withAlertSupressionContextForScenes:(id)scenes;
- (id)alertSuppressionContextsFromForegroundActiveScenes;
- (id)messagesSceneDelegate;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
@end

@implementation CKSceneController

- (id)messagesSceneDelegate
{
  v18 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  connectedScenes = [mEMORY[0x1E69DC668] connectedScenes];
  allObjects = [connectedScenes allObjects];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = allObjects;
  delegate2 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (delegate2)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != delegate2; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        delegate = [v9 delegate];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          delegate2 = [v9 delegate];
          goto LABEL_11;
        }
      }

      delegate2 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (delegate2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return delegate2;
}

- (id)alertSuppressionContextsFromForegroundActiveScenes
{
  v29 = *MEMORY[0x1E69E9840];
  v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  connectedScenes = [mEMORY[0x1E69DC668] connectedScenes];
  allObjects = [connectedScenes allObjects];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = allObjects;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v6)
  {
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        delegate = [v9 delegate];
        if (![delegate conformsToProtocol:&unk_1F0548978])
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_26;
          }

          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v25 = v9;
            v26 = 2112;
            v27 = delegate;
            _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Not collecting alert suppression context from non-messages scene: %@ delegate: %@", buf, 0x16u);
          }

          goto LABEL_25;
        }

        v11 = [v9 activationState] == 0;
        v12 = IMOSLoggingEnabled();
        if (!v11)
        {
          if (!v12)
          {
            goto LABEL_26;
          }

          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v25 = v9;
            _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Not collecting alert suppression context from non-foreground scene: %@ ", buf, 0xCu);
          }

          goto LABEL_25;
        }

        if (v12)
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v25 = v9;
            _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Scene is foregrounded: %@", buf, 0xCu);
          }
        }

        if (+[CKApplicationState isApplicationActive])
        {
          alertSuppressionContexts = [delegate alertSuppressionContexts];
          [v19 unionSet:alertSuppressionContexts];

          goto LABEL_26;
        }

        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Not collecting alert suppression context from scene while mac app state is inactive", buf, 2u);
          }

LABEL_25:
        }

LABEL_26:
      }

      v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v6);
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v19;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Active alert suppression contexts: %@", buf, 0xCu);
    }
  }

  v17 = [v19 copy];

  return v17;
}

- (BOOL)shouldSuppressNotificationForMessageWithRelevantContext:(id)context withAlertSupressionContextForScenes:(id)scenes
{
  contextCopy = context;
  scenesCopy = scenes;
  if (![scenesCopy intersectsSet:contextCopy])
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v15 = 0;
        v10 = "There is no alert suppression context matching this alert (the relvant chat or conversation list is not being shown on screen). System notification should be allowed.";
        v11 = &v15;
        goto LABEL_9;
      }

LABEL_10:
    }

LABEL_11:
    v12 = 0;
    goto LABEL_17;
  }

  v7 = +[CKStarkManager isCarPlayConnected];
  v8 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v8)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v17 = 0;
        v10 = "There is an active alert suppression context matching this alert (the relvant chat or conversation list is being shown on a screen), but the user is connected to CarPlay, so the notifications should never be suppressed";
        v11 = &v17;
LABEL_9:
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, v10, v11, 2u);
        goto LABEL_10;
      }

      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v8)
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "There is an alert suppression context matching this alert (the relvant chat or conversation list is being shown on screen). System notification should be suppressed, in favor of in-app alert sounds.", buf, 2u);
    }
  }

  v12 = 1;
LABEL_17:

  return v12;
}

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  centerCopy = center;
  notificationCopy = notification;
  handlerCopy = handler;
  request = [notificationCopy request];
  content = [request content];
  threadIdentifier = [content threadIdentifier];

  request2 = [notificationCopy request];
  content2 = [request2 content];
  userInfo = [content2 userInfo];
  v17 = [userInfo objectForKeyedSubscript:@"CKBBContextKeySenderPersonCentricID"];

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v26 = 138412546;
      v27 = threadIdentifier;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "willPresentNotification called with notification thread identifier %@, personCentricID %@", &v26, 0x16u);
    }
  }

  v19 = [(CKSceneController *)self _suppressionContextsForChatIdentifier:threadIdentifier personCentricID:v17];
  alertSuppressionContextsFromForegroundActiveScenes = [(CKSceneController *)self alertSuppressionContextsFromForegroundActiveScenes];
  v21 = [(CKSceneController *)self shouldSuppressNotificationForMessageWithRelevantContext:v19 withAlertSupressionContextForScenes:alertSuppressionContextsFromForegroundActiveScenes];
  v22 = IMOSLoggingEnabled();
  if (v21)
  {
    if (v22)
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "Supressing system notification and sound. A foreground active scene is displaying the relevant conversation, or the conversation list.", &v26, 2u);
      }
    }

    if (handlerCopy)
    {
      v24 = 0;
LABEL_18:
      handlerCopy[2](handlerCopy, v24);
    }
  }

  else
  {
    if (v22)
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Displaying system notification and sound, neither the relevant conversation nor the conversation list, is being displayed in a foreground active scene", &v26, 2u);
      }
    }

    if (handlerCopy)
    {
      v24 = 6;
      goto LABEL_18;
    }
  }
}

@end