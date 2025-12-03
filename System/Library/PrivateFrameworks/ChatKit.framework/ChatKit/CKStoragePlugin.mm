@interface CKStoragePlugin
- (BOOL)_shouldDisplayAutoDeleteMessagesTip;
- (BOOL)_shouldDisplayReviewLargeAttachmentsTip;
- (CKStoragePlugin)init;
- (id)_autoDeleteMessagesTip;
- (id)_conversationSpecifier;
- (id)_loadAppSpecifiers;
- (id)_messagesIniCloudTip;
- (id)_reviewLargeAttachmentsTip;
- (id)_spaceTakenForSpecifier:(id)specifier;
- (id)cloudDocumentSpecifiers;
- (id)documentAppIdentifiers;
- (id)documentSpecifiersForApp:(id)app;
- (id)tips;
- (unint64_t)_iterationOptionForsForCalculatingSpaceSavedByReviewingLargeConversations;
- (void)_configureCloudTipController;
- (void)_displayICloudErrorMessage;
- (void)_enableAutoDeleteMessages;
- (void)_iCloudHooksSetEnabledReturned:(id)returned;
- (void)_loadiCloudAppSpecifiers;
- (void)_refreshMessageIniCloudTipIfNeeded;
- (void)dealloc;
- (void)enableOptionForTip:(id)tip;
- (void)storagePlugingDataModelDidUpdate:(id)update;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__iCloudHooksSetEnabledReturned_ name:*MEMORY[0x1E69A5948] object:0];

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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(STStorageOptionTip *)self->_cachedAutoDeleteMessagesTip setDelegate:0];
  [(STStorageOptionTip *)self->_cachedMessagesIniCloudTip setDelegate:0];
  [(CKStoragePluginDataModel *)self->_dataModel setDelegate:0];
  v4.receiver = self;
  v4.super_class = CKStoragePlugin;
  [(CKStoragePlugin *)&v4 dealloc];
}

- (unint64_t)_iterationOptionForsForCalculatingSpaceSavedByReviewingLargeConversations
{
  dataModel = [(CKStoragePlugin *)self dataModel];
  isCloudKitEnabled = [dataModel isCloudKitEnabled];

  if (!isCloudKitEnabled)
  {
    return 0;
  }

  if (self->_cloudAppSpecifiers)
  {
    return 2;
  }

  return 1;
}

- (void)storagePlugingDataModelDidUpdate:(id)update
{
  updateCopy = update;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Data Model updated, reloading specifiers and tips", v7, 2u);
    }
  }

  _representedApp = [objc_opt_class() _representedApp];
  [(STStoragePlugin *)self reloadSpecifiersForApp:_representedApp];

  [(CKStoragePlugin *)self setCanDisplayTips:1];
  [(STStoragePlugin *)self reloadTips];
}

- (id)documentAppIdentifiers
{
  v5[1] = *MEMORY[0x1E69E9840];
  _representedApp = [objc_opt_class() _representedApp];
  v5[0] = _representedApp;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)documentSpecifiersForApp:(id)app
{
  v11[1] = *MEMORY[0x1E69E9840];
  appCopy = app;
  _representedApp = [objc_opt_class() _representedApp];
  v6 = [appCopy isEqualToString:_representedApp];

  if (v6)
  {
    dataModel = [(CKStoragePlugin *)self dataModel];
    loadCountsIfNeeded = [dataModel loadCountsIfNeeded];

    if (loadCountsIfNeeded)
    {
      v11[0] = self->_initialAppSpecifier;
      _loadAppSpecifiers = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    }

    else
    {
      _loadAppSpecifiers = [(CKStoragePlugin *)self _loadAppSpecifiers];
    }
  }

  else
  {
    _loadAppSpecifiers = MEMORY[0x1E695E0F0];
  }

  return _loadAppSpecifiers;
}

- (id)cloudDocumentSpecifiers
{
  [(CKStoragePlugin *)self _loadiCloudAppSpecifiers];

  return [(CKStoragePlugin *)self cloudAppSpecifiers];
}

- (void)enableOptionForTip:(id)tip
{
  tipCopy = tip;
  cachedAutoDeleteMessagesTip = [(CKStoragePlugin *)self cachedAutoDeleteMessagesTip];

  if (cachedAutoDeleteMessagesTip == tipCopy)
  {
    [(CKStoragePlugin *)self _enableAutoDeleteMessages];
  }

  else
  {
    cachedMessagesIniCloudTip = [(CKStoragePlugin *)self cachedMessagesIniCloudTip];

    v6 = tipCopy;
    if (cachedMessagesIniCloudTip != tipCopy)
    {
      goto LABEL_6;
    }

    dataModel = [(CKStoragePlugin *)self dataModel];
    [dataModel setIsCloudKitEnabled:1];
  }

  v6 = tipCopy;
LABEL_6:
}

- (id)_conversationSpecifier
{
  v13 = *MEMORY[0x1E69E9840];
  _iterationOptionForsForCalculatingSpaceSavedByReviewingLargeConversations = [(CKStoragePlugin *)self _iterationOptionForsForCalculatingSpaceSavedByReviewingLargeConversations];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"unsynced";
      if (_iterationOptionForsForCalculatingSpaceSavedByReviewingLargeConversations == 2)
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
  appSpecifiers = [(CKStoragePlugin *)self appSpecifiers];

  if (!appSpecifiers)
  {
    array = [MEMORY[0x1E695DF70] array];
    _conversationSpecifier = [(CKStoragePlugin *)self _conversationSpecifier];
    if (_conversationSpecifier)
    {
      [array addObject:_conversationSpecifier];
    }

    dataModel = [(CKStoragePlugin *)self dataModel];
    v7 = [dataModel nonPurgeableSpaceTakenByFileType:*MEMORY[0x1E69A5D88]];

    if (v7 >= 1)
    {
      v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"PHOTOS" value:&stru_1F04268F8 table:@"General"];
      v10 = [(CKStoragePlugin *)self _spaceTakenSpecifierForName:v9 viewControllerClass:objc_opt_class()];
      [array addObject:v10];
    }

    dataModel2 = [(CKStoragePlugin *)self dataModel];
    v12 = [dataModel2 nonPurgeableSpaceTakenByFileType:*MEMORY[0x1E69A5D90]];

    if (v12 >= 1)
    {
      v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"VIDEOS" value:&stru_1F04268F8 table:@"General"];
      v15 = [(CKStoragePlugin *)self _spaceTakenSpecifierForName:v14 viewControllerClass:objc_opt_class()];
      [array addObject:v15];
    }

    dataModel3 = [(CKStoragePlugin *)self dataModel];
    v17 = [dataModel3 nonPurgeableSpaceTakenByFileType:*MEMORY[0x1E69A5D78]];

    if (v17 >= 1)
    {
      v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"GIFSANDSTICKERS" value:&stru_1F04268F8 table:@"General"];
      v20 = [(CKStoragePlugin *)self _spaceTakenSpecifierForName:v19 viewControllerClass:objc_opt_class()];
      [array addObject:v20];
    }

    dataModel4 = [(CKStoragePlugin *)self dataModel];
    v22 = [dataModel4 nonPurgeableSpaceTakenByFileType:*MEMORY[0x1E69A5D80]];

    if (v22 >= 1)
    {
      v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"OTHER" value:&stru_1F04268F8 table:@"General"];
      v25 = [(CKStoragePlugin *)self _spaceTakenSpecifierForName:v24 viewControllerClass:objc_opt_class()];
      [array addObject:v25];
    }

    v26 = [array copy];
    [(CKStoragePlugin *)self setAppSpecifiers:v26];
  }

  return [(CKStoragePlugin *)self appSpecifiers];
}

- (void)_loadiCloudAppSpecifiers
{
  cloudAppSpecifiers = [(CKStoragePlugin *)self cloudAppSpecifiers];

  if (!cloudAppSpecifiers)
  {
    array = [MEMORY[0x1E695DF70] array];
    _conversationSpecifier = [(CKStoragePlugin *)self _conversationSpecifier];
    if (_conversationSpecifier)
    {
      [array addObject:_conversationSpecifier];
    }

    v5 = [array copy];
    [(CKStoragePlugin *)self setCloudAppSpecifiers:v5];
  }
}

- (id)_spaceTakenForSpecifier:(id)specifier
{
  v24 = *MEMORY[0x1E69E9840];
  specifierCopy = specifier;
  detailControllerClass = [specifierCopy detailControllerClass];
  if (detailControllerClass != objc_opt_class())
  {
    detailControllerClass2 = [specifierCopy detailControllerClass];
    if (detailControllerClass2 != objc_opt_class())
    {
      detailControllerClass3 = [specifierCopy detailControllerClass];
      if (detailControllerClass3 == objc_opt_class())
      {
        dataModel = [(CKStoragePlugin *)self dataModel];
        v12 = MEMORY[0x1E69A5D88];
        goto LABEL_18;
      }

      detailControllerClass4 = [specifierCopy detailControllerClass];
      if (detailControllerClass4 == objc_opt_class())
      {
        dataModel = [(CKStoragePlugin *)self dataModel];
        v12 = MEMORY[0x1E69A5D90];
        goto LABEL_18;
      }

      detailControllerClass5 = [specifierCopy detailControllerClass];
      if (detailControllerClass5 == objc_opt_class())
      {
        dataModel = [(CKStoragePlugin *)self dataModel];
        v12 = MEMORY[0x1E69A5D78];
        goto LABEL_18;
      }

      detailControllerClass6 = [specifierCopy detailControllerClass];
      if (detailControllerClass6 == objc_opt_class())
      {
        dataModel = [(CKStoragePlugin *)self dataModel];
        v12 = MEMORY[0x1E69A5D80];
LABEL_18:
        spaceTakenBySyncedConversations = [dataModel nonPurgeableSpaceTakenByFileType:*v12];
        goto LABEL_19;
      }

LABEL_12:
      v15 = 0;
      goto LABEL_20;
    }
  }

  _iterationOptionForsForCalculatingSpaceSavedByReviewingLargeConversations = [(CKStoragePlugin *)self _iterationOptionForsForCalculatingSpaceSavedByReviewingLargeConversations];
  if (_iterationOptionForsForCalculatingSpaceSavedByReviewingLargeConversations == 2)
  {
    dataModel = [(CKStoragePlugin *)self dataModel];
    spaceTakenBySyncedConversations = [dataModel spaceTakenBySyncedConversations];
  }

  else if (_iterationOptionForsForCalculatingSpaceSavedByReviewingLargeConversations == 1)
  {
    dataModel = [(CKStoragePlugin *)self dataModel];
    spaceTakenBySyncedConversations = [dataModel spaceTakenByUnsyncedConversations];
  }

  else
  {
    if (_iterationOptionForsForCalculatingSpaceSavedByReviewingLargeConversations)
    {
      goto LABEL_12;
    }

    dataModel = [(CKStoragePlugin *)self dataModel];
    spaceTakenBySyncedConversations = [dataModel spaceTakenByAllConversations];
  }

LABEL_19:
  v15 = spaceTakenBySyncedConversations;

LABEL_20:
  v16 = [MEMORY[0x1E696AAF0] stringFromByteCount:v15 countStyle:0];
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = NSStringFromClass([specifierCopy detailControllerClass]);
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
  array = [MEMORY[0x1E695DF70] array];
  _autoDeleteMessagesTip = [(CKStoragePlugin *)self _autoDeleteMessagesTip];
  if (_autoDeleteMessagesTip)
  {
    [array addObject:_autoDeleteMessagesTip];
  }

  _reviewLargeAttachmentsTip = [(CKStoragePlugin *)self _reviewLargeAttachmentsTip];
  if (_reviewLargeAttachmentsTip)
  {
    [array addObject:_reviewLargeAttachmentsTip];
  }

  _messagesIniCloudTip = [(CKStoragePlugin *)self _messagesIniCloudTip];
  if (_messagesIniCloudTip)
  {
    [array addObject:_messagesIniCloudTip];
  }

  v7 = [array copy];

  return v7;
}

- (BOOL)_shouldDisplayAutoDeleteMessagesTip
{
  dataModel = [(CKStoragePlugin *)self dataModel];
  isCloudKitEnabled = [dataModel isCloudKitEnabled];

  if (isCloudKitEnabled)
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
        dataModel2 = [(CKStoragePlugin *)self dataModel];
        v6 = [dataModel2 spaceSavedByAutoDeletingMessages] > 104857600;
      }
    }
  }

  return v6;
}

- (id)_autoDeleteMessagesTip
{
  if ([(CKStoragePlugin *)self _shouldDisplayAutoDeleteMessagesTip])
  {
    cachedAutoDeleteMessagesTip = [(CKStoragePlugin *)self cachedAutoDeleteMessagesTip];

    if (!cachedAutoDeleteMessagesTip)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69D4858]);
      _representedApp = [objc_opt_class() _representedApp];
      [v4 setRepresentedApp:_representedApp];

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

      dataModel = [(CKStoragePlugin *)self dataModel];
      [v4 setEventualGain:{objc_msgSend(dataModel, "spaceSavedByAutoDeletingMessages")}];

      [v4 setDelegate:self];
      [(CKStoragePlugin *)self setCachedAutoDeleteMessagesTip:v4];
    }

    cachedAutoDeleteMessagesTip2 = [(CKStoragePlugin *)self cachedAutoDeleteMessagesTip];
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

    cachedAutoDeleteMessagesTip2 = 0;
  }

  return cachedAutoDeleteMessagesTip2;
}

- (void)_enableAutoDeleteMessages
{
  CFPreferencesSetAppValue(@"KeepMessageForDays", &unk_1F04E8340, @"com.apple.MobileSMS");
  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.KeepMessages.changed", 0, 0, 1u);
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.imautomatichistorydeletionagent.prefchange", 0, 0, 1u);
  cachedAutoDeleteMessagesTip = [(CKStoragePlugin *)self cachedAutoDeleteMessagesTip];
  LODWORD(v5) = 1.0;
  [cachedAutoDeleteMessagesTip setActivationPercent:v5];

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
  _forceShowingReviewLargeAttachmentsTip = [(CKStoragePlugin *)self _forceShowingReviewLargeAttachmentsTip];
  dataModel = [(CKStoragePlugin *)self dataModel];
  totalSpaceOfNonPurgeableAttachments = [dataModel totalSpaceOfNonPurgeableAttachments];

  v6 = totalSpaceOfNonPurgeableAttachments > 104857600 || _forceShowingReviewLargeAttachmentsTip;
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

      if (_forceShowingReviewLargeAttachmentsTip)
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
      if (totalSpaceOfNonPurgeableAttachments > 104857600)
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
    dataModel = [(CKStoragePlugin *)self dataModel];
    totalSpaceOfNonPurgeableAttachments = [dataModel totalSpaceOfNonPurgeableAttachments];

    cachedReviewLargeAttachmentsTip = [(CKStoragePlugin *)self cachedReviewLargeAttachmentsTip];

    if (!cachedReviewLargeAttachmentsTip)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69D4848]);
      _representedApp = [objc_opt_class() _representedApp];
      [v6 setRepresentedApp:_representedApp];

      v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"REVIEW_LARGE_ATTACHMENTS_TITLE" value:&stru_1F04268F8 table:@"General"];
      [v6 setTitle:v9];

      v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"REVIEW_LARGE_ATTACHMENTS_INFO" value:&stru_1F04268F8 table:@"General"];
      [v6 setInfoText:v11];

      [v6 setDetailControllerClass:objc_opt_class()];
      [(CKStoragePlugin *)self setCachedReviewLargeAttachmentsTip:v6];
    }

    cachedReviewLargeAttachmentsTip2 = [(CKStoragePlugin *)self cachedReviewLargeAttachmentsTip];
    [cachedReviewLargeAttachmentsTip2 setSize:totalSpaceOfNonPurgeableAttachments];

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:totalSpaceOfNonPurgeableAttachments];
        v18 = 138412290;
        v19 = v14;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Created updated large attachments tip with size: %@", &v18, 0xCu);
      }
    }

    cachedReviewLargeAttachmentsTip3 = [(CKStoragePlugin *)self cachedReviewLargeAttachmentsTip];
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

    cachedReviewLargeAttachmentsTip3 = 0;
  }

  return cachedReviewLargeAttachmentsTip3;
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
    generativePlaygroundModelsAvailable = 1;
  }

  else
  {
    generativePlaygroundModelsAvailable = [MEMORY[0x1E69A8090] generativePlaygroundModelsAvailable];
  }

  if (CFPreferencesGetAppBooleanValue(@"ForceModelCriteriaToShowMiCTip", @"com.apple.MobileSMS", 0))
  {
    v5 = 1;
  }

  else
  {
    v5 = generativePlaygroundModelsAvailable;
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
  dataModel = [(CKStoragePlugin *)self dataModel];
  isCloudKitEnabled = [dataModel isCloudKitEnabled];

  if (isCloudKitEnabled)
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

    cachedMessagesIniCloudTip2 = 0;
  }

  else
  {
    cloudTipDescriptor = [(CKStoragePlugin *)self cloudTipDescriptor];
    if (cloudTipDescriptor)
    {
      cachedMessagesIniCloudTip = [(CKStoragePlugin *)self cachedMessagesIniCloudTip];

      if (cachedMessagesIniCloudTip)
      {
        cachedMessagesIniCloudTip2 = [(CKStoragePlugin *)self cachedMessagesIniCloudTip];
      }

      else
      {
        v10 = objc_alloc_init(MEMORY[0x1E69D4858]);
        _representedApp = [objc_opt_class() _representedApp];
        [v10 setRepresentedApp:_representedApp];

        v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v13 = [v12 localizedStringForKey:@"MESSAGES_ON_ICLOUD_TIP_TITLE" value:&stru_1F04268F8 table:@"General"];
        [v10 setTitle:v13];

        dataModel2 = [(CKStoragePlugin *)self dataModel];
        [v10 setEventualGain:{objc_msgSend(dataModel2, "spaceSavedByDeletingNonSyncedAttachments")}];

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
        cachedMessagesIniCloudTip2 = [(CKStoragePlugin *)self cachedMessagesIniCloudTip];
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

      cachedMessagesIniCloudTip2 = 0;
    }
  }

  return cachedMessagesIniCloudTip2;
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

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  keyWindow = [mEMORY[0x1E69DC668] keyWindow];
  rootViewController = [keyWindow rootViewController];
  [rootViewController presentViewController:v8 animated:1 completion:0];

  if (self->_cachedMessagesIniCloudTip)
  {
    cachedMessagesIniCloudTip = [(CKStoragePlugin *)self cachedMessagesIniCloudTip];
    [cachedMessagesIniCloudTip setActivationPercent:0.0];
  }
}

- (void)_refreshMessageIniCloudTipIfNeeded
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_cachedMessagesIniCloudTip)
  {
    dataModel = [(CKStoragePlugin *)self dataModel];
    cloudKitHooks = [dataModel cloudKitHooks];
    lastSyncDate = [cloudKitHooks lastSyncDate];

    if (lastSyncDate)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = -1.0;
    }

    cachedMessagesIniCloudTip = [(CKStoragePlugin *)self cachedMessagesIniCloudTip];
    *&v8 = v6;
    [cachedMessagesIniCloudTip setActivationPercent:v8];

    dataModel2 = [(CKStoragePlugin *)self dataModel];
    cloudKitHooks2 = [dataModel2 cloudKitHooks];
    isEnabled = [cloudKitHooks2 isEnabled];

    dataModel3 = [(CKStoragePlugin *)self dataModel];
    cloudKitHooks3 = [dataModel3 cloudKitHooks];
    eligibleForTruthZone = [cloudKitHooks3 eligibleForTruthZone];

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = @"NO";
        if (isEnabled)
        {
          v17 = @"YES";
        }

        else
        {
          v17 = @"NO";
        }

        if (eligibleForTruthZone)
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
        if (lastSyncDate)
        {
          v16 = @"YES";
        }

        v26 = 2112;
        v27 = v16;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "_refreshMessageOniCloudTipIfNeeded enabled: %@, eligible: %@, completedSync: %@", &v22, 0x20u);
      }
    }

    if (!lastSyncDate)
    {
      v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"MESSAGES_ON_ICLOUD_TIP_INFO" value:&stru_1F04268F8 table:@"General"];
      cachedMessagesIniCloudTip2 = [(CKStoragePlugin *)self cachedMessagesIniCloudTip];
      [cachedMessagesIniCloudTip2 setInfoText:v20];
    }
  }
}

- (void)_iCloudHooksSetEnabledReturned:(id)returned
{
  returnedCopy = returned;
  cachedMessagesIniCloudTip = [(CKStoragePlugin *)self cachedMessagesIniCloudTip];

  if (cachedMessagesIniCloudTip)
  {
    userInfo = [returnedCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69A5940]];
    bOOLValue = [v7 BOOLValue];

    v9 = IMOSLoggingEnabled();
    if (bOOLValue)
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

      cachedMessagesIniCloudTip2 = [(CKStoragePlugin *)self cachedMessagesIniCloudTip];
      LODWORD(v12) = 1.0;
      [cachedMessagesIniCloudTip2 setActivationPercent:v12];
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