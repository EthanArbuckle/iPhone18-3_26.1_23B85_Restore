@interface CKiCloudSettingsSyncController
- (BOOL)isMiCEnabled;
- (BOOL)micAccountsMatch;
- (CKiCloudSettingsSyncController)initWithSyncStatusHandler:(id)handler;
- (id)_syncSummaryForSyncState:(id)state;
- (void)_prepareForInitialSyncState;
- (void)_wrapperInit;
- (void)cancelCurrentSync;
- (void)cloudKitEventNotificationManager:(id)manager syncStateDidChange:(id)change;
- (void)startSync;
@end

@implementation CKiCloudSettingsSyncController

- (CKiCloudSettingsSyncController)initWithSyncStatusHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = CKiCloudSettingsSyncController;
  v5 = [(CKiCloudSettingsSyncController *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x259C9B8B0](handlerCopy);
    syncStatusHandler = v5->_syncStatusHandler;
    v5->_syncStatusHandler = v6;

    [(CKiCloudSettingsSyncController *)v5 _wrapperInit];
  }

  return v5;
}

- (void)_wrapperInit
{
  mEMORY[0x277D18D58] = [MEMORY[0x277D18D58] sharedInstance];
  [mEMORY[0x277D18D58] setupIMCloudKitHooks];

  mEMORY[0x277D18D50] = [MEMORY[0x277D18D50] sharedInstance];
  [mEMORY[0x277D18D50] addEventHandler:self];

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_258D24000, v5, OS_LOG_TYPE_INFO, "Sync controller did finish configuring IMCloudKit hooks.", v6, 2u);
    }
  }

  [(CKiCloudSettingsSyncController *)self _prepareForInitialSyncState];
}

- (void)_prepareForInitialSyncState
{
  v15 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D18D58] = [MEMORY[0x277D18D58] sharedInstance];
  isSyncing = [mEMORY[0x277D18D58] isSyncing];

  [(CKiCloudSettingsSyncController *)self setSyncing:isSyncing];
  [(CKiCloudSettingsSyncController *)self setMessagesToUploadCount:0];
  mEMORY[0x277D18D50] = [MEMORY[0x277D18D50] sharedInstance];
  accountHasiMessageEnabled = [mEMORY[0x277D18D50] accountHasiMessageEnabled];

  v7 = IMCloudKitGetSyncStateDictionary();
  v8 = [objc_alloc(MEMORY[0x277D18D60]) initWithAccountEnabled:accountHasiMessageEnabled stateDictionary:v7];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      [v8 syncJobState];
      v10 = IMStringFromIMCloudKitSyncJobState();
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_258D24000, v9, OS_LOG_TYPE_INFO, "Preparing UI for initial sync state - syncJobState={%@}.", &v13, 0xCu);
    }
  }

  syncStatusHandler = [(CKiCloudSettingsSyncController *)self syncStatusHandler];
  (syncStatusHandler)[2](syncStatusHandler, v8);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)startSync
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Messages"];
  v3 = [v2 objectForKey:@"hasFinishedNewDeviceBringUpSync"];
  bOOLValue = [v3 BOOLValue];
  v5 = @"Initial";
  if (bOOLValue)
  {
    v5 = @"UserInitiated";
  }

  v6 = v5;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_258D24000, v7, OS_LOG_TYPE_INFO, "Attempting to start {%@} sync now.", &v10, 0xCu);
    }
  }

  mEMORY[0x277D18D58] = [MEMORY[0x277D18D58] sharedInstance];
  [mEMORY[0x277D18D58] initiateSync:v6 forceRunNow:1 reply:&__block_literal_global_1];

  v9 = *MEMORY[0x277D85DE8];
}

void __43__CKiCloudSettingsSyncController_startSync__block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (a2)
      {
        v6 = @"YES";
      }

      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_258D24000, v5, OS_LOG_TYPE_INFO, "Initiate sync replied with success={%@}", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)cancelCurrentSync
{
  if (![(CKiCloudSettingsSyncController *)self isSyncing]&& IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_258D24000, v2, OS_LOG_TYPE_INFO, "Tried to cancel a sync via UI, but we are not syncing. Programming error.", buf, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_258D24000, v3, OS_LOG_TYPE_INFO, "Attempting to cancelling ongoing sync.", v5, 2u);
    }
  }

  mEMORY[0x277D18D58] = [MEMORY[0x277D18D58] sharedInstance];
  [mEMORY[0x277D18D58] cancelSync:&__block_literal_global_56];
}

void __51__CKiCloudSettingsSyncController_cancelCurrentSync__block_invoke(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = IMStringFromIMCloudKitSyncType();
      v5 = v4;
      v6 = @"NO";
      if (a2)
      {
        v6 = @"YES";
      }

      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_258D24000, v3, OS_LOG_TYPE_INFO, "Canceling {%@} sync. success={%@}", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)isMiCEnabled
{
  mEMORY[0x277D18D58] = [MEMORY[0x277D18D58] sharedInstance];
  isEnabled = [mEMORY[0x277D18D58] isEnabled];

  return isEnabled;
}

- (BOOL)micAccountsMatch
{
  mEMORY[0x277D18D58] = [MEMORY[0x277D18D58] sharedInstance];
  mocAccountsMatch = [mEMORY[0x277D18D58] mocAccountsMatch];

  return mocAccountsMatch;
}

- (void)cloudKitEventNotificationManager:(id)manager syncStateDidChange:(id)change
{
  v26 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  changeCopy = change;
  syncStatusHandler = [(CKiCloudSettingsSyncController *)self syncStatusHandler];

  if (syncStatusHandler)
  {
    statistics = [changeCopy statistics];
    remainingMessagesCount = [statistics remainingMessagesCount];
    syncJobState = [changeCopy syncJobState];
    v12 = IMStringFromIMCloudKitSyncJobState();
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = @"NO";
        *v19 = 138413058;
        if (syncJobState)
        {
          v14 = @"YES";
        }

        *&v19[4] = v14;
        v20 = 2112;
        v21 = v12;
        v22 = 2112;
        v23 = statistics;
        v24 = 2048;
        v25 = remainingMessagesCount;
        _os_log_impl(&dword_258D24000, v13, OS_LOG_TYPE_INFO, "syncStateDidChange – syncing={%@}, jobState={%@}, syncStatistics={%@}, messagesToUpload={%ld}", v19, 0x2Au);
      }
    }

    [(CKiCloudSettingsSyncController *)self setSyncing:syncJobState != 0, *v19];
    [(CKiCloudSettingsSyncController *)self setMessagesToUploadCount:remainingMessagesCount];
    v15 = [(CKiCloudSettingsSyncController *)self _syncSummaryForSyncState:changeCopy];
    [(CKiCloudSettingsSyncController *)self setSyncSummary:v15];

    syncStatusHandler2 = [(CKiCloudSettingsSyncController *)self syncStatusHandler];
    (syncStatusHandler2)[2](syncStatusHandler2, changeCopy);
  }

  else if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&dword_258D24000, v17, OS_LOG_TYPE_INFO, "No callback block provided for syncStateDidChange. Programmer error.", v19, 2u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_syncSummaryForSyncState:(id)state
{
  [state syncJobState];
  v3 = IMStringFromIMCloudKitSyncJobState();
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[Internal]\nSync Job State:\n%@", v3];

  return v4;
}

@end