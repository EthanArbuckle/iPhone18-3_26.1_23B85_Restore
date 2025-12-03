@interface MCUserNotificationManager
+ (id)sharedManager;
- (BOOL)hasOutstandingNotifications;
- (MCUserNotificationManager)init;
- (id)_invalidTargetMessageForDevice:(unint64_t)device;
- (id)_purgatoryMessageForDevice:(unint64_t)device;
- (id)displayQueueProfileError:(id)error targetDevice:(unint64_t)device;
- (void)_updateTitle:(id *)title andMessage:(id *)message withTargetFailureInfoForDevice:(unint64_t)device fromError:(id)error;
- (void)_updateTitle:(id *)title andMessage:(id *)message withUnavailableTargetInfoForDevice:(unint64_t)device;
- (void)cancelNotificationEntriesMatchingPredicate:(id)predicate completionBlock:(id)block;
- (void)cancelNotificationsWithIdentifier:(id)identifier completionBlock:(id)block;
- (void)dealloc;
- (void)displayUserNotificationWithIdentifier:(id)identifier title:(id)title message:(id)message defaultButtonText:(id)text alternateButtonText:(id)buttonText otherButtonText:(id)otherButtonText textfieldPlaceholder:(id)placeholder displayOnLockScreen:(BOOL)self0 dismissOnLock:(BOOL)self1 displayInAppWhitelistModes:(BOOL)self2 dismissAfterTimeInterval:(double)self3 assertion:(id)self4 completionBlock:(id)self5;
- (void)inviteUserToVPPWithTitle:(id)title message:(id)message assertion:(id)assertion completionBlock:(id)block;
- (void)mainQueueDidReceiveAppWhitelistChangedNotification;
- (void)promptUserToLogIntoiTunesWithTitle:(id)title message:(id)message assertion:(id)assertion completionBlock:(id)block;
@end

@implementation MCUserNotificationManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[MCUserNotificationManager sharedManager];
  }

  v3 = sharedManager_manager_0;

  return v3;
}

uint64_t __42__MCUserNotificationManager_sharedManager__block_invoke()
{
  sharedManager_manager_0 = objc_alloc_init(MCUserNotificationManager);

  return MEMORY[0x1EEE66BB8]();
}

- (MCUserNotificationManager)init
{
  v9.receiver = self;
  v9.super_class = MCUserNotificationManager;
  v2 = [(MCUserNotificationManager *)&v9 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __33__MCUserNotificationManager_init__block_invoke;
    v7[3] = &unk_1E77D2D00;
    v8 = v2;
    v5 = [defaultCenter addObserverForName:@"com.apple.managedconfiguration.appwhitelistdidchange" object:0 queue:v4 usingBlock:v7];
  }

  return v2;
}

void __33__MCUserNotificationManager_init__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__MCUserNotificationManager_init__block_invoke_2;
  block[3] = &unk_1E77D0180;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(MCUserNotificationManager *)self cancelAllNotificationsCompletionBlock:0];
  v4.receiver = self;
  v4.super_class = MCUserNotificationManager;
  [(MCUserNotificationManager *)&v4 dealloc];
}

- (BOOL)hasOutstandingNotifications
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = syncQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MCUserNotificationManager_hasOutstandingNotifications__block_invoke;
  block[3] = &unk_1E77D2418;
  block[4] = &v5;
  dispatch_sync(v2, block);

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)promptUserToLogIntoiTunesWithTitle:(id)title message:(id)message assertion:(id)assertion completionBlock:(id)block
{
  titleCopy = title;
  messageCopy = message;
  assertionCopy = assertion;
  blockCopy = block;
  if (MCIsEffectivelyInAppWhitelistMode())
  {
    v13 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v13, OS_LOG_TYPE_ERROR, "Device is in an explicit whitelist mode", buf, 2u);
    }

    if (blockCopy)
    {
      blockCopy[2](blockCopy, 3, 0);
    }
  }

  else
  {
    v14 = syncQueue();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __98__MCUserNotificationManager_promptUserToLogIntoiTunesWithTitle_message_assertion_completionBlock___block_invoke;
    v15[3] = &unk_1E77D2DA0;
    v19 = blockCopy;
    v16 = titleCopy;
    v17 = messageCopy;
    v18 = assertionCopy;
    dispatch_async(v14, v15);
  }
}

void __98__MCUserNotificationManager_promptUserToLogIntoiTunesWithTitle_message_assertion_completionBlock___block_invoke(uint64_t a1)
{
  v2 = syncQueueiTunesLoginCompletionBlocks();
  if (![v2 count])
  {
    v4 = MCLocalizedString(@"MDM_APP_INSTALL_BUTTON_LOGIN");
    v5 = MCLocalizedString(@"MDM_APP_INSTALL_BUTTON_CANCEL");
    if (*(a1 + 56))
    {
      v6 = MEMORY[0x1AC55F990]();
      [v2 addObject:v6];
    }

    v7 = objc_alloc_init(MCUserNotificationQueueEntry);
    [(MCUserNotificationQueueEntry *)v7 setTitle:*(a1 + 32)];
    [(MCUserNotificationQueueEntry *)v7 setMessage:*(a1 + 40)];
    [(MCUserNotificationQueueEntry *)v7 setDefaultButtonText:v4];
    [(MCUserNotificationQueueEntry *)v7 setAlternateButtonText:v5];
    [(MCUserNotificationQueueEntry *)v7 setDisplayOnLockScreen:0];
    [(MCUserNotificationQueueEntry *)v7 setDisplayInAppWhitelistModes:0];
    [(MCUserNotificationQueueEntry *)v7 setDismissAfterTimeInterval:900.0];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __98__MCUserNotificationManager_promptUserToLogIntoiTunesWithTitle_message_assertion_completionBlock___block_invoke_91;
    v9[3] = &unk_1E77D2D78;
    v10 = *(a1 + 48);
    [(MCUserNotificationQueueEntry *)v7 setCompletionBlock:v9];
    [*(a1 + 48) park];
    v8 = syncQueueNotificationQueue();
    [v8 addObject:v7];

    syncQueueCheckToShowNextNotification();
    goto LABEL_9;
  }

  v3 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A795B000, v3, OS_LOG_TYPE_DEFAULT, "An iTunes login prompt is already shown. Not showing another prompt.", buf, 2u);
  }

  if (*(a1 + 56))
  {
    v4 = MEMORY[0x1AC55F990]();
    [v2 addObject:v4];
LABEL_9:
  }
}

void __98__MCUserNotificationManager_promptUserToLogIntoiTunesWithTitle_message_assertion_completionBlock___block_invoke_91(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) unpark];
  v6 = syncQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__MCUserNotificationManager_promptUserToLogIntoiTunesWithTitle_message_assertion_completionBlock___block_invoke_2;
  block[3] = &unk_1E77D2D50;
  v11 = a2;
  v9 = v5;
  v10 = *(a1 + 32);
  v7 = v5;
  dispatch_async(v6, block);
}

void __98__MCUserNotificationManager_promptUserToLogIntoiTunesWithTitle_message_assertion_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = syncQueueiTunesLoginCompletionBlocks();
  if ([v2 count])
  {
    v3 = [v2 copy];
    [v2 removeAllObjects];
    v4 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __98__MCUserNotificationManager_promptUserToLogIntoiTunesWithTitle_message_assertion_completionBlock___block_invoke_3;
    v6[3] = &unk_1E77D2D28;
    v7 = v3;
    v10 = *(a1 + 48);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v5 = v3;
    dispatch_async(v4, v6);
  }
}

void __98__MCUserNotificationManager_promptUserToLogIntoiTunesWithTitle_message_assertion_completionBlock___block_invoke_3(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    *buf = 67109120;
    v19 = [v3 count];
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEFAULT, "Calling completions for %d iTunes login events.", buf, 8u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        (*(v10 + 16))(v10, *(a1 + 56), *(a1 + 40));
        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)inviteUserToVPPWithTitle:(id)title message:(id)message assertion:(id)assertion completionBlock:(id)block
{
  titleCopy = title;
  messageCopy = message;
  assertionCopy = assertion;
  blockCopy = block;
  v13 = syncQueue();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __88__MCUserNotificationManager_inviteUserToVPPWithTitle_message_assertion_completionBlock___block_invoke;
  v18[3] = &unk_1E77D2DA0;
  v19 = titleCopy;
  v20 = messageCopy;
  v21 = assertionCopy;
  v22 = blockCopy;
  v14 = assertionCopy;
  v15 = messageCopy;
  v16 = titleCopy;
  v17 = blockCopy;
  dispatch_async(v13, v18);
}

void __88__MCUserNotificationManager_inviteUserToVPPWithTitle_message_assertion_completionBlock___block_invoke(uint64_t a1)
{
  v2 = syncQueueVPPInvitationCompletionBlocks();
  if (![v2 count])
  {
    v11 = MCLocalizedFormat(@"MDM_CAD_CONTINUE_BUTTON", v3, v4, v5, v6, v7, v8, v9, v23);
    v19 = MCLocalizedFormat(@"MDM_CAD_CANCEL_BUTTON", v12, v13, v14, v15, v16, v17, v18, v24);
    if (*(a1 + 56))
    {
      v20 = MEMORY[0x1AC55F990]();
      [v2 addObject:v20];
    }

    v21 = objc_alloc_init(MCUserNotificationQueueEntry);
    [(MCUserNotificationQueueEntry *)v21 setTitle:*(a1 + 32)];
    [(MCUserNotificationQueueEntry *)v21 setMessage:*(a1 + 40)];
    [(MCUserNotificationQueueEntry *)v21 setDefaultButtonText:v11];
    [(MCUserNotificationQueueEntry *)v21 setAlternateButtonText:v19];
    [(MCUserNotificationQueueEntry *)v21 setDisplayOnLockScreen:0];
    [(MCUserNotificationQueueEntry *)v21 setDisplayInAppWhitelistModes:0];
    [(MCUserNotificationQueueEntry *)v21 setDismissAfterTimeInterval:0.0];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __88__MCUserNotificationManager_inviteUserToVPPWithTitle_message_assertion_completionBlock___block_invoke_99;
    v25[3] = &unk_1E77D2D78;
    v26 = *(a1 + 48);
    [(MCUserNotificationQueueEntry *)v21 setCompletionBlock:v25];
    [*(a1 + 48) park];
    v22 = syncQueueNotificationQueue();
    [v22 addObject:v21];

    syncQueueCheckToShowNextNotification();
    goto LABEL_9;
  }

  v10 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A795B000, v10, OS_LOG_TYPE_DEFAULT, "An invitation prompt is already shown. Not showing another one.", buf, 2u);
  }

  if (*(a1 + 56))
  {
    v11 = MEMORY[0x1AC55F990]();
    [v2 addObject:v11];
LABEL_9:
  }
}

void __88__MCUserNotificationManager_inviteUserToVPPWithTitle_message_assertion_completionBlock___block_invoke_99(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) unpark];
  v6 = syncQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__MCUserNotificationManager_inviteUserToVPPWithTitle_message_assertion_completionBlock___block_invoke_2;
  block[3] = &unk_1E77D2D50;
  v11 = a2;
  v9 = v5;
  v10 = *(a1 + 32);
  v7 = v5;
  dispatch_sync(v6, block);
}

void __88__MCUserNotificationManager_inviteUserToVPPWithTitle_message_assertion_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = syncQueueVPPInvitationCompletionBlocks();
  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    v4 = 0;
    if ([v2 count] >= 2)
    {
      v4 = [v2 subarrayWithRange:{1, objc_msgSend(v2, "count") - 1}];
    }

    [v2 removeAllObjects];
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__MCUserNotificationManager_inviteUserToVPPWithTitle_message_assertion_completionBlock___block_invoke_3;
    block[3] = &unk_1E77D2DC8;
    v9 = v4;
    v12 = v3;
    v13 = *(a1 + 48);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v6 = v3;
    v7 = v4;
    dispatch_sync(v5, block);
  }
}

void __88__MCUserNotificationManager_inviteUserToVPPWithTitle_message_assertion_completionBlock___block_invoke_3(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    *buf = 67109120;
    v21 = [v3 count] + 1;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_DEFAULT, "Calling completions for %d invitation prompts", buf, 8u);
  }

  v5 = *(a1 + 64);
  v6 = *(a1 + 40);
  (*(*(a1 + 56) + 16))();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        (*(v12 + 16))(v12, 3, *(a1 + 40));
        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)displayQueueProfileError:(id)error targetDevice:(unint64_t)device
{
  v44 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v8 = *MEMORY[0x1E696AA08];
  v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  v10 = 0;
  v11 = errorCopy;
  while (v9)
  {
    v12 = v11;
    v11 = v9;

    localizedDescription = [v11 localizedDescription];

    if (localizedDescription)
    {
      localizedDescription2 = [v11 localizedDescription];

      v10 = localizedDescription2;
    }

    userInfo2 = [v11 userInfo];
    v9 = [userInfo2 objectForKeyedSubscript:v8];
  }

  if ([errorCopy MCContainsErrorDomain:@"MCProfileErrorDomain" code:1016])
  {
    v16 = MCLocalizedString(@"INSTALL_PROFILE_ERROR_INCOMPATIBLE_TITLE");
    v17 = @"INSTALL_PROFILE_ERROR_INCOMPATIBLE_MESSAGE";
LABEL_9:
    v18 = MCLocalizedString(v17);

LABEL_10:
    v19 = 0;
LABEL_11:
    v10 = v18;
    goto LABEL_12;
  }

  if ([errorCopy MCContainsErrorDomain:@"MCProfileErrorDomain" code:1017])
  {
    v16 = MCLocalizedString(@"INSTALL_PROFILE_ERROR_UNSUPPORTED_TITLE");
    v17 = @"INSTALL_PROFILE_ERROR_UNSUPPORTED_MESSAGE";
    goto LABEL_9;
  }

  domain = [errorCopy domain];
  v27 = [domain isEqualToString:@"MCInstallationErrorDomain"];

  if (!v27)
  {
    v19 = 0;
    v16 = 0;
    goto LABEL_12;
  }

  code = [errorCopy code];
  v19 = 0;
  if (code > 4036)
  {
    if (code != 4037)
    {
      if (code == 4054)
      {
        v16 = MCLocalizedString(@"INSTALL_PROFILE_DISABLED_TITLE");
        v30 = @"ERROR_PROFILE_DRIVEN_ENROLLMENT_BLOCKED";
      }

      else
      {
        if (code != 4055)
        {
LABEL_43:
          v16 = 0;
LABEL_12:
          if (!v10)
          {
            v20 = _MCLogObjects;
            if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_FAULT))
            {
              *buf = 138543362;
              v43 = errorCopy;
              _os_log_impl(&dword_1A795B000, v20, OS_LOG_TYPE_FAULT, "Please file a radar to 'Remote Management - MDMv1 | All' to add a user notification for error: %{public}@", buf, 0xCu);
            }

            v10 = MCLocalizedString(@"INSTALL_PROFILE_ERROR_GENERAL_MESSAGE");
          }

          v21 = v16;
          if (v16)
          {
            if (v19)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v21 = MCLocalizedString(@"INSTALL_PROFILE_ERROR_GENERAL_TITLE");
            if (v19)
            {
LABEL_18:
              BYTE2(v39) = 1;
              LOWORD(v39) = 0;
              [MCUserNotificationManager displayUserNotificationWithIdentifier:"displayUserNotificationWithIdentifier:title:message:defaultButtonText:alternateButtonText:otherButtonText:textfieldPlaceholder:displayOnLockScreen:dismissOnLock:displayInAppWhitelistModes:dismissAfterTimeInterval:assertion:completionBlock:" title:0 message:v21 defaultButtonText:v10 alternateButtonText:v19 otherButtonText:0 textfieldPlaceholder:0 displayOnLockScreen:0.0 dismissOnLock:0 displayInAppWhitelistModes:v39 dismissAfterTimeInterval:0 assertion:0 completionBlock:?];
              if (v16)
              {
LABEL_20:
                v22 = v11;

                goto LABEL_21;
              }

LABEL_19:

              goto LABEL_20;
            }
          }

          v25 = MCLocalizedString(@"INSTALL_PROFILE_ERROR_OK");
          BYTE2(v39) = 1;
          LOWORD(v39) = 0;
          [MCUserNotificationManager displayUserNotificationWithIdentifier:"displayUserNotificationWithIdentifier:title:message:defaultButtonText:alternateButtonText:otherButtonText:textfieldPlaceholder:displayOnLockScreen:dismissOnLock:displayInAppWhitelistModes:dismissAfterTimeInterval:assertion:completionBlock:" title:0 message:v21 defaultButtonText:v10 alternateButtonText:v25 otherButtonText:0 textfieldPlaceholder:0 displayOnLockScreen:0.0 dismissOnLock:0 displayInAppWhitelistModes:v39 dismissAfterTimeInterval:0 assertion:0 completionBlock:?];

          if (v16)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        v16 = MCLocalizedString(@"INSTALL_PROFILE_DISABLED_TITLE");
        v30 = @"ERROR_PROFILE_DRIVEN_USER_ENROLLMENT_NOT_SUPPORTED";
      }

      v29 = MCLocalizedErrorStringByDevice(v30);
      goto LABEL_47;
    }

    userInfo3 = [errorCopy userInfo];
    v33 = [userInfo3 objectForKeyedSubscript:@"RestrictionCause"];

    if ([v33 isEqualToString:@"Profile"])
    {
      v34 = @"INSTALL_PROFILE_DISABLED_MESSAGE_PROFILE";
    }

    else
    {
      if ([v33 isEqualToString:@"LockdownMode"])
      {
        v35 = MCLocalizedStringByDevice(@"INSTALL_PROFILE_DISABLED_MESSAGE_LOCKDOWN_MODE");
        goto LABEL_50;
      }

      if ([v33 isEqualToString:@"StolenDeviceProtection"])
      {
        v38 = v11;

        goto LABEL_39;
      }

      v34 = @"INSTALL_PROFILE_DISABLED_MESSAGE";
    }

    v35 = MCLocalizedString(v34);
LABEL_50:
    v18 = v35;

    v16 = MCLocalizedString(@"INSTALL_PROFILE_DISABLED_TITLE");

    goto LABEL_10;
  }

  if (code != 4009)
  {
    if (code == 4035)
    {
      userInfo4 = [errorCopy userInfo];
      v37 = [userInfo4 objectForKeyedSubscript:v8];

      v40 = v10;
      v41 = 0;
      [(MCUserNotificationManager *)self _updateTitle:&v41 andMessage:&v40 withTargetFailureInfoForDevice:device fromError:v37];
      v16 = v41;
      v18 = v40;

      goto LABEL_10;
    }

    if (code == 4036)
    {
      v16 = MCLocalizedString(@"INSTALL_PROFILE_TITLE");
      v29 = [(MCUserNotificationManager *)self _purgatoryMessageForDevice:device];
LABEL_47:
      v18 = v29;

      v19 = MCLocalizedString(@"INSTALL_PROFILE_OK");
      goto LABEL_11;
    }

    goto LABEL_43;
  }

  v31 = v11;
LABEL_39:
  v16 = 0;
LABEL_21:

  v23 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)displayUserNotificationWithIdentifier:(id)identifier title:(id)title message:(id)message defaultButtonText:(id)text alternateButtonText:(id)buttonText otherButtonText:(id)otherButtonText textfieldPlaceholder:(id)placeholder displayOnLockScreen:(BOOL)self0 dismissOnLock:(BOOL)self1 displayInAppWhitelistModes:(BOOL)self2 dismissAfterTimeInterval:(double)self3 assertion:(id)self4 completionBlock:(id)self5
{
  identifierCopy = identifier;
  titleCopy = title;
  messageCopy = message;
  textCopy = text;
  buttonTextCopy = buttonText;
  otherButtonTextCopy = otherButtonText;
  placeholderCopy = placeholder;
  assertionCopy = assertion;
  blockCopy = block;
  if (modes || !MCIsEffectivelyInAppWhitelistMode())
  {
    v42 = textCopy;
    v32 = buttonTextCopy;
    v33 = titleCopy;
    v26 = messageCopy;
    v34 = objc_alloc_init(MCUserNotificationQueueEntry);
    [(MCUserNotificationQueueEntry *)v34 setTitle:titleCopy];
    [(MCUserNotificationQueueEntry *)v34 setMessage:messageCopy];
    [(MCUserNotificationQueueEntry *)v34 setDefaultButtonText:v42];
    [(MCUserNotificationQueueEntry *)v34 setAlternateButtonText:v32];
    v29 = otherButtonTextCopy;
    [(MCUserNotificationQueueEntry *)v34 setOtherButtonText:otherButtonTextCopy];
    [(MCUserNotificationQueueEntry *)v34 setTextfieldPlaceholder:placeholderCopy];
    [(MCUserNotificationQueueEntry *)v34 setDisplayOnLockScreen:screen];
    [(MCUserNotificationQueueEntry *)v34 setDismissOnLock:lock];
    [(MCUserNotificationQueueEntry *)v34 setDisplayInAppWhitelistModes:modes];
    [(MCUserNotificationQueueEntry *)v34 setDismissAfterTimeInterval:interval];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __268__MCUserNotificationManager_displayUserNotificationWithIdentifier_title_message_defaultButtonText_alternateButtonText_otherButtonText_textfieldPlaceholder_displayOnLockScreen_dismissOnLock_displayInAppWhitelistModes_dismissAfterTimeInterval_assertion_completionBlock___block_invoke;
    v45[3] = &unk_1E77D2DF0;
    v31 = assertionCopy;
    v35 = assertionCopy;
    v46 = v35;
    v30 = blockCopy;
    v47 = blockCopy;
    [(MCUserNotificationQueueEntry *)v34 setCompletionBlock:v45];
    v28 = identifierCopy;
    [(MCUserNotificationQueueEntry *)v34 setIdentifier:identifierCopy];
    [v35 park];
    v36 = syncQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __268__MCUserNotificationManager_displayUserNotificationWithIdentifier_title_message_defaultButtonText_alternateButtonText_otherButtonText_textfieldPlaceholder_displayOnLockScreen_dismissOnLock_displayInAppWhitelistModes_dismissAfterTimeInterval_assertion_completionBlock___block_invoke_2;
    block[3] = &unk_1E77D0180;
    v44 = v34;
    v37 = v34;
    dispatch_barrier_async(v36, block);

    titleCopy = v33;
    buttonTextCopy = v32;
    textCopy = v42;
  }

  else
  {
    v26 = messageCopy;
    v27 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v27, OS_LOG_TYPE_DEFAULT, "Not displaying notification in limited apps mode.", buf, 2u);
    }

    v29 = otherButtonTextCopy;
    v28 = identifierCopy;
    v30 = blockCopy;
    v31 = assertionCopy;
    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, 3, 0);
    }
  }
}

void __268__MCUserNotificationManager_displayUserNotificationWithIdentifier_title_message_defaultButtonText_alternateButtonText_otherButtonText_textfieldPlaceholder_displayOnLockScreen_dismissOnLock_displayInAppWhitelistModes_dismissAfterTimeInterval_assertion_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) unpark];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

void __268__MCUserNotificationManager_displayUserNotificationWithIdentifier_title_message_defaultButtonText_alternateButtonText_otherButtonText_textfieldPlaceholder_displayOnLockScreen_dismissOnLock_displayInAppWhitelistModes_dismissAfterTimeInterval_assertion_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = syncQueueNotificationQueue();
  [v2 addObject:*(a1 + 32)];

  syncQueueCheckToShowNextNotification();
}

- (void)mainQueueDidReceiveAppWhitelistChangedNotification
{
  v2 = syncQueue();
  dispatch_barrier_sync(v2, &__block_literal_global_149_0);
}

void __79__MCUserNotificationManager_mainQueueDidReceiveAppWhitelistChangedNotification__block_invoke()
{
  v28 = *MEMORY[0x1E69E9840];
  if (MCIsEffectivelyInAppWhitelistMode())
  {
    if (syncQueueCurrentlyVisibleNotificationEntry && ([syncQueueCurrentlyVisibleNotificationEntry displayInAppWhitelistModes] & 1) == 0)
    {
      v0 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_INFO, "Dismissing notification because we entered limited apps mode.", buf, 2u);
      }

      v1 = [syncQueueCurrentlyVisibleNotificationEntry notification];
      CFUserNotificationCancel(v1);

      v2 = syncQueueCurrentlyVisibleNotificationEntry;
      syncQueueCurrentlyVisibleNotificationEntry = 0;
    }

    v3 = [MEMORY[0x1E695DF70] array];
    v4 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = syncQueueNotificationQueue();
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          if ([v10 displayInAppWhitelistModes])
          {
            v11 = v4;
          }

          else
          {
            v11 = v3;
          }

          [v11 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v7);
    }

    v12 = syncQueueNotificationQueue();
    [v12 removeAllObjects];

    v13 = syncQueueNotificationQueue();
    [v13 addObjectsFromArray:v4];

    if ([v3 count])
    {
      v14 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v15 = v14;
        v16 = [v3 count];
        *buf = 67109120;
        v26 = v16;
        _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_INFO, "Canceling %d pending notifications because we entered limited apps mode.", buf, 8u);
      }

      v17 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __79__MCUserNotificationManager_mainQueueDidReceiveAppWhitelistChangedNotification__block_invoke_151;
      block[3] = &unk_1E77D0180;
      v20 = v3;
      dispatch_async(v17, block);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __79__MCUserNotificationManager_mainQueueDidReceiveAppWhitelistChangedNotification__block_invoke_151(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 completionBlock];

        if (v7)
        {
          v8 = [v6 completionBlock];
          v8[2](v8, 3, 0);
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)cancelNotificationsWithIdentifier:(id)identifier completionBlock:(id)block
{
  identifierCopy = identifier;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__MCUserNotificationManager_cancelNotificationsWithIdentifier_completionBlock___block_invoke;
  v8[3] = &unk_1E77D2E38;
  v9 = identifierCopy;
  v7 = identifierCopy;
  [(MCUserNotificationManager *)self cancelNotificationEntriesMatchingPredicate:v8 completionBlock:block];
}

uint64_t __79__MCUserNotificationManager_cancelNotificationsWithIdentifier_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  if (v4 || *(a1 + 32))
  {
    v5 = [v3 identifier];
    v6 = [v5 isEqual:*(a1 + 32)];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)cancelNotificationEntriesMatchingPredicate:(id)predicate completionBlock:(id)block
{
  predicateCopy = predicate;
  blockCopy = block;
  if (predicateCopy)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __88__MCUserNotificationManager_cancelNotificationEntriesMatchingPredicate_completionBlock___block_invoke;
    v7[3] = &unk_1E77D2EB0;
    v8 = predicateCopy;
    v9 = blockCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

void __88__MCUserNotificationManager_cancelNotificationEntriesMatchingPredicate_completionBlock___block_invoke(uint64_t a1)
{
  v2 = syncQueue();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __88__MCUserNotificationManager_cancelNotificationEntriesMatchingPredicate_completionBlock___block_invoke_2;
  v3[3] = &unk_1E77D2EB0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_barrier_sync(v2, v3);
}

void __88__MCUserNotificationManager_cancelNotificationEntriesMatchingPredicate_completionBlock___block_invoke_2(uint64_t a1)
{
  if (syncQueueCurrentlyVisibleNotificationEntry)
  {
    v2 = *(a1 + 32);
    if ((*(*(a1 + 32) + 16))())
    {
      v3 = [syncQueueCurrentlyVisibleNotificationEntry notification];
      CFUserNotificationCancel(v3);
    }
  }

  v4 = syncQueueNotificationQueue();
  v5 = MEMORY[0x1E696AE18];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__MCUserNotificationManager_cancelNotificationEntriesMatchingPredicate_completionBlock___block_invoke_3;
  v14[3] = &unk_1E77D2E60;
  v15 = *(a1 + 32);
  v6 = [v5 predicateWithBlock:v14];
  v7 = [v4 filteredArrayUsingPredicate:v6];

  v8 = syncQueueNotificationQueue();
  [v8 removeObjectsInArray:v7];

  v9 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__MCUserNotificationManager_cancelNotificationEntriesMatchingPredicate_completionBlock___block_invoke_4;
  block[3] = &unk_1E77D2E88;
  v12 = v7;
  v13 = *(a1 + 40);
  v10 = v7;
  dispatch_async(v9, block);
}

uint64_t __88__MCUserNotificationManager_cancelNotificationEntriesMatchingPredicate_completionBlock___block_invoke_4(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 completionBlock];

        if (v8)
        {
          v9 = [v7 completionBlock];
          v9[2](v9, 3, 0);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_updateTitle:(id *)title andMessage:(id *)message withTargetFailureInfoForDevice:(unint64_t)device fromError:(id)error
{
  code = [error code];
  if (code > 1013)
  {
    if (code == 1014)
    {
      *title = MCLocalizedString(@"INSTALL_WARNING_TARGET_UNAVAILABLE_WATCH_TITLE");
      v11 = MCLocalizedFormat(@"INSTALL_WARNING_TARGET_UNAVAILABLE_WATCH_ARCHIVED_MESSAGE", v12, v13, v14, v15, v16, v17, v18, v19);
    }

    else
    {
      if (code != 1015)
      {
        return;
      }

      *title = MCLocalizedString(@"INSTALL_WARNING_TARGET_GENERAL_TITLE");
      v11 = MCLocalizedStringByDevice(@"INSTALL_WARNING_TARGET_MISMATCH_MESSAGE");
    }

    goto LABEL_12;
  }

  if (code == 1011)
  {
    *title = MCLocalizedString(@"INSTALL_WARNING_TARGET_GENERAL_TITLE");
    v11 = [(MCUserNotificationManager *)self _invalidTargetMessageForDevice:device];
LABEL_12:
    *message = v11;
    return;
  }

  if (code == 1012)
  {

    [(MCUserNotificationManager *)self _updateTitle:title andMessage:message withUnavailableTargetInfoForDevice:device];
  }
}

- (void)_updateTitle:(id *)title andMessage:(id *)message withUnavailableTargetInfoForDevice:(unint64_t)device
{
  if (device == 3)
  {
    *title = MCLocalizedString(@"INSTALL_WARNING_TARGET_UNAVAILABLE_HOMEPOD_TITLE");
    v7 = @"INSTALL_WARNING_TARGET_UNAVAILABLE_HOMEPOD_MESSAGE";
  }

  else if (device == 2)
  {
    *title = MCLocalizedString(@"INSTALL_WARNING_TARGET_UNAVAILABLE_WATCH_TITLE");
    if (!MCGestaltIsPhone())
    {
      v8 = MCLocalizedStringByDevice(@"INSTALL_WARNING_TARGET_MISMATCH_MESSAGE");
      goto LABEL_8;
    }

    v7 = @"INSTALL_WARNING_TARGET_UNAVAILABLE_WATCH_MESSAGE";
  }

  else
  {
    *title = MCLocalizedString(@"INSTALL_WARNING_TARGET_UNAVAILABLE_TITLE");
    v7 = @"INSTALL_WARNING_TARGET_UNAVAILABLE_MESSAGE";
  }

  v8 = MCLocalizedString(v7);
LABEL_8:
  *message = v8;
}

- (id)_purgatoryMessageForDevice:(unint64_t)device
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = device - 1;
  if (device - 1 < 6 && ((0x27u >> v4) & 1) != 0)
  {
    v5 = off_1E77D2F40[v4];
  }

  else
  {
    v6 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [MCProfile stringForDeviceType:device];
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_ERROR, "MCUserNotificationManager: No purgatory message for device of type %{public}@", &v12, 0xCu);
    }

    v5 = @"INSTALL_PROFILE_MESSAGE_SETTINGS_APP";
  }

  v9 = MCLocalizedString(v5);
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_invalidTargetMessageForDevice:(unint64_t)device
{
  if (device - 1 > 5)
  {
    v4 = @"INSTALL_WARNING_TARGET_INVALID_MESSAGE";
  }

  else
  {
    v4 = off_1E77D2EF0[device - 1];
  }

  v5 = MCLocalizedString(v4);

  return v5;
}

@end