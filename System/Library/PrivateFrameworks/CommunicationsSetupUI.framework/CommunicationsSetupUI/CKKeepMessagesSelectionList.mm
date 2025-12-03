@interface CKKeepMessagesSelectionList
- (CKKeepMessagesSelectionList)init;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_configureInitialSelectedIndexes;
- (void)_internalInit;
- (void)_selectionListDidSelectIndexPath:(id)path;
- (void)_updatePreferenceAtIndexPath:(id)path;
- (void)_warnAboutDeletingMessagesForSelectedListItem:(id)item;
- (void)_warnForFinalConfirmationForUpdatingIndexPath:(id)path;
- (void)dealloc;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateKeepMessagesPreference:(id)preference;
@end

@implementation CKKeepMessagesSelectionList

- (CKKeepMessagesSelectionList)init
{
  v5.receiver = self;
  v5.super_class = CKKeepMessagesSelectionList;
  v2 = [(CKKeepMessagesSelectionList *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CKKeepMessagesSelectionList *)v2 _internalInit];
  }

  return v3;
}

- (void)_internalInit
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(CKKeepMessagesPreferenceManager);
  keepMessagesPreferenceManager = self->_keepMessagesPreferenceManager;
  self->_keepMessagesPreferenceManager = v3;

  v5 = MessagesSettingsLocalizedString(@"KEEP_MESSAGES_1MONTH");
  v13 = v5;
  v6 = MessagesSettingsLocalizedString(@"KEEP_MESSAGES_1YEAR");
  v14 = v6;
  v7 = MessagesSettingsLocalizedString(@"KEEP_MESSAGES_FOREVER");
  v15 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:3];
  durationPreferenceTitles = self->_durationPreferenceTitles;
  self->_durationPreferenceTitles = v8;

  durationPreferenceValues = self->_durationPreferenceValues;
  self->_durationPreferenceValues = &unk_2856EB928;

  [(CKKeepMessagesSelectionList *)self _configureInitialSelectedIndexes:v13];
  keepMessagesPreferenceManager = [(CKKeepMessagesSelectionList *)self keepMessagesPreferenceManager];
  [keepMessagesPreferenceManager addSyncedSettingObserver:self selector:sel__syncedSettingsDidChange_ key:0];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  keepMessagesPreferenceManager = [(CKKeepMessagesSelectionList *)self keepMessagesPreferenceManager];
  [keepMessagesPreferenceManager removeSyncedSettingObserver:self key:0];

  v4.receiver = self;
  v4.super_class = CKKeepMessagesSelectionList;
  [(CKKeepMessagesSelectionList *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v21 = *MEMORY[0x277D3FC48];
    array = [MEMORY[0x277CBEB18] array];
    v5 = MessagesSettingsLocalizedString(@"KEEP_ALL_MESSAGES_HEADER");
    v6 = MessagesSettingsLocalizedString(@"KEEP_ALL_MESSAGES_FOOTER");
    v7 = 0x277D3F000uLL;
    v8 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ALL_MESSAGES_GROUP"];
    v20 = v5;
    [v8 setName:v5];
    [v8 setProperty:v6 forKey:*MEMORY[0x277D3FF88]];
    v19 = v8;
    [array addObject:v8];
    if ([(NSArray *)self->_durationPreferenceTitles count])
    {
      v9 = 0;
      do
      {
        v10 = [(NSArray *)self->_durationPreferenceTitles objectAtIndexedSubscript:v9];
        [*(v7 + 2776) preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:3 edit:0];
        v12 = v11 = v7;
        v13 = MEMORY[0x277CCACA8];
        v14 = [(NSArray *)self->_durationPreferenceValues objectAtIndexedSubscript:v9];
        v15 = [v13 stringWithFormat:@"%ld", objc_msgSend(v14, "integerValue")];

        [v12 setIdentifier:v15];
        [array addObject:v12];

        v7 = v11;
        ++v9;
      }

      while ([(NSArray *)self->_durationPreferenceTitles count]> v9);
    }

    v16 = [array copy];
    v17 = *(&self->super.super.super.super.super.isa + v21);
    *(&self->super.super.super.super.super.isa + v21) = v16;

    v3 = *(&self->super.super.super.super.super.isa + v21);
  }

  return v3;
}

- (void)_configureInitialSelectedIndexes
{
  v5 = +[CKKeepMessagesPreferenceManager keepMessagesPreference];
  durationPreferenceValues = [(CKKeepMessagesSelectionList *)self durationPreferenceValues];
  v4 = [durationPreferenceValues indexOfObject:v5];

  self->_selectedKeepMessagesPreferenceIndex = v4;
}

- (void)_selectionListDidSelectIndexPath:(id)path
{
  v18 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  section = [pathCopy section];
  v6 = [pathCopy row];
  if (!section)
  {
    v8 = v6;
    selectedKeepMessagesPreferenceIndex = [(CKKeepMessagesSelectionList *)self selectedKeepMessagesPreferenceIndex];
    if (v8 >= selectedKeepMessagesPreferenceIndex)
    {
      [(CKKeepMessagesSelectionList *)self _updatePreferenceAtIndexPath:pathCopy];
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_15;
      }

      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 134218496;
        v13 = selectedKeepMessagesPreferenceIndex;
        v14 = 2048;
        v15 = v8;
        v16 = 2048;
        v17 = 0;
        _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_INFO, "[Conference] Immediately updating preference for duration change (%ld -> %ld) in section={%ld}", &v12, 0x20u);
      }
    }

    else
    {
      [(CKKeepMessagesSelectionList *)self _warnAboutDeletingMessagesForSelectedListItem:pathCopy];
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_15;
      }

      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 134218496;
        v13 = selectedKeepMessagesPreferenceIndex;
        v14 = 2048;
        v15 = v8;
        v16 = 2048;
        v17 = 0;
        _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_INFO, "[Conference] Showing alert about dataloss from duration change (row %ld -> %ld) in section={%ld}", &v12, 0x20u);
      }
    }

    goto LABEL_15;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = 134217984;
      v13 = [pathCopy row];
      _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_INFO, "[Conference] Selected an indexPath from an unsupported section={%ld}", &v12, 0xCu);
    }
  }

LABEL_15:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_updatePreferenceAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  durationPreferenceValues = [(CKKeepMessagesSelectionList *)self durationPreferenceValues];
  v9 = [durationPreferenceValues objectAtIndexedSubscript:v5];

  section = [pathCopy section];
  if (!section)
  {
    [(CKKeepMessagesSelectionList *)self updateKeepMessagesPreference:v9];
    durationPreferenceValues2 = [(CKKeepMessagesSelectionList *)self durationPreferenceValues];
    self->_selectedKeepMessagesPreferenceIndex = [durationPreferenceValues2 indexOfObject:v9];

    [(CKKeepMessagesSelectionList *)self reloadSpecifiers];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [(CKKeepMessagesSelectionList *)self _selectionListDidSelectIndexPath:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];

  [(CKKeepMessagesSelectionList *)self reloadSpecifiers];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = CKKeepMessagesSelectionList;
  v7 = [(CKKeepMessagesSelectionList *)&v9 tableView:view cellForRowAtIndexPath:pathCopy];
  if (![pathCopy section])
  {
    [v7 setChecked:{objc_msgSend(pathCopy, "row") == -[CKKeepMessagesSelectionList selectedKeepMessagesPreferenceIndex](self, "selectedKeepMessagesPreferenceIndex")}];
  }

  return v7;
}

- (void)_warnAboutDeletingMessagesForSelectedListItem:(id)item
{
  itemCopy = item;
  if ([itemCopy row])
  {
    v5 = @"DELETE_MESSAGES_WARNING_YEAR";
  }

  else
  {
    v5 = @"DELETE_MESSAGES_WARNING_MONTH";
  }

  v6 = MadridLocalizedString(v5);
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D750F8];
  v8 = MadridLocalizedString(@"FACETIME_ALERT_CANCEL");
  v9 = [v7 actionWithTitle:v8 style:1 handler:0];

  v10 = MEMORY[0x277D750F8];
  v11 = MadridLocalizedString(@"FACETIME_ALERT_DELETE");
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __77__CKKeepMessagesSelectionList__warnAboutDeletingMessagesForSelectedListItem___block_invoke;
  v27[3] = &unk_278DE8A18;
  objc_copyWeak(&v29, &location);
  v12 = itemCopy;
  v28 = v12;
  v13 = [v10 actionWithTitle:v11 style:2 handler:v27];

  v14 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:v6 preferredStyle:0];
  [v14 addAction:v9];
  [v14 addAction:v13];
  table = [(CKKeepMessagesSelectionList *)self table];
  v16 = [table cellForRowAtIndexPath:v12];

  popoverPresentationController = [v14 popoverPresentationController];
  [popoverPresentationController setSourceView:v16];

  [v16 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  popoverPresentationController2 = [v14 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v19, v21, v23, v25}];

  [(CKKeepMessagesSelectionList *)self presentViewController:v14 animated:1 completion:0];
  objc_destroyWeak(&v29);

  objc_destroyWeak(&location);
}

void __77__CKKeepMessagesSelectionList__warnAboutDeletingMessagesForSelectedListItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_INFO, "[Conference] Delete tapped. Going to show secondary confirmation alert.", v6, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _warnForFinalConfirmationForUpdatingIndexPath:*(a1 + 32)];
}

- (void)_warnForFinalConfirmationForUpdatingIndexPath:(id)path
{
  pathCopy = path;
  mEMORY[0x277D18D58] = [MEMORY[0x277D18D58] sharedInstance];
  isEnabled = [mEMORY[0x277D18D58] isEnabled];

  if (isEnabled)
  {
    v7 = @"ALL_DEVICES";
  }

  else
  {
    v7 = @"THIS_DEVICE";
  }

  v8 = MadridLocalizedString(v7);
  v9 = [pathCopy row];
  v10 = v9 == 0;
  if (v9)
  {
    v11 = @"ARE_YOU_SURE_YOU_WANT_TO_DELETE_MESSAGES_OLDER_THAN_1_YEAR";
  }

  else
  {
    v11 = @"ARE_YOU_SURE_YOU_WANT_TO_DELETE_MESSAGES_OLDER_THAN_30_DAYS";
  }

  if (v10)
  {
    v12 = @"PERMANENTLY_DELETE_MESSAGES_OLDER_THAN_30_DAYS_FROM_%@";
  }

  else
  {
    v12 = @"PERMANENTLY_DELETE_MESSAGES_OLDER_THAN_1_YEAR_FROM_%@";
  }

  v35 = MadridLocalizedString(v11);
  v13 = MadridLocalizedString(v12);
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:v13, v8];

  objc_initWeak(&location, self);
  v15 = MEMORY[0x277D750F8];
  v16 = MadridLocalizedString(@"FACETIME_ALERT_CANCEL");
  v17 = [v15 actionWithTitle:v16 style:1 handler:0];

  v18 = MEMORY[0x277D750F8];
  v19 = MadridLocalizedString(@"DELETE_OLDER_MESSAGES");
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __77__CKKeepMessagesSelectionList__warnForFinalConfirmationForUpdatingIndexPath___block_invoke;
  v36[3] = &unk_278DE8A18;
  objc_copyWeak(&v38, &location);
  v20 = pathCopy;
  v37 = v20;
  v21 = [v18 actionWithTitle:v19 style:2 handler:v36];

  v22 = [MEMORY[0x277D75110] alertControllerWithTitle:v35 message:v14 preferredStyle:1];
  [v22 addAction:v17];
  [v22 addAction:v21];
  table = [(CKKeepMessagesSelectionList *)self table];
  v24 = [table cellForRowAtIndexPath:v20];

  popoverPresentationController = [v22 popoverPresentationController];
  [popoverPresentationController setSourceView:v24];

  [v24 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  popoverPresentationController2 = [v22 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v27, v29, v31, v33}];

  [(CKKeepMessagesSelectionList *)self presentViewController:v22 animated:1 completion:0];
  objc_destroyWeak(&v38);

  objc_destroyWeak(&location);
}

void __77__CKKeepMessagesSelectionList__warnForFinalConfirmationForUpdatingIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_INFO, "[Conference] Confirmed duration change in alert. Updating.", v6, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updatePreferenceAtIndexPath:*(a1 + 32)];

  notify_post("com.apple.imautomatichistorydeletionagent.prefchange");
}

- (void)updateKeepMessagesPreference:(id)preference
{
  preferenceCopy = preference;
  keepMessagesPreferenceManager = [(CKKeepMessagesSelectionList *)self keepMessagesPreferenceManager];
  [keepMessagesPreferenceManager updateKeepMessagesPreference:preferenceCopy];
}

@end