@interface CKStoragePlugin
- (BOOL)_shouldDisplayAutoDeleteMessagesTip;
- (BOOL)_shouldDisplayReviewLargeAttachmentsTip;
- (CKStoragePlugin)init;
- (id)_autoDeleteMessagesTip;
- (id)_conversationSpecifier;
- (id)_loadAppSpecifiers;
- (id)_messagesIniCloudTip;
- (id)_reviewLargeAttachmentsTip;
- (id)_spaceTakenForSpecifier:(id)a3;
- (id)cloudDocumentSpecifiers;
- (id)documentAppIdentifiers;
- (id)documentSpecifiersForApp:(id)a3;
- (id)tips;
- (unint64_t)_iterationOptionForsForCalculatingSpaceSavedByReviewingLargeConversations;
- (void)_configureCloudTipController;
- (void)_displayICloudErrorMessage;
- (void)_enableAutoDeleteMessages;
- (void)_iCloudHooksSetEnabledReturned:(id)a3;
- (void)_loadiCloudAppSpecifiers;
- (void)_refreshMessageIniCloudTipIfNeeded;
- (void)dealloc;
- (void)enableOptionForTip:(id)a3;
- (void)storagePlugingDataModelDidUpdate:(id)a3;
@end

@implementation CKStoragePlugin

- (CKStoragePlugin)init
{
  v10.receiver = self;
  v10.super_class = CKStoragePlugin;
  v2 = [(CKStoragePlugin *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(CKStoragePlugin *)v2 _configureCloudTipController];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel__iCloudHooksSetEnabledReturned_ name:*MEMORY[0x1E69A5948] object:0];

    v5 = objc_alloc_init(CKStoragePluginDataModel);
    dataModel = v3->_dataModel;
    v3->_dataModel = v5;

    [(CKStoragePluginDataModel *)v3->_dataModel setDelegate:v3];
    v7 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:&stru_1F04268F8 target:0 set:0 get:0 detail:0 cell:15 edit:0];
    initialAppSpecifier = v3->_initialAppSpecifier;
    v3->_initialAppSpecifier = v7;
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(STStorageOptionTip *)self->_cachedAutoDeleteMessagesTip setDelegate:0];
  [(STStorageOptionTip *)self->_cachedMessagesIniCloudTip setDelegate:0];
  [(CKStoragePluginDataModel *)self->_dataModel setDelegate:0];
  v4.receiver = self;
  v4.super_class = CKStoragePlugin;
  [(CKStoragePlugin *)&v4 dealloc];
}

- (unint64_t)_iterationOptionForsForCalculatingSpaceSavedByReviewingLargeConversations
{
  v3 = [(CKStoragePlugin *)self dataModel];
  v4 = [v3 isCloudKitEnabled];

  if (!v4)
  {
    return 0;
  }

  if (self->_cloudAppSpecifiers)
  {
    return 2;
  }

  return 1;
}

- (void)storagePlugingDataModelDidUpdate:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Data Model updated, reloading specifiers and tips", v7, 2u);
    }
  }

  v6 = [objc_opt_class() _representedApp];
  [(STStoragePlugin *)self reloadSpecifiersForApp:v6];

  [(CKStoragePlugin *)self setCanDisplayTips:1];
  [(STStoragePlugin *)self reloadTips];
}

- (id)documentAppIdentifiers
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() _representedApp];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)documentSpecifiersForApp:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() _representedApp];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [(CKStoragePlugin *)self dataModel];
    v8 = [v7 loadCountsIfNeeded];

    if (v8)
    {
      v11[0] = self->_initialAppSpecifier;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    }

    else
    {
      v9 = [(CKStoragePlugin *)self _loadAppSpecifiers];
    }
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (id)cloudDocumentSpecifiers
{
  [(CKStoragePlugin *)self _loadiCloudAppSpecifiers];

  return [(CKStoragePlugin *)self cloudAppSpecifiers];
}

- (void)enableOptionForTip:(id)a3
{
  v8 = a3;
  v4 = [(CKStoragePlugin *)self cachedAutoDeleteMessagesTip];

  if (v4 == v8)
  {
    [(CKStoragePlugin *)self _enableAutoDeleteMessages];
  }

  else
  {
    v5 = [(CKStoragePlugin *)self cachedMessagesIniCloudTip];

    v6 = v8;
    if (v5 != v8)
    {
      goto LABEL_6;
    }

    v7 = [(CKStoragePlugin *)self dataModel];
    [v7 setIsCloudKitEnabled:1];
  }

  v6 = v8;
LABEL_6:
}

- (id)_conversationSpecifier
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(CKStoragePlugin *)self _iterationOptionForsForCalculatingSpaceSavedByReviewingLargeConversations];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"unsynced";
      if (v3 == 2)
      {
        v5 = @"synced";
      }

      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Conversations specifier will use %@ messages", &v11, 0xCu);
    }
  }

  v6 = objc_opt_class();
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"CONVERSATIONS" value:&stru_1F04268F8 table:@"General"];
  v9 = [(CKStoragePlugin *)self _spaceTakenSpecifierForName:v8 viewControllerClass:v6];

  return v9;
}

- (id)_loadAppSpecifiers
{
  v3 = [(CKStoragePlugin *)self appSpecifiers];

  if (!v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [(CKStoragePlugin *)self _conversationSpecifier];
    if (v5)
    {
      [v4 addObject:v5];
    }

    v6 = [(CKStoragePlugin *)self dataModel];
    v7 = [v6 nonPurgeableSpaceTakenByFileType:*MEMORY[0x1E69A5D88]];

    if (v7 >= 1)
    {
      v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"PHOTOS" value:&stru_1F04268F8 table:@"General"];
      v10 = [(CKStoragePlugin *)self _spaceTakenSpecifierForName:v9 viewControllerClass:objc_opt_class()];
      [v4 addObject:v10];
    }

    v11 = [(CKStoragePlugin *)self dataModel];
    v12 = [v11 nonPurgeableSpaceTakenByFileType:*MEMORY[0x1E69A5D90]];

    if (v12 >= 1)
    {
      v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"VIDEOS" value:&stru_1F04268F8 table:@"General"];
      v15 = [(CKStoragePlugin *)self _spaceTakenSpecifierForName:v14 viewControllerClass:objc_opt_class()];
      [v4 addObject:v15];
    }

    v16 = [(CKStoragePlugin *)self dataModel];
    v17 = [v16 nonPurgeableSpaceTakenByFileType:*MEMORY[0x1E69A5D78]];

    if (v17 >= 1)
    {
      v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"GIFSANDSTICKERS" value:&stru_1F04268F8 table:@"General"];
      v20 = [(CKStoragePlugin *)self _spaceTakenSpecifierForName:v19 viewControllerClass:objc_opt_class()];
      [v4 addObject:v20];
    }

    v21 = [(CKStoragePlugin *)self dataModel];
    v22 = [v21 nonPurgeableSpaceTakenByFileType:*MEMORY[0x1E69A5D80]];

    if (v22 >= 1)
    {
      v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"OTHER" value:&stru_1F04268F8 table:@"General"];
      v25 = [(CKStoragePlugin *)self _spaceTakenSpecifierForName:v24 viewControllerClass:objc_opt_class()];
      [v4 addObject:v25];
    }

    v26 = [v4 copy];
    [(CKStoragePlugin *)self setAppSpecifiers:v26];
  }

  return [(CKStoragePlugin *)self appSpecifiers];
}

- (void)_loadiCloudAppSpecifiers
{
  v3 = [(CKStoragePlugin *)self cloudAppSpecifiers];

  if (!v3)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v4 = [(CKStoragePlugin *)self _conversationSpecifier];
    if (v4)
    {
      [v6 addObject:v4];
    }

    v5 = [v6 copy];
    [(CKStoragePlugin *)self setCloudAppSpecifiers:v5];
  }
}

- (id)_spaceTakenForSpecifier:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 detailControllerClass];
  if (v5 != objc_opt_class())
  {
    v6 = [v4 detailControllerClass];
    if (v6 != objc_opt_class())
    {
      v7 = [v4 detailControllerClass];
      if (v7 == objc_opt_class())
      {
        v11 = [(CKStoragePlugin *)self dataModel];
        v12 = MEMORY[0x1E69A5D88];
        goto LABEL_18;
      }

      v8 = [v4 detailControllerClass];
      if (v8 == objc_opt_class())
      {
        v11 = [(CKStoragePlugin *)self dataModel];
        v12 = MEMORY[0x1E69A5D90];
        goto LABEL_18;
      }

      v9 = [v4 detailControllerClass];
      if (v9 == objc_opt_class())
      {
        v11 = [(CKStoragePlugin *)self dataModel];
        v12 = MEMORY[0x1E69A5D78];
        goto LABEL_18;
      }

      v10 = [v4 detailControllerClass];
      if (v10 == objc_opt_class())
      {
        v11 = [(CKStoragePlugin *)self dataModel];
        v12 = MEMORY[0x1E69A5D80];
LABEL_18:
        v14 = [v11 nonPurgeableSpaceTakenByFileType:*v12];
        goto LABEL_19;
      }

LABEL_12:
      v15 = 0;
      goto LABEL_20;
    }
  }

  v13 = [(CKStoragePlugin *)self _iterationOptionForsForCalculatingSpaceSavedByReviewingLargeConversations];
  if (v13 == 2)
  {
    v11 = [(CKStoragePlugin *)self dataModel];
    v14 = [v11 spaceTakenBySyncedConversations];
  }

  else if (v13 == 1)
  {
    v11 = [(CKStoragePlugin *)self dataModel];
    v14 = [v11 spaceTakenByUnsyncedConversations];
  }

  else
  {
    if (v13)
    {
      goto LABEL_12;
    }

    v11 = [(CKStoragePlugin *)self dataModel];
    v14 = [v11 spaceTakenByAllConversations];
  }

LABEL_19:
  v15 = v14;

LABEL_20:
  v16 = [MEMORY[0x1E696AAF0] stringFromByteCount:v15 countStyle:0];
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = NSStringFromClass([v4 detailControllerClass]);
      v20 = 138412546;
      v21 = v16;
      v22 = 2112;
      v23 = v18;
      _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Setting bytesTaken %@ for detail controller class %@", &v20, 0x16u);
    }
  }

  return v16;
}

- (id)tips
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(CKStoragePlugin *)self _autoDeleteMessagesTip];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(CKStoragePlugin *)self _reviewLargeAttachmentsTip];
  if (v5)
  {
    [v3 addObject:v5];
  }

  v6 = [(CKStoragePlugin *)self _messagesIniCloudTip];
  if (v6)
  {
    [v3 addObject:v6];
  }

  v7 = [v3 copy];

  return v7;
}

- (BOOL)_shouldDisplayAutoDeleteMessagesTip
{
  v3 = [(CKStoragePlugin *)self dataModel];
  v4 = [v3 isCloudKitEnabled];

  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Not showing Auto Delete Messages tip, MoC is on.", buf, 2u);
      }
    }

    return 0;
  }

  else
  {
    CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"KeepMessageForDays", @"com.apple.MobileSMS", &keyExistsAndHasValidFormat);
    if (!keyExistsAndHasValidFormat || !AppIntegerValue || (v6 = 0, AppIntegerValue >= 366))
    {
      if ([(CKStoragePlugin *)self _forceShowingAutoDeleteMessagesTip])
      {
        return 1;
      }

      else
      {
        v8 = [(CKStoragePlugin *)self dataModel];
        v6 = [v8 spaceSavedByAutoDeletingMessages] > 104857600;
      }
    }
  }

  return v6;
}

- (id)_autoDeleteMessagesTip
{
  if ([(CKStoragePlugin *)self _shouldDisplayAutoDeleteMessagesTip])
  {
    v3 = [(CKStoragePlugin *)self cachedAutoDeleteMessagesTip];

    if (!v3)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69D4858]);
      v5 = [objc_opt_class() _representedApp];
      [v4 setRepresentedApp:v5];

      v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"AUTO_DELETE_MESSAGES_TITLE" value:&stru_1F04268F8 table:@"General"];
      [v4 setTitle:v7];

      v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"AUTO_DELETE_MESSAGES_INFO" value:&stru_1F04268F8 table:@"General"];
      [v4 setInfoText:v9];

      v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"TURN_ON" value:&stru_1F04268F8 table:@"General"];
      [v4 setEnableButtonTitle:v11];

      v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"AUTO_DELETE_MESSAGES_CONFIRM_TEXT" value:&stru_1F04268F8 table:@"General"];
      [v4 setConfirmationText:v13];

      v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"AUTO_DELETE_MESSAGES_CONFIRM_BUTTON" value:&stru_1F04268F8 table:@"General"];
      [v4 setConfirmationButtonTitle:v15];

      if (objc_opt_respondsToSelector())
      {
        [v4 setMayCauseDataLoss:1];
      }

      v16 = [(CKStoragePlugin *)self dataModel];
      [v4 setEventualGain:{objc_msgSend(v16, "spaceSavedByAutoDeletingMessages")}];

      [v4 setDelegate:self];
      [(CKStoragePlugin *)self setCachedAutoDeleteMessagesTip:v4];
    }

    v17 = [(CKStoragePlugin *)self cachedAutoDeleteMessagesTip];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v20 = 0;
        _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Will not display Auto Delete Messages tip.", v20, 2u);
      }
    }

    v17 = 0;
  }

  return v17;
}

- (void)_enableAutoDeleteMessages
{
  CFPreferencesSetAppValue(@"KeepMessageForDays", &unk_1F04E8340, @"com.apple.MobileSMS");
  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.KeepMessages.changed", 0, 0, 1u);
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.imautomatichistorydeletionagent.prefchange", 0, 0, 1u);
  v4 = [(CKStoragePlugin *)self cachedAutoDeleteMessagesTip];
  LODWORD(v5) = 1.0;
  [v4 setActivationPercent:v5];

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Enable Auto Delete Messages complete.", v7, 2u);
    }
  }
}

- (BOOL)_shouldDisplayReviewLargeAttachmentsTip
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(CKStoragePlugin *)self _forceShowingReviewLargeAttachmentsTip];
  v4 = [(CKStoragePlugin *)self dataModel];
  v5 = [v4 totalSpaceOfNonPurgeableAttachments];

  v6 = v5 > 104857600 || v3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (v6)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      if (v3)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v12 = 138412802;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      if (v5 > 104857600)
      {
        v8 = @"YES";
      }

      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Will show ReviewLargeAttachmentsTip: %@, forceShowingReviewLargeAttachmentsTip: %@, attachmentsTakeUpSignificantSpace: %@", &v12, 0x20u);
    }
  }

  return v6;
}

- (id)_reviewLargeAttachmentsTip
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(CKStoragePlugin *)self _shouldDisplayReviewLargeAttachmentsTip])
  {
    v3 = [(CKStoragePlugin *)self dataModel];
    v4 = [v3 totalSpaceOfNonPurgeableAttachments];

    v5 = [(CKStoragePlugin *)self cachedReviewLargeAttachmentsTip];

    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69D4848]);
      v7 = [objc_opt_class() _representedApp];
      [v6 setRepresentedApp:v7];

      v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"REVIEW_LARGE_ATTACHMENTS_TITLE" value:&stru_1F04268F8 table:@"General"];
      [v6 setTitle:v9];

      v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"REVIEW_LARGE_ATTACHMENTS_INFO" value:&stru_1F04268F8 table:@"General"];
      [v6 setInfoText:v11];

      [v6 setDetailControllerClass:objc_opt_class()];
      [(CKStoragePlugin *)self setCachedReviewLargeAttachmentsTip:v6];
    }

    v12 = [(CKStoragePlugin *)self cachedReviewLargeAttachmentsTip];
    [v12 setSize:v4];

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
        v18 = 138412290;
        v19 = v14;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Created updated large attachments tip with size: %@", &v18, 0xCu);
      }
    }

    v15 = [(CKStoragePlugin *)self cachedReviewLargeAttachmentsTip];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Will not display Review Large Attachments tip.", &v18, 2u);
      }
    }

    v15 = 0;
  }

  return v15;
}

- (void)_configureCloudTipController
{
  objc_initWeak(&location, self);
  v2 = +[_TtC7ChatKit19CKCloudTipViewModel sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__CKStoragePlugin__configureCloudTipController__block_invoke;
  v8[3] = &unk_1E72F55C0;
  objc_copyWeak(&v9, &location);
  [v2 setOnCloudTipChanged:v8];

  v3 = +[_TtC7ChatKit19CKCloudTipViewModel sharedInstance];
  [v3 setDisplayContext:1];

  if ([MEMORY[0x1E69A8090] summarizationModelsAvailable])
  {
    v4 = 1;
  }

  else
  {
    v4 = [MEMORY[0x1E69A8090] generativePlaygroundModelsAvailable];
  }

  if (CFPreferencesGetAppBooleanValue(@"ForceModelCriteriaToShowMiCTip", @"com.apple.MobileSMS", 0))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (v5 == 1)
  {
    v6 = dispatch_get_global_queue(0, 0);
    dispatch_async(v6, &__block_literal_global_236);
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_13;
    }

    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "This device does NOT have generative models available, so we won't bother doing any further work to detect cloud tip eligibility. No tip.", v7, 2u);
    }
  }

LABEL_13:
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __47__CKStoragePlugin__configureCloudTipController__block_invoke(uint64_t a1, void *a2)
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__64;
  v9[4] = __Block_byref_object_dispose__64;
  v3 = a2;
  v10 = v3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CKStoragePlugin__configureCloudTipController__block_invoke_299;
  block[3] = &unk_1E72F6D08;
  v7 = v9;
  objc_copyWeak(&v8, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  _Block_object_dispose(v9, 8);
}

void __47__CKStoragePlugin__configureCloudTipController__block_invoke_299(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(*(*(a1 + 40) + 8) + 40) tipType];
      v7 = 134217984;
      v8 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Storage plugin needs to update for tip %ld", &v7, 0xCu);
    }
  }

  v4 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setCloudTipDescriptor:v4];

  v6 = objc_loadWeakRetained((a1 + 48));
  [v6 reloadTips];
}

void __47__CKStoragePlugin__configureCloudTipController__block_invoke_307()
{
  v0 = +[_TtC7ChatKit19CKCloudTipViewModel sharedInstance];
  [v0 configureCloudTipManagerWithCompletionHandler:&__block_literal_global_309];
}

void __47__CKStoragePlugin__configureCloudTipController__block_invoke_2()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_19020E000, v0, OS_LOG_TYPE_INFO, "Completed cloud tip configuration", v1, 2u);
    }
  }
}

- (id)_messagesIniCloudTip
{
  v3 = [(CKStoragePlugin *)self dataModel];
  v4 = [v3 isCloudKitEnabled];

  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Messages in iCloud is already enabled. No need for a tip.", buf, 2u);
      }
    }

    v6 = 0;
  }

  else
  {
    v7 = [(CKStoragePlugin *)self cloudTipDescriptor];
    if (v7)
    {
      v8 = [(CKStoragePlugin *)self cachedMessagesIniCloudTip];

      if (v8)
      {
        v6 = [(CKStoragePlugin *)self cachedMessagesIniCloudTip];
      }

      else
      {
        v10 = objc_alloc_init(MEMORY[0x1E69D4858]);
        v11 = [objc_opt_class() _representedApp];
        [v10 setRepresentedApp:v11];

        v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v13 = [v12 localizedStringForKey:@"MESSAGES_ON_ICLOUD_TIP_TITLE" value:&stru_1F04268F8 table:@"General"];
        [v10 setTitle:v13];

        v14 = [(CKStoragePlugin *)self dataModel];
        [v10 setEventualGain:{objc_msgSend(v14, "spaceSavedByDeletingNonSyncedAttachments")}];

        [v10 setDelegate:self];
        [v10 setActivationPercent:0.0];
        v15 = CKFrameworkBundle();
        v16 = [v15 localizedStringForKey:@"SECURELY_STORE_MESSAGES_IN_CASE_YOU_RESTORE_THIS_DEVICE" value:&stru_1F04268F8 table:@"ChatKit"];
        [v10 setInfoText:v16];

        v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v18 = [v17 localizedStringForKey:@"TURN_ON" value:&stru_1F04268F8 table:@"General"];
        [v10 setEnableButtonTitle:v18];

        v19 = CKFrameworkBundle();
        v20 = [v19 localizedStringForKey:@"SECURELY_STORE_MESSAGES_IN_CASE_YOU_RESTORE_THIS_DEVICE" value:&stru_1F04268F8 table:@"ChatKit"];
        [v10 setConfirmationText:v20];

        v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v22 = [v21 localizedStringForKey:@"TURN_ON" value:&stru_1F04268F8 table:@"General"];
        [v10 setConfirmationButtonTitle:v22];

        [(CKStoragePlugin *)self setCachedMessagesIniCloudTip:v10];
        v6 = [(CKStoragePlugin *)self cachedMessagesIniCloudTip];
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *v24 = 0;
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "No prepared CKCloudTipDescriptor from the eligibility checks ==> we are ineligible for this tip and will not show it.", v24, 2u);
        }
      }

      v6 = 0;
    }
  }

  return v6;
}

- (void)_displayICloudErrorMessage
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v14 = [v3 localizedStringForKey:@"MESSAGES_ON_ICLOUD_ERROR_TITLE" value:&stru_1F04268F8 table:@"General"];

  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"MESSAGES_ON_ICLOUD_ERROR_MESSAGE" value:&stru_1F04268F8 table:@"General"];

  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"MESSAGES_ON_ICLOUDR_CONFIRM" value:&stru_1F04268F8 table:@"General"];

  v8 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v14 message:v5 preferredStyle:1];
  v9 = [MEMORY[0x1E69DC648] actionWithTitle:v7 style:0 handler:0];
  [v8 addAction:v9];

  v10 = [MEMORY[0x1E69DC668] sharedApplication];
  v11 = [v10 keyWindow];
  v12 = [v11 rootViewController];
  [v12 presentViewController:v8 animated:1 completion:0];

  if (self->_cachedMessagesIniCloudTip)
  {
    v13 = [(CKStoragePlugin *)self cachedMessagesIniCloudTip];
    [v13 setActivationPercent:0.0];
  }
}

- (void)_refreshMessageIniCloudTipIfNeeded
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_cachedMessagesIniCloudTip)
  {
    v3 = [(CKStoragePlugin *)self dataModel];
    v4 = [v3 cloudKitHooks];
    v5 = [v4 lastSyncDate];

    if (v5)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = -1.0;
    }

    v7 = [(CKStoragePlugin *)self cachedMessagesIniCloudTip];
    *&v8 = v6;
    [v7 setActivationPercent:v8];

    v9 = [(CKStoragePlugin *)self dataModel];
    v10 = [v9 cloudKitHooks];
    v11 = [v10 isEnabled];

    v12 = [(CKStoragePlugin *)self dataModel];
    v13 = [v12 cloudKitHooks];
    v14 = [v13 eligibleForTruthZone];

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = @"NO";
        if (v11)
        {
          v17 = @"YES";
        }

        else
        {
          v17 = @"NO";
        }

        if (v14)
        {
          v18 = @"YES";
        }

        else
        {
          v18 = @"NO";
        }

        v22 = 138412802;
        v23 = v17;
        v24 = 2112;
        v25 = v18;
        if (v5)
        {
          v16 = @"YES";
        }

        v26 = 2112;
        v27 = v16;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "_refreshMessageOniCloudTipIfNeeded enabled: %@, eligible: %@, completedSync: %@", &v22, 0x20u);
      }
    }

    if (!v5)
    {
      v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"MESSAGES_ON_ICLOUD_TIP_INFO" value:&stru_1F04268F8 table:@"General"];
      v21 = [(CKStoragePlugin *)self cachedMessagesIniCloudTip];
      [v21 setInfoText:v20];
    }
  }
}

- (void)_iCloudHooksSetEnabledReturned:(id)a3
{
  v4 = a3;
  v5 = [(CKStoragePlugin *)self cachedMessagesIniCloudTip];

  if (v5)
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69A5940]];
    v8 = [v7 BOOLValue];

    v9 = IMOSLoggingEnabled();
    if (v8)
    {
      if (v9)
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *v14 = 0;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "MiC enabled successfully; marking tip as activated.", v14, 2u);
        }
      }

      v11 = [(CKStoragePlugin *)self cachedMessagesIniCloudTip];
      LODWORD(v12) = 1.0;
      [v11 setActivationPercent:v12];
    }

    else
    {
      if (v9)
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "MiC failed to enable; tip will display error.", buf, 2u);
        }
      }

      [(CKStoragePlugin *)self _displayICloudErrorMessage];
    }
  }
}

@end