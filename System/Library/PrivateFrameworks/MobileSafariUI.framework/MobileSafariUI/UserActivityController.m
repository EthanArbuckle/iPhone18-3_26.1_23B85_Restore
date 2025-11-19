@interface UserActivityController
- (BOOL)continueUserActivity:(id)a3;
- (BOOL)willContinueUserActivityWithType:(id)a3;
- (BrowserController)browserController;
- (TabDocument)tabDocumentPendingUserActivityPayload;
- (UserActivityController)initWithBrowserController:(id)a3;
- (id)_tabDocumentWithURL:(id)a3;
- (void)_invalidateTabCreationDelayTimer;
- (void)_prepareTabDocumentForNewUserActivity;
- (void)_prepareTabDocumentForNewUserActivityWithDelay:(double)a3;
- (void)didFailToContinueUserActivityWithType:(id)a3 error:(id)a4;
- (void)setTabDocumentPendingUserActivityPayload:(id)a3;
@end

@implementation UserActivityController

- (TabDocument)tabDocumentPendingUserActivityPayload
{
  WeakRetained = objc_loadWeakRetained(&self->_tabDocumentPendingUserActivityPayload);

  return WeakRetained;
}

- (UserActivityController)initWithBrowserController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UserActivityController;
  v5 = [(UserActivityController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_browserController, v4);
    v7 = v6;
  }

  return v6;
}

- (void)setTabDocumentPendingUserActivityPayload:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_tabDocumentPendingUserActivityPayload);
  if (WeakRetained != obj)
  {
    [WeakRetained doneWaitingToContinueUserActivity];
    objc_storeWeak(&self->_tabDocumentPendingUserActivityPayload, obj);
    [obj prepareToContinueUserActivity];
    [obj updateTabTitle];
  }
}

- (BOOL)willContinueUserActivityWithType:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXContinuity();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v13 = v4;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_INFO, "Will continue user activity with type: %{public}@", buf, 0xCu);
  }

  v6 = *MEMORY[0x277CCA850];
  v7 = *MEMORY[0x277CDB9F8];
  v11[0] = *MEMORY[0x277CCA850];
  v11[1] = v7;
  v11[2] = *MEMORY[0x277CDB978];
  v11[3] = @"OpenURLsIntent";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  v9 = [v8 containsObject:v4];
  if (v9 && [v4 isEqualToString:v6])
  {
    [(UserActivityController *)self _prepareTabDocumentForNewUserActivityWithDelay:0.02];
  }

  return v9;
}

- (BOOL)continueUserActivity:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXContinuity();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [v4 activityType];
    *buf = 138543362;
    v43 = v7;
    _os_log_impl(&dword_215819000, v6, OS_LOG_TYPE_INFO, "Continue user activity with type: %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v9 = [v4 activityType];
  if (![v9 isEqualToString:*MEMORY[0x277CDB9F8]])
  {
    if ([v9 isEqualToString:*MEMORY[0x277CDB978]])
    {
      v14 = [MEMORY[0x277D499B8] sharedLogger];
      [v14 didContinueUserActivityOfType:1];

      v11 = [WeakRetained shortcutController];
      v12 = v11;
      v13 = MEMORY[0x277CDBA00];
      goto LABEL_7;
    }

    v12 = [v4 interaction];
    v16 = [MEMORY[0x277D499B8] sharedLogger];
    v17 = v16;
    if (v12)
    {
      [v16 didContinueUserActivityOfType:2];

      v18 = [(_SFNavigationIntent *)MEMORY[0x277D28F38] safari_navigationIntentForUserActivityContainingInteraction:v4];
      v19 = WBS_LOG_CHANNEL_PREFIXContinuity();
      v20 = v19;
      if (v18)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v20;
          v22 = [v18 privacyPreservingDescription];
          *buf = 138543362;
          v43 = v22;
          _os_log_impl(&dword_215819000, v21, OS_LOG_TYPE_DEFAULT, "Continuing user activity for OpenURLsIntent using intent: %{public}@", buf, 0xCu);
        }

        [WeakRetained dispatchNavigationIntent:v18];
        LOBYTE(v15) = 1;
      }

      else
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          [(UserActivityController *)v9 continueUserActivity:v20, v12];
        }

        LOBYTE(v15) = 0;
      }

      goto LABEL_39;
    }

    [v16 didContinueUserActivityOfType:3];

    v23 = +[Application sharedApplication];
    v18 = [v23 systemNoteTakingController];

    v24 = [v18 userActivityForNoteTaking:v4];
    if (v24)
    {
      v25 = [v4 webpageURL];
      if ([v25 safari_isHTTPFamilyURL])
      {
        v26 = [(UserActivityController *)self _tabDocumentWithURL:v25];
        if (v26)
        {
          v27 = v26;
          [v26 setUserActivityFromNotes:v24];
          v28 = [WeakRetained tabController];
          [v28 setActiveTabDocument:v27 animated:0];

          [v27 applyHighlightFromNotesIfNeeded];
          [v27 restoreAllHighlightsData];
          [(UserActivityController *)self _invalidateTabCreationDelayTimer];
          goto LABEL_26;
        }
      }
    }

    [(UserActivityController *)self _prepareTabDocumentForNewUserActivityWithDelay:0.0];
    v25 = objc_loadWeakRetained(&self->_tabDocumentPendingUserActivityPayload);
    if (!v25 || (-[UserActivityController setTabDocumentPendingUserActivityPayload:](self, "setTabDocumentPendingUserActivityPayload:", 0), ([v25 isClosed] & 1) != 0))
    {
      LOBYTE(v15) = 1;
LABEL_38:

LABEL_39:
      goto LABEL_40;
    }

    v29 = objc_alloc(MEMORY[0x277D49EB8]);
    v30 = [v4 userInfo];
    v27 = [v29 initWithDictionaryFromUserActivityUserInfo:v30];

    if (!v27)
    {
      v33 = [v4 webpageURL];
      v15 = [v33 safari_isHTTPFamilyURL];
      if (v15)
      {
        [v25 setUserActivityFromNotes:v24];
        if ([v25 isHibernated])
        {
          [v25 unhibernate];
        }

        logc = [v33 safari_originalDataAsString];
        [v25 progressState];
        v34 = v37 = v33;
        [v34 setLoadURL:logc];

        v33 = v37;
        v35 = [v25 loadURL:v37 userDriven:1];
      }

      else
      {
        log = WBS_LOG_CHANNEL_PREFIXContinuity();
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          [UserActivityController continueUserActivity:?];
        }

        loga = WBS_LOG_CHANNEL_PREFIXContinuity();
        if (os_log_type_enabled(loga, OS_LOG_TYPE_DEBUG))
        {
          [(UserActivityController *)loga continueUserActivity:v4];
        }

        [v25 didFailToContinueUserActivity];
      }

      goto LABEL_37;
    }

    logb = [v27 url];
    v31 = [logb safari_originalDataAsString];
    v32 = [v25 progressState];
    [v32 setLoadURL:v31];

    [v25 loadCloudTab:v27];
LABEL_26:
    LOBYTE(v15) = 1;
LABEL_37:

    goto LABEL_38;
  }

  v10 = [MEMORY[0x277D499B8] sharedLogger];
  [v10 didContinueUserActivityOfType:0];

  v11 = [WeakRetained shortcutController];
  v12 = v11;
  v13 = MEMORY[0x277CDBA18];
LABEL_7:
  LOBYTE(v15) = [v11 handleActionWithType:*v13];
LABEL_40:

  return v15;
}

- (void)didFailToContinueUserActivityWithType:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = WBS_LOG_CHANNEL_PREFIXContinuity();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(UserActivityController *)v6 didFailToContinueUserActivityWithType:v8 error:v7];
  }

  WeakRetained = objc_loadWeakRetained(&self->_tabDocumentPendingUserActivityPayload);
  [WeakRetained didFailToContinueUserActivity];

  [(UserActivityController *)self setTabDocumentPendingUserActivityPayload:0];
  [(UserActivityController *)self _invalidateTabCreationDelayTimer];
}

- (id)_tabDocumentWithURL:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v6 = [WeakRetained tabController];
  v7 = [v6 currentTabDocuments];

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__8;
  v18 = __Block_byref_object_dispose__8;
  v19 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__UserActivityController__tabDocumentWithURL___block_invoke;
  v11[3] = &unk_2781D8CE8;
  v8 = v4;
  v12 = v8;
  v13 = &v14;
  [v7 enumerateObjectsUsingBlock:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __46__UserActivityController__tabDocumentWithURL___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v10 = v7;
  v9 = [v7 urlForSharing];
  LODWORD(v8) = [v8 isEqual:v9];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_invalidateTabCreationDelayTimer
{
  [(NSTimer *)self->_tabCreationDelayTimer invalidate];
  tabCreationDelayTimer = self->_tabCreationDelayTimer;
  self->_tabCreationDelayTimer = 0;
}

- (void)_prepareTabDocumentForNewUserActivityWithDelay:(double)a3
{
  if (a3 == 0.0)
  {
    [(UserActivityController *)self _prepareTabDocumentForNewUserActivity];

    [(UserActivityController *)self _invalidateTabCreationDelayTimer];
  }

  else if (!self->_tabCreationDelayTimer)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x277CBEBB8];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __73__UserActivityController__prepareTabDocumentForNewUserActivityWithDelay___block_invoke;
    v8[3] = &unk_2781D8AF0;
    objc_copyWeak(&v9, &location);
    v6 = [v5 scheduledTimerWithTimeInterval:0 repeats:v8 block:a3];
    tabCreationDelayTimer = self->_tabCreationDelayTimer;
    self->_tabCreationDelayTimer = v6;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __73__UserActivityController__prepareTabDocumentForNewUserActivityWithDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _invalidateTabCreationDelayTimer];
    [v2 _prepareTabDocumentForNewUserActivity];
    WeakRetained = v2;
  }
}

- (void)_prepareTabDocumentForNewUserActivity
{
  WeakRetained = objc_loadWeakRetained(&self->_tabDocumentPendingUserActivityPayload);

  if (!WeakRetained)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXContinuity();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v13[0] = 0;
      _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_INFO, "Continue user activity with type: create a new tab.", v13, 2u);
    }

    v5 = objc_loadWeakRetained(&self->_browserController);
    v6 = [v5 tabController];
    if (([v5 shouldStayInFocusedTabGroupForExternalLinks] & 1) == 0)
    {
      [v6 switchOutOfSyncedTabGroup];
    }

    v7 = [v6 activeTabDocument];
    v8 = v7;
    if (v7 && ![(TabDocument *)v7 isLoading]&& [(TabDocument *)v8 isBlank])
    {
      [(TabDocument *)v8 setPreparingForNewUserActivity:1];
      v9 = v8;
    }

    else
    {
      v9 = [[TabDocument alloc] initWithBrowserController:v5];

      [(TabDocument *)v9 setIsBlank:1];
      [(TabDocument *)v9 setPreparingForNewUserActivity:1];
      v10 = [(TabDocument *)v9 navigationBarItem];
      [v10 setShowsStopReloadButtons:0];

      [v6 insertNewTabDocumentWithDefaultOrdering:v9 inBackground:0 animated:0];
      v11 = [MEMORY[0x277D499B8] sharedLogger];
      v12 = [v6 tabCollectionViewProvider];
      [v11 didOpenNewTabWithURLWithTrigger:0 tabCollectionViewType:{objc_msgSend(v12, "visibleTabCollectionViewType")}];
    }

    [v5 prepareToNavigateInTabDocument:v9];
    [(UserActivityController *)self setTabDocumentPendingUserActivityPayload:v9];
    [(TabDocument *)v9 setPreparingForNewUserActivity:0];
  }
}

- (BrowserController)browserController
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);

  return WeakRetained;
}

- (void)continueUserActivity:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 intent];
  objc_opt_class();
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  _os_log_fault_impl(&dword_215819000, v4, OS_LOG_TYPE_FAULT, "Failed to continue INInteraction-based user activity of type '%{public}@'. INIntent is of class '%{public}@'", v8, 0x16u);
}

- (void)continueUserActivity:(void *)a1 .cold.3(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 userInfo];
  v5 = 138477827;
  v6 = v4;
  _os_log_debug_impl(&dword_215819000, v3, OS_LOG_TYPE_DEBUG, "Activity dictionary: %{private}@", &v5, 0xCu);
}

- (void)didFailToContinueUserActivityWithType:(void *)a3 error:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(&dword_215819000, v4, OS_LOG_TYPE_ERROR, "Did fail to continue user activity with type %{public}@: %{public}@", v6, 0x16u);
}

@end