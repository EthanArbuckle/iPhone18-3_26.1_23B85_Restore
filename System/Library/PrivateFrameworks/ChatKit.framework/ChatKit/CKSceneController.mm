@interface CKSceneController
- (BOOL)shouldSuppressNotificationForMessageWithRelevantContext:(id)a3 withAlertSupressionContextForScenes:(id)a4;
- (id)alertSuppressionContextsFromForegroundActiveScenes;
- (id)messagesSceneDelegate;
- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation CKSceneController

- (id)messagesSceneDelegate
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 connectedScenes];
  v4 = [v3 allObjects];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 delegate];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v6 = [v9 delegate];
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)alertSuppressionContextsFromForegroundActiveScenes
{
  v29 = *MEMORY[0x1E69E9840];
  v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 connectedScenes];
  v4 = [v3 allObjects];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v4;
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
        v10 = [v9 delegate];
        if (![v10 conformsToProtocol:&unk_1F0548978])
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
            v27 = v10;
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
          v15 = [v10 alertSuppressionContexts];
          [v19 unionSet:v15];

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

- (BOOL)shouldSuppressNotificationForMessageWithRelevantContext:(id)a3 withAlertSupressionContextForScenes:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v6 intersectsSet:v5])
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

- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 request];
  v12 = [v11 content];
  v13 = [v12 threadIdentifier];

  v14 = [v9 request];
  v15 = [v14 content];
  v16 = [v15 userInfo];
  v17 = [v16 objectForKeyedSubscript:@"CKBBContextKeySenderPersonCentricID"];

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v26 = 138412546;
      v27 = v13;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "willPresentNotification called with notification thread identifier %@, personCentricID %@", &v26, 0x16u);
    }
  }

  v19 = [(CKSceneController *)self _suppressionContextsForChatIdentifier:v13 personCentricID:v17];
  v20 = [(CKSceneController *)self alertSuppressionContextsFromForegroundActiveScenes];
  v21 = [(CKSceneController *)self shouldSuppressNotificationForMessageWithRelevantContext:v19 withAlertSupressionContextForScenes:v20];
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

    if (v10)
    {
      v24 = 0;
LABEL_18:
      v10[2](v10, v24);
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

    if (v10)
    {
      v24 = 6;
      goto LABEL_18;
    }
  }
}

@end