@interface CKFocusStatusAuthorizationManager
+ (CKFocusStatusAuthorizationManager)sharedInstance;
- (BOOL)deviceSupportsFocusStatusAuthorizationPrompt;
- (id)newDNDGlobalConfigurationService;
- (void)displayFocusStatusAuthorizationInconsistencyRepairAlertFromViewController:(id)controller;
- (void)displayFocusStatusAuthorizationInconsistencyRepairAlertIfNotPreviouslyShownFromViewController:(id)controller;
- (void)notifyDNDFocusStatusAuthorizationChanged;
- (void)presentFocusStatusAuthorizationAlertIfNecessaryFromViewController:(id)controller;
- (void)promptForFocusStatusAuthorizationFromViewController:(id)controller;
- (void)verifyPublishedStatusIsConsistentWithDeniedFocusStatusAuthorizationFromViewController:(id)controller;
@end

@implementation CKFocusStatusAuthorizationManager

+ (CKFocusStatusAuthorizationManager)sharedInstance
{
  if (sharedInstance_onceToken_6 != -1)
  {
    +[CKFocusStatusAuthorizationManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_1;

  return v3;
}

void __51__CKFocusStatusAuthorizationManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CKFocusStatusAuthorizationManager);
  v1 = sharedInstance_sharedInstance_1;
  sharedInstance_sharedInstance_1 = v0;
}

- (BOOL)deviceSupportsFocusStatusAuthorizationPrompt
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "This device is capable of prompting for TCC", v4, 2u);
    }
  }

  return 1;
}

- (void)presentFocusStatusAuthorizationAlertIfNecessaryFromViewController:(id)controller
{
  controllerCopy = controller;
  if (CKIsRunningInMessages())
  {
    if ([MEMORY[0x1E69A7EE0] isInAppleStoreDemoMode])
    {
      if (IMOSLoggingEnabled())
      {
        defaultCenter = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_INFO))
        {
          *v13 = 0;
          v6 = "Not checking Focus Status Authorization. Device is in Apple Store Demo Mode.";
LABEL_30:
          _os_log_impl(&dword_19020E000, defaultCenter, OS_LOG_TYPE_INFO, v6, v13, 2u);
          goto LABEL_31;
        }

        goto LABEL_31;
      }
    }

    else if ([(CKFocusStatusAuthorizationManager *)self isPresentingFocusStatusAuthorizationPrompt])
    {
      if (IMOSLoggingEnabled())
      {
        defaultCenter = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_INFO))
        {
          *v13 = 0;
          v6 = "Focus Status Authorization prompt is already presented, not re-presenting.";
          goto LABEL_30;
        }

        goto LABEL_31;
      }
    }

    else if ([(CKFocusStatusAuthorizationManager *)self isPresentingInconsistentFocusStatusAuthorizationPrompt])
    {
      if (IMOSLoggingEnabled())
      {
        defaultCenter = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_INFO))
        {
          *v13 = 0;
          v6 = "Inconsistent Focus Status Authorization prompt is already presented, not re-presenting.";
          goto LABEL_30;
        }

        goto LABEL_31;
      }
    }

    else if ([(CKFocusStatusAuthorizationManager *)self deviceSupportsFocusStatusAuthorizationPrompt])
    {
      mEMORY[0x1E69A5A80] = [MEMORY[0x1E69A5A80] sharedInstance];
      activeIMessageAccount = [mEMORY[0x1E69A5A80] activeIMessageAccount];

      if (activeIMessageAccount)
      {
        defaultCenter = [MEMORY[0x1E696E848] defaultCenter];
        authorizationStatus = [defaultCenter authorizationStatus];
        if (authorizationStatus > 1)
        {
          if (authorizationStatus == 2)
          {
            if (IMOSLoggingEnabled())
            {
              v12 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
              {
                *v13 = 0;
                _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Focus Status authorization status is denied, checking for inconsistent cross-device state.", v13, 2u);
              }
            }

            [(CKFocusStatusAuthorizationManager *)self verifyPublishedStatusIsConsistentWithDeniedFocusStatusAuthorizationFromViewController:controllerCopy];
            goto LABEL_31;
          }

          if (authorizationStatus != 3 || !IMOSLoggingEnabled())
          {
            goto LABEL_31;
          }

          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *v13 = 0;
            _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Focus Status authorization status is authorized.", v13, 2u);
          }
        }

        else
        {
          if (!authorizationStatus)
          {
            if (IMOSLoggingEnabled())
            {
              v11 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
              {
                *v13 = 0;
                _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Focus Status authorization status is not determined. Prompting for authorization.", v13, 2u);
              }
            }

            [(CKFocusStatusAuthorizationManager *)self promptForFocusStatusAuthorizationFromViewController:controllerCopy];
            goto LABEL_31;
          }

          if (authorizationStatus != 1)
          {
            goto LABEL_31;
          }

          v10 = IMLogHandleForCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [CKFocusStatusAuthorizationManager presentFocusStatusAuthorizationAlertIfNecessaryFromViewController:];
          }
        }

        goto LABEL_31;
      }

      if (IMOSLoggingEnabled())
      {
        defaultCenter = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_INFO))
        {
          *v13 = 0;
          v6 = "Not checking Focus Status Authorization. There is no active iMessage account.";
          goto LABEL_30;
        }

        goto LABEL_31;
      }
    }

    else if (IMOSLoggingEnabled())
    {
      defaultCenter = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        v6 = "Not checking Focus Status Authorization. Device does not support prompting for Focus Status TCC.";
        goto LABEL_30;
      }

      goto LABEL_31;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    defaultCenter = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      v6 = "Not checking Focus Status Authorization. Not running in Messages.";
      goto LABEL_30;
    }

LABEL_31:
  }
}

- (void)promptForFocusStatusAuthorizationFromViewController:(id)controller
{
  controllerCopy = controller;
  defaultCenter = [MEMORY[0x1E696E848] defaultCenter];
  [(CKFocusStatusAuthorizationManager *)self setPresentingFocusStatusAuthorizationPrompt:1];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__CKFocusStatusAuthorizationManager_promptForFocusStatusAuthorizationFromViewController___block_invoke;
  v7[3] = &unk_1E72F42F8;
  objc_copyWeak(&v9, &location);
  v6 = controllerCopy;
  v8 = v6;
  [defaultCenter requestAuthorizationWithCompletionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __89__CKFocusStatusAuthorizationManager_promptForFocusStatusAuthorizationFromViewController___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setPresentingFocusStatusAuthorizationPrompt:0];
  [WeakRetained notifyDNDFocusStatusAuthorizationChanged];
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Focus Status authorization was denied, after prompting for authorization. Checking for inconsistent cross-device state.", buf, 2u);
        }
      }

      [WeakRetained verifyPublishedStatusIsConsistentWithDeniedFocusStatusAuthorizationFromViewController:*(a1 + 32)];
    }

    else if (a2 == 3 && IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Focus Status authorization status was authorized when prompting for authorization.", v7, 2u);
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (!a2)
    {
      v5 = IMLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __89__CKFocusStatusAuthorizationManager_promptForFocusStatusAuthorizationFromViewController___block_invoke_cold_2();
      }

      goto LABEL_13;
    }

    if (a2 == 1)
    {
      v5 = IMLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __89__CKFocusStatusAuthorizationManager_promptForFocusStatusAuthorizationFromViewController___block_invoke_cold_1();
      }

LABEL_13:
    }
  }
}

- (void)notifyDNDFocusStatusAuthorizationChanged
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Notifying DND that focus status authorization has changed.", v5, 2u);
    }
  }

  newDNDGlobalConfigurationService = [(CKFocusStatusAuthorizationManager *)self newDNDGlobalConfigurationService];
  [newDNDGlobalConfigurationService didChangeFocusStatusSharingSettingForApplicationIdentifier:@"com.apple.MobileSMS"];
}

- (id)newDNDGlobalConfigurationService
{
  v2 = MEMORY[0x193AF5EC0](@"DNDGlobalConfigurationService", @"DoNotDisturb");
  if (v2)
  {
    v3 = [v2 serviceForClientIdentifier:@"com.apple.messages"];
    v4 = v3;
    if (v3)
    {
      v4 = v3;
      v5 = v4;
    }

    else
    {
      v6 = IMLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [CKFocusStatusAuthorizationManager newDNDGlobalConfigurationService];
      }

      v5 = 0;
    }
  }

  else
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [CKFocusStatusAuthorizationManager newDNDGlobalConfigurationService];
    }

    v5 = 0;
  }

  return v5;
}

- (void)verifyPublishedStatusIsConsistentWithDeniedFocusStatusAuthorizationFromViewController:(id)controller
{
  controllerCopy = controller;
  newDNDGlobalConfigurationService = [(CKFocusStatusAuthorizationManager *)self newDNDGlobalConfigurationService];
  if ([newDNDGlobalConfigurationService isCloudSyncActive])
  {
    mEMORY[0x1E69A5B98] = [MEMORY[0x1E69A5B98] sharedInstance];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Fetching personal availability to verify published status is consistent with denied focus status authorization.", buf, 2u);
      }
    }

    objc_initWeak(buf, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __123__CKFocusStatusAuthorizationManager_verifyPublishedStatusIsConsistentWithDeniedFocusStatusAuthorizationFromViewController___block_invoke;
    v8[3] = &unk_1E72F42F8;
    objc_copyWeak(&v10, buf);
    v9 = controllerCopy;
    [mEMORY[0x1E69A5B98] fetchPersonalAvailabilityWithCompletion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_11;
    }

    mEMORY[0x1E69A5B98] = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(mEMORY[0x1E69A5B98], OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_19020E000, mEMORY[0x1E69A5B98], OS_LOG_TYPE_INFO, "Not verifying published status, share across devices is disabled for this device", buf, 2u);
    }
  }

LABEL_11:
}

void __123__CKFocusStatusAuthorizationManager_verifyPublishedStatusIsConsistentWithDeniedFocusStatusAuthorizationFromViewController___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2 == 2)
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __123__CKFocusStatusAuthorizationManager_verifyPublishedStatusIsConsistentWithDeniedFocusStatusAuthorizationFromViewController___block_invoke_cold_1();
    }

    [WeakRetained displayFocusStatusAuthorizationInconsistencyRepairAlertIfNotPreviouslyShownFromViewController:*(a1 + 32)];
  }

  else
  {
    if (a2 == 1)
    {
      v5 = IMLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __123__CKFocusStatusAuthorizationManager_verifyPublishedStatusIsConsistentWithDeniedFocusStatusAuthorizationFromViewController___block_invoke_cold_2();
      }

      goto LABEL_9;
    }

    if (!a2 && IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Personal availability is unknown. That is consistent with denied focus status authorization.", v7, 2u);
      }

LABEL_9:
    }
  }
}

- (void)displayFocusStatusAuthorizationInconsistencyRepairAlertIfNotPreviouslyShownFromViewController:(id)controller
{
  controllerCopy = controller;
  if (IMGetCachedDomainBoolForKeyWithDefaultValue())
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CKFocusStatusAuthorizationManager displayFocusStatusAuthorizationInconsistencyRepairAlertIfNotPreviouslyShownFromViewController:];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Have not previously shown repair focus status authorization inconsistency repair alert, displaying now", v7, 2u);
      }
    }

    [(CKFocusStatusAuthorizationManager *)self displayFocusStatusAuthorizationInconsistencyRepairAlertFromViewController:controllerCopy];
  }
}

- (void)displayFocusStatusAuthorizationInconsistencyRepairAlertFromViewController:(id)controller
{
  controllerCopy = controller;
  [(CKFocusStatusAuthorizationManager *)self setPresentingInconsistentFocusStatusAuthorizationPrompt:1];
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"INCONSISTENT_FOCUS_STATUS_AUTHORIZATION_ALERT_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  LODWORD(v4) = CKIsRunningInMacCatalyst();
  v6 = CKFrameworkBundle();
  v7 = v6;
  if (v4)
  {
    v8 = @"INCONSISTENT_FOCUS_STATUS_AUTHORIZATION_ALERT_BODY_MAC";
  }

  else
  {
    v8 = @"INCONSISTENT_FOCUS_STATUS_AUTHORIZATION_ALERT_BODY";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_1F04268F8 table:@"ChatKit"];

  v10 = [CKAlertController alertControllerWithTitle:v5 message:v9 preferredStyle:1];
  if (CKIsRunningInMacCatalyst())
  {
    v11 = @"INCONSISTENT_FOCUS_STATUS_AUTHORIZATION_SETTINGS_ACTION_TITLE_MAC";
  }

  else
  {
    v11 = @"INCONSISTENT_FOCUS_STATUS_AUTHORIZATION_SETTINGS_ACTION_TITLE";
  }

  v12 = CKFrameworkBundle();
  v13 = [v12 localizedStringForKey:v11 value:&stru_1F04268F8 table:@"ChatKit"];

  objc_initWeak(&location, self);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __111__CKFocusStatusAuthorizationManager_displayFocusStatusAuthorizationInconsistencyRepairAlertFromViewController___block_invoke;
  v21[3] = &unk_1E72EC698;
  objc_copyWeak(&v22, &location);
  v14 = [CKAlertAction actionWithTitle:v13 style:0 handler:v21];
  v15 = CKFrameworkBundle();
  v16 = [v15 localizedStringForKey:@"INCONSISTENT_FOCUS_STATUS_AUTHORIZATION_CANCEL_ACTION_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __111__CKFocusStatusAuthorizationManager_displayFocusStatusAuthorizationInconsistencyRepairAlertFromViewController___block_invoke_2;
  v19[3] = &unk_1E72EC698;
  objc_copyWeak(&v20, &location);
  v17 = [CKAlertAction actionWithTitle:v16 style:1 handler:v19];
  [v10 addAction:v14];
  [v10 addAction:v17];
  [v10 presentFromViewController:controllerCopy animated:1 completion:0];
  IMSetDomainBoolForKey();

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __111__CKFocusStatusAuthorizationManager_displayFocusStatusAuthorizationInconsistencyRepairAlertFromViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPresentingInconsistentFocusStatusAuthorizationPrompt:0];
  v1 = [WeakRetained focusStatusPreferencesURL];
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v2 openSensitiveURL:v1 withOptions:0];
}

void __111__CKFocusStatusAuthorizationManager_displayFocusStatusAuthorizationInconsistencyRepairAlertFromViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPresentingInconsistentFocusStatusAuthorizationPrompt:0];
}

@end