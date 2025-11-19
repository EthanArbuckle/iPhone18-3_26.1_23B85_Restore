@interface DDUIiOSNotificationPresenter
@end

@implementation DDUIiOSNotificationPresenter

void __47___DDUIiOSNotificationPresenter__setupIfNeeded__block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _DDUICoreLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "Notification authorization granted? %d with error: %@", v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __97___DDUIiOSNotificationPresenter_showNotificationForApplication_deviceName_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _DDUICoreLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v9 = 138412290;
      v10 = v3;
      v6 = "Could not post local notification with error %@";
LABEL_6:
      _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, v6, &v9, 0xCu);
    }
  }

  else if (v5)
  {
    v7 = *(a1 + 32);
    v9 = 138412290;
    v10 = v7;
    v6 = "Local notification %@ posted successfully";
    goto LABEL_6;
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __91___DDUIiOSNotificationPresenter__showContinuityConfirmation_identifier_micOnly_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _DDUICoreLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v9 = 138412290;
      v10 = v3;
      v6 = "Could not post local notification with error %@";
LABEL_6:
      _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, v6, &v9, 0xCu);
    }
  }

  else if (v5)
  {
    v7 = *(a1 + 32);
    v9 = 138412290;
    v10 = v7;
    v6 = "Local notification %@ posted successfully";
    goto LABEL_6;
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __62___DDUIiOSNotificationPresenter__configureNotificationTimeout__block_invoke(uint64_t a1)
{
  v2 = _DDUICoreLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_230EF9000, v2, OS_LOG_TYPE_DEFAULT, "Notification timed out.  Removing from notification center.", v8, 2u);
  }

  v3 = [*(a1 + 32) presentedNotification];
  v4 = [v3 completion];

  if (v4)
  {
    v5 = [*(a1 + 32) presentedNotification];
    v6 = [v5 completion];
    v6[2](v6, 5);
  }

  return [*(a1 + 32) _clearPresentedNotificationIfNeeded];
}

void __87___DDUIiOSNotificationPresenter__handleContinuityCameraDisabledAlertResponseWithState___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = *(a1 + 32);
  v9 = 0;
  v4 = [v2 openSensitiveURL:v3 withOptions:0 error:&v9];
  v5 = v9;

  if ((v4 & 1) == 0)
  {
    v6 = _DDUICoreLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_230EF9000, v6, OS_LOG_TYPE_DEFAULT, "### Launch URL failed: %@, %@\n", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __77___DDUIiOSNotificationPresenter__showContinuityCameraDisabledAlertWithState___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  DeviceClass = GestaltGetDeviceClass();
  error = 0;
  v3 = objc_opt_new();
  v4 = *(a1 + 40);
  if (v4 == 1)
  {
    v14 = DDUICoreLocalizedString(@"CC_DISABLED_HEADER");
    [v3 setObject:v14 forKeyedSubscript:*MEMORY[0x277CBF188]];

    v15 = DDUICoreLocalizedString(@"CC_DISABLED_CANCEL");
    [v3 setObject:v15 forKeyedSubscript:*MEMORY[0x277CBF1C0]];

    v16 = DDUICoreLocalizedString(@"CC_DISABLED_SETTINGS");
    [v3 setObject:v16 forKeyedSubscript:*MEMORY[0x277CBF1E8]];

    if (DeviceClass == 3)
    {
      v17 = @"CC_DISABLED_MESSAGE_IPAD";
    }

    else
    {
      if (DeviceClass != 1)
      {
        goto LABEL_16;
      }

      v17 = @"CC_DISABLED_MESSAGE_IPHONE";
    }

    v8 = DDUICoreLocalizedString(v17);
    [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x277CBF198]];
  }

  else
  {
    if (v4)
    {
      goto LABEL_16;
    }

    v5 = [*(a1 + 32) wirelessSettingsController];
    v6 = [v5 deviceSupportsWAPI];
    v7 = @"WIFI";
    if (v6)
    {
      v7 = @"WLAN";
    }

    v8 = v7;

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"CC_%@_OFF_HEADER", v8];
    v10 = DDUICoreLocalizedString(v9);
    [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x277CBF188]];

    v11 = DDUICoreLocalizedString(@"CC_WIFI_OFF_CANCEL");
    [v3 setObject:v11 forKeyedSubscript:*MEMORY[0x277CBF1C0]];

    v12 = DDUICoreLocalizedString(@"CC_WIFI_OFF_SETTINGS");
    [v3 setObject:v12 forKeyedSubscript:*MEMORY[0x277CBF1E8]];

    if (DeviceClass == 1)
    {
      v13 = @"CC_%@_OFF_MESSAGE_IPHONE";
      goto LABEL_12;
    }

    if (DeviceClass == 3)
    {
      v13 = @"CC_%@_OFF_MESSAGE_IPAD";
LABEL_12:
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:v13, v8];
      v19 = DDUICoreLocalizedString(v18);
      [v3 setObject:v19 forKeyedSubscript:*MEMORY[0x277CBF198]];
    }
  }

LABEL_16:
  v20 = CFUserNotificationCreate(0, 0.0, 1uLL, &error, v3);
  if (error)
  {
    v21 = _DDUICoreLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = error;
      _os_log_impl(&dword_230EF9000, v21, OS_LOG_TYPE_DEFAULT, "Error creating continuity camera disabled user notification (error: %d)\n", buf, 8u);
    }
  }

  else
  {
    v22 = v20;
    *buf = 0;
    CFUserNotificationReceiveResponse(v20, 0.0, buf);
    if ((buf[0] & 3) == 0)
    {
      [*(a1 + 32) _handleContinuityCameraDisabledAlertResponseWithState:*(a1 + 40)];
    }

    CFRelease(v22);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __109___DDUIiOSNotificationPresenter_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _DDUICoreLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "Finished launching application with error %@", &v8, 0xCu);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, 1);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end