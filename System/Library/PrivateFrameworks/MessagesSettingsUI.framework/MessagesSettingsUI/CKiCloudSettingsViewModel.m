@interface CKiCloudSettingsViewModel
- (BOOL)_isBetweenInitialAndBackfillSync;
- (BOOL)isSyncButtonEnabled;
- (BOOL)isSyncing;
- (BOOL)micAccountsMatch;
- (BOOL)syncSupportsCancellation;
- (CKiCloudSettingsViewModel)init;
- (CKiCloudSettingsViewModelDelegate)delegate;
- (ICQInAppAction)upgradeICloudAction;
- (NSString)footerHyperlinkUrl;
- (NSString)syncButtonText;
- (NSString)syncStatusFooterText;
- (id)_currentKeepMessagesPreference;
- (id)_lastSyncedDateFromDefaults;
- (id)_lastSyncedDateString;
- (id)_stateModelForSyncState:(int64_t)a3;
- (id)captionTextForCaptionTextType:(int64_t)a3;
- (id)valueTextForValueTextType:(int64_t)a3;
- (void)_internalInit;
- (void)_resolveSyncState;
- (void)_syncedSettingsDidChange:(id)a3;
- (void)_updateActionForICQInAppMessage:(id)a3;
- (void)showICloudUpsellIfAvailable;
- (void)stopObservers;
- (void)syncButtonPressed;
@end

@implementation CKiCloudSettingsViewModel

- (CKiCloudSettingsViewModel)init
{
  v5.receiver = self;
  v5.super_class = CKiCloudSettingsViewModel;
  v2 = [(CKiCloudSettingsViewModel *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CKiCloudSettingsViewModel *)v2 _internalInit];
  }

  return v3;
}

- (void)_internalInit
{
  v3 = objc_alloc_init(CKKeepMessagesPreferenceManager);
  keepMessagesPreferenceManager = self->_keepMessagesPreferenceManager;
  self->_keepMessagesPreferenceManager = v3;

  [(CKKeepMessagesPreferenceManager *)self->_keepMessagesPreferenceManager addSyncedSettingObserver:self selector:sel__syncedSettingsDidChange_ key:0];
  objc_initWeak(&location, self);
  v5 = [CKiCloudSettingsSyncController alloc];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __42__CKiCloudSettingsViewModel__internalInit__block_invoke;
  v25[3] = &unk_2798C4AD0;
  objc_copyWeak(&v26, &location);
  v6 = [(CKiCloudSettingsSyncController *)v5 initWithSyncStatusHandler:v25];
  syncController = self->_syncController;
  self->_syncController = v6;

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v9 = getICQCurrentInAppMessageChangedNotificationSymbolLoc_ptr;
  v36 = getICQCurrentInAppMessageChangedNotificationSymbolLoc_ptr;
  if (!getICQCurrentInAppMessageChangedNotificationSymbolLoc_ptr)
  {
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __getICQCurrentInAppMessageChangedNotificationSymbolLoc_block_invoke;
    v31 = &unk_2798C4908;
    v32 = &v33;
    v10 = iCloudQuotaUILibrary();
    v11 = dlsym(v10, "ICQCurrentInAppMessageChangedNotification");
    *(v32[1] + 24) = v11;
    getICQCurrentInAppMessageChangedNotificationSymbolLoc_ptr = *(v32[1] + 24);
    v9 = v34[3];
  }

  _Block_object_dispose(&v33, 8);
  if (v9)
  {
    v12 = *v9;
    v13 = [MEMORY[0x277CCABD8] mainQueue];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __42__CKiCloudSettingsViewModel__internalInit__block_invoke_2;
    v23[3] = &unk_2798C4AF8;
    objc_copyWeak(&v24, &location);
    v14 = [v8 addObserverForName:v12 object:0 queue:v13 usingBlock:v23];
    iCloudMessagingObserverToken = self->_iCloudMessagingObserverToken;
    self->_iCloudMessagingObserverToken = v14;

    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v16 = getICQInAppMessagingClass_softClass;
    v36 = getICQInAppMessagingClass_softClass;
    if (!getICQInAppMessagingClass_softClass)
    {
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __getICQInAppMessagingClass_block_invoke;
      v31 = &unk_2798C4908;
      v32 = &v33;
      __getICQInAppMessagingClass_block_invoke(&v28);
      v16 = v34[3];
    }

    v17 = v16;
    _Block_object_dispose(&v33, 8);
    v18 = [v16 shared];
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v19 = getICQUIMessagePlacementInSettingsAppDetailSymbolLoc_ptr;
    v36 = getICQUIMessagePlacementInSettingsAppDetailSymbolLoc_ptr;
    if (!getICQUIMessagePlacementInSettingsAppDetailSymbolLoc_ptr)
    {
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __getICQUIMessagePlacementInSettingsAppDetailSymbolLoc_block_invoke;
      v31 = &unk_2798C4908;
      v32 = &v33;
      v20 = iCloudQuotaUILibrary();
      v21 = dlsym(v20, "ICQUIMessagePlacementInSettingsAppDetail");
      *(v32[1] + 24) = v21;
      getICQUIMessagePlacementInSettingsAppDetailSymbolLoc_ptr = *(v32[1] + 24);
      v19 = v34[3];
    }

    _Block_object_dispose(&v33, 8);
    if (v19)
    {
      v22 = *v19;
      [v18 observeUpdatesForBundleID:@"com.apple.MobileSMS" placement:v22];

      objc_destroyWeak(&v24);
      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
      return;
    }

    dlerror();
    abort_report_np();
  }

  else
  {
    dlerror();
    abort_report_np();
  }

  __break(1u);
}

void __42__CKiCloudSettingsViewModel__internalInit__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLastEngineSyncState:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _resolveSyncState];
}

void __42__CKiCloudSettingsViewModel__internalInit__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v5 = getICQInAppMessageKeySymbolLoc_ptr;
  v15 = getICQInAppMessageKeySymbolLoc_ptr;
  if (!getICQInAppMessageKeySymbolLoc_ptr)
  {
    v6 = iCloudQuotaUILibrary();
    v13[3] = dlsym(v6, "ICQInAppMessageKey");
    getICQInAppMessageKeySymbolLoc_ptr = v13[3];
    v5 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v5)
  {
    v11 = __42__CKiCloudSettingsViewModel__internalInit__block_invoke_2_cold_1();
    _Block_object_dispose(&v12, 8);
    _Unwind_Resume(v11);
  }

  v7 = [v4 objectForKeyedSubscript:*v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateActionForICQInAppMessage:v7];

  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 setLastInAppMessage:v7];

  v10 = objc_loadWeakRetained((a1 + 32));
  [v10 _resolveSyncState];
}

- (void)stopObservers
{
  [(CKKeepMessagesPreferenceManager *)self->_keepMessagesPreferenceManager removeSyncedSettingObserver:self key:0];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self->_iCloudMessagingObserverToken];

  iCloudMessagingObserverToken = self->_iCloudMessagingObserverToken;
  self->_iCloudMessagingObserverToken = 0;
}

- (void)_syncedSettingsDidChange:(id)a3
{
  v4 = [(CKiCloudSettingsViewModel *)self delegate];
  [v4 iCloudSettingsViewModelDidUpdateState:self];
}

- (id)_stateModelForSyncState:(int64_t)a3
{
  v5 = MEMORY[0x259C9B360](@"com.apple.madrid", @"Server.TotalRecords.messageManateeZone");
  v6 = [v5 unsignedIntegerValue];
  v7 = [(CKiCloudSettingsViewModel *)self _lastSyncedDateFromDefaults];
  v8 = [(CKiCloudSettingsViewModel *)self syncController];
  v9 = [v8 messagesToUploadCount];

  LOBYTE(v8) = [(CKiCloudSettingsViewModel *)self _isBetweenInitialAndBackfillSync];
  v10 = CKiCloudSyncStateBuilder;
  v14[0] = a3;
  v14[1] = v6;
  v14[2] = v9;
  v11 = v7;
  v12 = v11;
  v14[3] = v11;
  v15 = v8;
  if (CKiCloudSyncStateBuilder)
  {
    v10 = [CKiCloudSyncStateBuilder syncModelForDescriptor:v14];
  }

  else
  {
  }

  return v10;
}

- (id)_currentKeepMessagesPreference
{
  v2 = +[CKKeepMessagesPreferenceManager keepMessagesPreference];
  if ([v2 isEqualToNumber:&unk_286A18200])
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = v3;
    v5 = @"KEEP_MESSAGES_FOREVER";
LABEL_7:
    v6 = [v3 localizedStringForKey:v5 value:&stru_286A13F00 table:@"iCloudMessagesSettings"];

    goto LABEL_8;
  }

  if ([v2 isEqualToNumber:&unk_286A18218])
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = v3;
    v5 = @"KEEP_MESSAGES_1MONTH";
    goto LABEL_7;
  }

  if ([v2 isEqualToNumber:&unk_286A18230])
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = v3;
    v5 = @"KEEP_MESSAGES_1YEAR";
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_258D24000, v8, OS_LOG_TYPE_INFO, "Programming error. Keep Messages preference is unknown.", v9, 2u);
    }
  }

  v6 = &stru_286A13F00;
LABEL_8:

  return v6;
}

- (BOOL)isSyncing
{
  v2 = [(CKiCloudSettingsViewModel *)self syncController];
  v3 = [v2 isSyncing];

  return v3;
}

- (BOOL)syncSupportsCancellation
{
  v3 = [(CKiCloudSettingsViewModel *)self isSyncing];
  if (v3)
  {
    LOBYTE(v3) = [(IMCloudKitSyncState *)self->_lastEngineSyncState syncType]== 6;
  }

  return v3;
}

- (BOOL)isSyncButtonEnabled
{
  if (![(CKiCloudSettingsViewModel *)self isSyncing])
  {
    return 1;
  }

  return [(CKiCloudSettingsViewModel *)self syncSupportsCancellation];
}

- (BOOL)micAccountsMatch
{
  v2 = [(CKiCloudSettingsViewModel *)self syncController];
  v3 = [v2 micAccountsMatch];

  return v3;
}

- (void)syncButtonPressed
{
  v3 = [(CKiCloudSettingsViewModel *)self syncController];
  v4 = [v3 isSyncing];

  v5 = [(CKiCloudSettingsViewModel *)self syncController];
  v6 = v5;
  if (v4)
  {
    [v5 cancelCurrentSync];
  }

  else
  {
    [v5 startSync];
  }
}

- (void)showICloudUpsellIfAvailable
{
  v2 = [(CKiCloudSettingsViewModel *)self upgradeICloudAction];
  [v2 performAction];
}

- (void)_updateActionForICQInAppMessage:(id)a3
{
  v9 = a3;
  if (v9 && ([v9 actions], v4 = objc_claimAutoreleasedReturnValue(), v4, v4) && (objc_msgSend(v9, "actions"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6 == 1))
  {
    v7 = [v9 actions];
    v8 = [v7 objectAtIndexedSubscript:0];
    [(CKiCloudSettingsViewModel *)self setUpgradeICloudAction:v8];
  }

  else
  {
    [(CKiCloudSettingsViewModel *)self setUpgradeICloudAction:0];
  }
}

- (NSString)syncStatusFooterText
{
  v3 = MEMORY[0x259C9B360](@"com.apple.madrid", @"ShowDebugSummary");
  if ([v3 BOOLValue])
  {
    [(CKiCloudSettingsSyncController *)self->_syncController syncSummary];
  }

  else
  {
    [(CKiCloudSyncStateModel *)self->_syncStateModel syncStatusFooterText];
  }
  v4 = ;

  return v4;
}

- (id)_lastSyncedDateString
{
  v2 = [(CKiCloudSyncStateModel *)self->_syncStateModel lastSyncedDateString];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_286A13F00;
  }

  v5 = v4;

  return v4;
}

- (id)_lastSyncedDateFromDefaults
{
  v2 = MEMORY[0x259C9B360](@"com.apple.madrid", *MEMORY[0x277D199B0]);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:*MEMORY[0x277D19B08]];
    if (v4)
    {
      v5 = [v3 objectForKey:*MEMORY[0x277D19C40]];
      v6 = v5;
      if (v5)
      {
        v7 = MEMORY[0x277CBEAA8];
        [v5 doubleValue];
        v8 = [v7 dateWithTimeIntervalSince1970:?];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_isBetweenInitialAndBackfillSync
{
  v2 = MEMORY[0x259C9B360](@"com.apple.madrid", *MEMORY[0x277D199B0]);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:*MEMORY[0x277D19B28]];
    v5 = [v3 objectForKey:*MEMORY[0x277D19B08]];
    if (v4)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)footerHyperlinkUrl
{
  v2 = [(CKiCloudSyncStateModel *)self->_syncStateModel syncState]- 3;
  if (v2 < 4)
  {
    return &off_2798C4B30[v2]->isa;
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_258D24000, v4, OS_LOG_TYPE_INFO, "Tried to get a footer hyperlink URL for an unsupported Sync State. Programmer error.", v5, 2u);
    }
  }

  return 0;
}

- (void)_resolveSyncState
{
  v3 = self->_lastEngineSyncState;
  v4 = self->_lastInAppMessage;
  v5 = [(CKiCloudSettingsViewModel *)self syncController];
  v6 = [v5 isMiCEnabled];

  v7 = [(CKiCloudSettingsViewModel *)self syncController];
  v8 = [v7 micAccountsMatch];

  v9 = 6;
  if (v8)
  {
    v9 = 0;
  }

  v10 = v8 | ~v6;
  if (v6)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if ((v10 & 1) != 0 && v3)
  {
    v12 = [(IMCloudKitSyncState *)v3 syncJobState]- 1;
    if (v12 < 5)
    {
      v11 = qword_258D58CF8[v12];
      goto LABEL_40;
    }

    v11 = 0;
  }

  if (!v11 && v4)
  {
    v13 = [(ICQInAppMessage *)v4 reason];
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v14 = getICQUIInAppMessageReasonServerUnreachableSymbolLoc_ptr;
    v31 = getICQUIInAppMessageReasonServerUnreachableSymbolLoc_ptr;
    if (!getICQUIInAppMessageReasonServerUnreachableSymbolLoc_ptr)
    {
      v15 = iCloudQuotaUILibrary();
      v29[3] = dlsym(v15, "ICQUIInAppMessageReasonServerUnreachable");
      getICQUIInAppMessageReasonServerUnreachableSymbolLoc_ptr = v29[3];
      v14 = v29[3];
    }

    _Block_object_dispose(&v28, 8);
    if (v14)
    {
      if ([v13 isEqualToString:*v14])
      {
        v11 = 3;
LABEL_39:

        goto LABEL_40;
      }

      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v16 = getICQUIInAppMessageReasonAirplaneModeOnSymbolLoc_ptr;
      v31 = getICQUIInAppMessageReasonAirplaneModeOnSymbolLoc_ptr;
      if (!getICQUIInAppMessageReasonAirplaneModeOnSymbolLoc_ptr)
      {
        v17 = iCloudQuotaUILibrary();
        v29[3] = dlsym(v17, "ICQUIInAppMessageReasonAirplaneModeOn");
        getICQUIInAppMessageReasonAirplaneModeOnSymbolLoc_ptr = v29[3];
        v16 = v29[3];
      }

      _Block_object_dispose(&v28, 8);
      if (v16)
      {
        if ([v13 isEqualToString:*v16])
        {
          v11 = 4;
          goto LABEL_39;
        }

        v28 = 0;
        v29 = &v28;
        v30 = 0x2020000000;
        v18 = getICQUIInAppMessageReasonCellularDataOffSymbolLoc_ptr;
        v31 = getICQUIInAppMessageReasonCellularDataOffSymbolLoc_ptr;
        if (!getICQUIInAppMessageReasonCellularDataOffSymbolLoc_ptr)
        {
          v19 = iCloudQuotaUILibrary();
          v29[3] = dlsym(v19, "ICQUIInAppMessageReasonCellularDataOff");
          getICQUIInAppMessageReasonCellularDataOffSymbolLoc_ptr = v29[3];
          v18 = v29[3];
        }

        _Block_object_dispose(&v28, 8);
        if (v18)
        {
          if ([v13 isEqualToString:*v18])
          {
            v11 = 5;
            goto LABEL_39;
          }

          v28 = 0;
          v29 = &v28;
          v30 = 0x2020000000;
          v20 = getICQUIInAppMessageReasoniCloudAlmostFullSymbolLoc_ptr;
          v31 = getICQUIInAppMessageReasoniCloudAlmostFullSymbolLoc_ptr;
          if (!getICQUIInAppMessageReasoniCloudAlmostFullSymbolLoc_ptr)
          {
            v21 = iCloudQuotaUILibrary();
            v29[3] = dlsym(v21, "ICQUIInAppMessageReasoniCloudAlmostFull");
            getICQUIInAppMessageReasoniCloudAlmostFullSymbolLoc_ptr = v29[3];
            v20 = v29[3];
          }

          _Block_object_dispose(&v28, 8);
          if (v20)
          {
            if ([v13 isEqualToString:*v20])
            {
              v11 = 7;
              goto LABEL_39;
            }

            v28 = 0;
            v29 = &v28;
            v30 = 0x2020000000;
            v22 = getICQUIInAppMessageReasoniCloudFullSymbolLoc_ptr;
            v31 = getICQUIInAppMessageReasoniCloudFullSymbolLoc_ptr;
            if (!getICQUIInAppMessageReasoniCloudFullSymbolLoc_ptr)
            {
              v23 = iCloudQuotaUILibrary();
              v29[3] = dlsym(v23, "ICQUIInAppMessageReasoniCloudFull");
              getICQUIInAppMessageReasoniCloudFullSymbolLoc_ptr = v29[3];
              v22 = v29[3];
            }

            _Block_object_dispose(&v28, 8);
            if (v22)
            {
              if ([v13 isEqualToString:*v22])
              {
                v11 = 8;
              }

              else
              {
                v11 = 0;
              }

              goto LABEL_39;
            }

LABEL_45:
            v27 = __42__CKiCloudSettingsViewModel__internalInit__block_invoke_2_cold_1();
            _Block_object_dispose(&v28, 8);
            _Unwind_Resume(v27);
          }

LABEL_44:
          __42__CKiCloudSettingsViewModel__internalInit__block_invoke_2_cold_1();
          goto LABEL_45;
        }

LABEL_43:
        __42__CKiCloudSettingsViewModel__internalInit__block_invoke_2_cold_1();
        goto LABEL_44;
      }
    }

    else
    {
      __42__CKiCloudSettingsViewModel__internalInit__block_invoke_2_cold_1();
    }

    __42__CKiCloudSettingsViewModel__internalInit__block_invoke_2_cold_1();
    goto LABEL_43;
  }

LABEL_40:
  self->_resolvedSyncState = v11;
  v24 = [(CKiCloudSettingsViewModel *)self _stateModelForSyncState:v11];
  syncStateModel = self->_syncStateModel;
  self->_syncStateModel = v24;

  v26 = [(CKiCloudSettingsViewModel *)self delegate];
  [v26 iCloudSettingsViewModelDidUpdateState:self];
}

- (id)captionTextForCaptionTextType:(int64_t)a3
{
  if (a3 <= 6)
  {
    v4 = off_2798C4B50[a3];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v5 localizedStringForKey:v4 value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  }

  return v3;
}

- (id)valueTextForValueTextType:(int64_t)a3
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v3 = [(CKiCloudSettingsViewModel *)self syncStatus];
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_11;
      }

      v3 = [(CKiCloudSettingsViewModel *)self _lastSyncedDateString];
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_11;
    }

    v3 = [(CKiCloudSettingsViewModel *)self keepMessagesPreference];
  }

  else
  {
    v3 = [(CKiCloudSettingsViewModel *)self messagesInCloudCount];
  }

  a2 = v3;
LABEL_11:

  return a2;
}

- (NSString)syncButtonText
{
  if ([(CKiCloudSettingsViewModel *)self syncSupportsCancellation])
  {
    v3 = [(CKiCloudSettingsViewModel *)self isSyncing];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = v4;
    if (v3)
    {
      v6 = @"CANCEL_SYNCING";
    }

    else
    {
      v6 = @"SYNC_NOW";
    }
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"SYNC_NOW";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_286A13F00 table:@"iCloudMessagesSettings"];

  return v7;
}

- (ICQInAppAction)upgradeICloudAction
{
  WeakRetained = objc_loadWeakRetained(&self->_upgradeICloudAction);

  return WeakRetained;
}

- (CKiCloudSettingsViewModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

uint64_t __42__CKiCloudSettingsViewModel__internalInit__block_invoke_2_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return __getICQInAppMessagingClass_block_invoke_cold_1(v0);
}

@end