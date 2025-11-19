@interface BiometricSupportUserNotification
+ (BOOL)didDisplayPearlGlassesBannerNotificationRecently:(double)a3;
+ (BOOL)displayPearlGlassesBannerNotification;
+ (void)displayPearlInterlockIssueNotification:(BOOL)a3;
+ (void)displayPearlIssueNotification;
+ (void)displaySensorIssueNotificationWithHeader:(id)a3 message:(id)a4 button:(id)a5;
+ (void)displayTouchIDIssueNotification;
@end

@implementation BiometricSupportUserNotification

+ (void)displayTouchIDIssueNotification
{
  v8 = MGCopyAnswer();
  v3 = [BKLocalization getLocalizedString:@"TOUCH_ID_ISSUE_NOTIFICATION_TITLE"];
  v4 = [v8 uppercaseString];
  v5 = [@"TOUCH_ID_ISSUE_NOTIFICATION_TEXT_" stringByAppendingString:v4];
  v6 = [BKLocalization getLocalizedString:v5];
  v7 = [BKLocalization getLocalizedString:@"TOUCH_ID_ISSUE_NOTIFICATION_CONFIRM"];
  [a1 displaySensorIssueNotificationWithHeader:v3 message:v6 button:v7];
}

+ (void)displayPearlIssueNotification
{
  v8 = MGCopyAnswer();
  v3 = [BKLocalization getLocalizedString:@"FACE_ID_ISSUE_NOTIFICATION_TITLE"];
  v4 = [v8 uppercaseString];
  v5 = [@"FACE_ID_ISSUE_NOTIFICATION_TEXT_" stringByAppendingString:v4];
  v6 = [BKLocalization getLocalizedString:v5];
  v7 = [BKLocalization getLocalizedString:@"FACE_ID_ISSUE_NOTIFICATION_CONFIRM"];
  [a1 displaySensorIssueNotificationWithHeader:v3 message:v6 button:v7];
}

+ (void)displayPearlInterlockIssueNotification:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  v6 = &off_223E5E000;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 67109120;
    LODWORD(v24) = v3;
    _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_DEFAULT, "displayPearlInterlockIssueNotification: %d\n", &v23, 8u);
  }

  v7 = displayPearlInterlockIssueNotification__count;
  if (displayPearlInterlockIssueNotification__count == -1)
  {
    v8 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:@"com.apple.BiometricKit"];
    v7 = [v8 countOfPendingFollowUpItems:0];
    displayPearlInterlockIssueNotification__count = v7;
    if (!v3)
    {
LABEL_17:
      v19 = 1;
      if (v3 || v7 < 1)
      {
        v9 = v8;
      }

      else
      {
        v9 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:@"com.apple.BiometricKit"];

        if (__osLog)
        {
          v20 = __osLog;
        }

        else
        {
          v20 = v4;
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v23) = 0;
          _os_log_impl(&dword_223E00000, v20, OS_LOG_TYPE_DEFAULT, "Clearing item\n", &v23, 2u);
        }

        v19 = [v9 clearPendingFollowUpItems:0];
        displayPearlInterlockIssueNotification__count = [v9 countOfPendingFollowUpItems:0];
      }

      goto LABEL_26;
    }
  }

  else
  {
    v8 = 0;
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  if (v7)
  {
    goto LABEL_17;
  }

  v9 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:@"com.apple.BiometricKit"];

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/HT208186?cid=iOS_SettingsUI_iphone_article_HT208186"];
  v12 = MEMORY[0x277CFE4F8];
  v13 = [BKLocalization getLocalizedString:@"FACE_ID_INTERLOCK_ACTION"];
  v14 = [v12 actionWithLabel:v13 url:v11];

  [v10 addObject:v14];
  v15 = objc_alloc_init(MEMORY[0x277CFE508]);
  [v15 setUniqueIdentifier:@"com.apple.faceid.CamInterlockError"];
  v16 = [BKLocalization getLocalizedString:@"FACE_ID_INTERLOCK_TITLE"];
  [v15 setTitle:v16];

  v17 = [BKLocalization getLocalizedString:@"FACE_ID_INTERLOCK_INFORMATIVE_TEXT"];
  [v15 setInformativeText:v17];

  [v15 setActions:v10];
  if (__osLog)
  {
    v18 = __osLog;
  }

  else
  {
    v18 = v4;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = v15;
    _os_log_impl(&dword_223E00000, v18, OS_LOG_TYPE_DEFAULT, "Posting item: %@\n", &v23, 0xCu);
  }

  v19 = [v9 postFollowUpItem:v15 error:0];
  displayPearlInterlockIssueNotification__count = [v9 countOfPendingFollowUpItems:0];

  v6 = &off_223E5E000;
LABEL_26:
  if (__osLogTrace)
  {
    v21 = __osLogTrace;
  }

  else
  {
    v21 = v4;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(v6 + 318);
    LODWORD(v24) = v19;
    _os_log_impl(&dword_223E00000, v21, OS_LOG_TYPE_DEFAULT, "displayPearlInterlockIssueNotification: -> %d\n", &v23, 8u);
  }

  v22 = *MEMORY[0x277D85DE8];
}

+ (BOOL)displayPearlGlassesBannerNotification
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_223E00000, v3, OS_LOG_TYPE_DEFAULT, "displayPearlGlassesBannerNotification\n", &v19, 2u);
  }

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:@"/tmp/biokit_glasses_banner_notification"];

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [v6 createFileAtPath:@"/tmp/biokit_glasses_banner_notification" contents:0 attributes:0];

    if ((v7 & 1) == 0)
    {
      v8 = (__osLog ? __osLog : v2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v19 = 138412290;
        v20 = @"/tmp/biokit_glasses_banner_notification";
        _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_ERROR, "displayPearlGlassesBannerNotification: cannot create mark file %@\n", &v19, 0xCu);
      }
    }

    v9 = objc_alloc_init(MEMORY[0x277CE1F60]);
    v10 = [BKLocalization getLocalizedString:@"FACE_ID_GLASSES_BANNER_TITLE" fromFile:@"biometrickitd-Periocular"];
    [v9 setTitle:v10];

    v11 = [BKLocalization getLocalizedString:@"FACE_ID_GLASSES_BANNER_BODY" fromFile:@"biometrickitd-Periocular"];
    [v9 setBody:v11];

    v12 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=TOUCHID_PASSCODE"];
    [v9 setDefaultActionURL:v12];

    v13 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"com.apple.BiometricKit.GlassesBanner" content:v9 trigger:0 destinations:1];
    v14 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.Preferences"];
    [v14 addNotificationRequest:v13 withCompletionHandler:&__block_literal_global_1];
  }

  v15 = v5 ^ 1;
  if (__osLogTrace)
  {
    v16 = __osLogTrace;
  }

  else
  {
    v16 = v2;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 67109120;
    LODWORD(v20) = v15;
    _os_log_impl(&dword_223E00000, v16, OS_LOG_TYPE_DEFAULT, "displayPearlGlassesBannerNotification -> %d\n", &v19, 8u);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

void __73__BiometricSupportUserNotification_displayPearlGlassesBannerNotification__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_223E00000, v3, OS_LOG_TYPE_INFO, "displayPearlGlassesBannerNotification addNotificationRequest callback, error = %@\n", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (BOOL)didDisplayPearlGlassesBannerNotificationRecently:(double)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134217984;
    v20 = a3;
    _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_DEFAULT, "didDisplayPearlGlassesBannerNotificationRecently: %f\n", &v19, 0xCu);
  }

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 attributesOfItemAtPath:@"/tmp/biokit_glasses_banner_notification" error:0];
  if (v7)
  {
    if (__osLog)
    {
      v8 = __osLog;
    }

    else
    {
      v8 = v4;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEBUG, "Glasses banner markfile found, attributes retrieved\n", &v19, 2u);
    }

    v9 = [v7 fileCreationDate];
    v10 = v9;
    if (v9)
    {
      [v9 timeIntervalSinceNow];
      v12 = -v11;
      if (__osLog)
      {
        v13 = __osLog;
      }

      else
      {
        v13 = v4;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v19 = 134217984;
        v20 = v12;
        _os_log_impl(&dword_223E00000, v13, OS_LOG_TYPE_INFO, "Glasses banner mark file age is %f\n", &v19, 0xCu);
      }

      v14 = v12 < a3;
    }

    else
    {
      if (__osLog)
      {
        v15 = __osLog;
      }

      else
      {
        v15 = v4;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_223E00000, v15, OS_LOG_TYPE_ERROR, "Cannot get glasses banner markfile creation date\n", &v19, 2u);
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  if (__osLogTrace)
  {
    v16 = __osLogTrace;
  }

  else
  {
    v16 = v4;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 67109120;
    LODWORD(v20) = v14;
    _os_log_impl(&dword_223E00000, v16, OS_LOG_TYPE_DEFAULT, "didDisplayPearlGlassesBannerNotificationRecently: -> %d\n", &v19, 8u);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (void)displaySensorIssueNotificationWithHeader:(id)a3 message:(id)a4 button:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [v10 fileExistsAtPath:@"/tmp/biokit_hw_issue_notification"];

  if ((v11 & 1) == 0)
  {
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    [v12 createFileAtPath:@"/tmp/biokit_hw_issue_notification" contents:0 attributes:0];

    v13 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __92__BiometricSupportUserNotification_displaySensorIssueNotificationWithHeader_message_button___block_invoke;
    block[3] = &unk_2784FA5A0;
    v15 = v7;
    v16 = v8;
    v17 = v9;
    dispatch_async(v13, block);
  }
}

void __92__BiometricSupportUserNotification_displaySensorIssueNotificationWithHeader_message_button___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  error = 0;
  responseFlags = 0;
  v1 = *MEMORY[0x277CBF188];
  v13 = *(a1 + 32);
  v2 = *MEMORY[0x277CBF198];
  v12[0] = v1;
  v12[1] = v2;
  v3 = *(a1 + 48);
  v4 = *MEMORY[0x277CBF1B0];
  v12[2] = *MEMORY[0x277CBF1E8];
  v12[3] = v4;
  v14 = v3;
  v15 = MEMORY[0x277CBEC38];
  v5 = *MEMORY[0x277D67290];
  v12[4] = *MEMORY[0x277D67340];
  v12[5] = v5;
  v16 = MEMORY[0x277CBEC38];
  v17 = MEMORY[0x277CBEC28];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:v12 count:6];
  v7 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, &error, v6);
  if (v7)
  {
    v8 = v7;
    CFUserNotificationReceiveResponse(v7, 0.0, &responseFlags);
    CFRelease(v8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end