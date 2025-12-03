@interface UserActivityController
- (BOOL)continueUserActivity:(id)activity;
- (BOOL)willContinueUserActivityWithType:(id)type;
- (BrowserController)browserController;
- (TabDocument)tabDocumentPendingUserActivityPayload;
- (UserActivityController)initWithBrowserController:(id)controller;
- (id)_tabDocumentWithURL:(id)l;
- (void)_invalidateTabCreationDelayTimer;
- (void)_prepareTabDocumentForNewUserActivity;
- (void)_prepareTabDocumentForNewUserActivityWithDelay:(double)delay;
- (void)didFailToContinueUserActivityWithType:(id)type error:(id)error;
- (void)setTabDocumentPendingUserActivityPayload:(id)payload;
@end

@implementation UserActivityController

- (TabDocument)tabDocumentPendingUserActivityPayload
{
  WeakRetained = objc_loadWeakRetained(&self->_tabDocumentPendingUserActivityPayload);

  return WeakRetained;
}

- (UserActivityController)initWithBrowserController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = UserActivityController;
  v5 = [(UserActivityController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_browserController, controllerCopy);
    v7 = v6;
  }

  return v6;
}

- (void)setTabDocumentPendingUserActivityPayload:(id)payload
{
  obj = payload;
  WeakRetained = objc_loadWeakRetained(&self->_tabDocumentPendingUserActivityPayload);
  if (WeakRetained != obj)
  {
    [WeakRetained doneWaitingToContinueUserActivity];
    objc_storeWeak(&self->_tabDocumentPendingUserActivityPayload, obj);
    [obj prepareToContinueUserActivity];
    [obj updateTabTitle];
  }
}

- (BOOL)willContinueUserActivityWithType:(id)type
{
  v14 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = WBS_LOG_CHANNEL_PREFIXContinuity();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v13 = typeCopy;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_INFO, "Will continue user activity with type: %{public}@", buf, 0xCu);
  }

  v6 = *MEMORY[0x277CCA850];
  v7 = *MEMORY[0x277CDB9F8];
  v11[0] = *MEMORY[0x277CCA850];
  v11[1] = v7;
  v11[2] = *MEMORY[0x277CDB978];
  v11[3] = @"OpenURLsIntent";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  v9 = [v8 containsObject:typeCopy];
  if (v9 && [typeCopy isEqualToString:v6])
  {
    [(UserActivityController *)self _prepareTabDocumentForNewUserActivityWithDelay:0.02];
  }

  return v9;
}

- (BOOL)continueUserActivity:(id)activity
{
  v44 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v5 = WBS_LOG_CHANNEL_PREFIXContinuity();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    activityType = [activityCopy activityType];
    *buf = 138543362;
    v43 = activityType;
    _os_log_impl(&dword_215819000, v6, OS_LOG_TYPE_INFO, "Continue user activity with type: %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  activityType2 = [activityCopy activityType];
  if (![activityType2 isEqualToString:*MEMORY[0x277CDB9F8]])
  {
    if ([activityType2 isEqualToString:*MEMORY[0x277CDB978]])
    {
      mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
      [mEMORY[0x277D499B8] didContinueUserActivityOfType:1];

      shortcutController = [WeakRetained shortcutController];
      interaction = shortcutController;
      v13 = MEMORY[0x277CDBA00];
      goto LABEL_7;
    }

    interaction = [activityCopy interaction];
    mEMORY[0x277D499B8]2 = [MEMORY[0x277D499B8] sharedLogger];
    v17 = mEMORY[0x277D499B8]2;
    if (interaction)
    {
      [mEMORY[0x277D499B8]2 didContinueUserActivityOfType:2];

      systemNoteTakingController = [(_SFNavigationIntent *)MEMORY[0x277D28F38] safari_navigationIntentForUserActivityContainingInteraction:activityCopy];
      v19 = WBS_LOG_CHANNEL_PREFIXContinuity();
      v20 = v19;
      if (systemNoteTakingController)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v20;
          privacyPreservingDescription = [systemNoteTakingController privacyPreservingDescription];
          *buf = 138543362;
          v43 = privacyPreservingDescription;
          _os_log_impl(&dword_215819000, v21, OS_LOG_TYPE_DEFAULT, "Continuing user activity for OpenURLsIntent using intent: %{public}@", buf, 0xCu);
        }

        [WeakRetained dispatchNavigationIntent:systemNoteTakingController];
        LOBYTE(safari_isHTTPFamilyURL) = 1;
      }

      else
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          [(UserActivityController *)activityType2 continueUserActivity:v20, interaction];
        }

        LOBYTE(safari_isHTTPFamilyURL) = 0;
      }

      goto LABEL_39;
    }

    [mEMORY[0x277D499B8]2 didContinueUserActivityOfType:3];

    v23 = +[Application sharedApplication];
    systemNoteTakingController = [v23 systemNoteTakingController];

    v24 = [systemNoteTakingController userActivityForNoteTaking:activityCopy];
    if (v24)
    {
      webpageURL = [activityCopy webpageURL];
      if ([webpageURL safari_isHTTPFamilyURL])
      {
        v26 = [(UserActivityController *)self _tabDocumentWithURL:webpageURL];
        if (v26)
        {
          v27 = v26;
          [v26 setUserActivityFromNotes:v24];
          tabController = [WeakRetained tabController];
          [tabController setActiveTabDocument:v27 animated:0];

          [v27 applyHighlightFromNotesIfNeeded];
          [v27 restoreAllHighlightsData];
          [(UserActivityController *)self _invalidateTabCreationDelayTimer];
          goto LABEL_26;
        }
      }
    }

    [(UserActivityController *)self _prepareTabDocumentForNewUserActivityWithDelay:0.0];
    webpageURL = objc_loadWeakRetained(&self->_tabDocumentPendingUserActivityPayload);
    if (!webpageURL || (-[UserActivityController setTabDocumentPendingUserActivityPayload:](self, "setTabDocumentPendingUserActivityPayload:", 0), ([webpageURL isClosed] & 1) != 0))
    {
      LOBYTE(safari_isHTTPFamilyURL) = 1;
LABEL_38:

LABEL_39:
      goto LABEL_40;
    }

    v29 = objc_alloc(MEMORY[0x277D49EB8]);
    userInfo = [activityCopy userInfo];
    v27 = [v29 initWithDictionaryFromUserActivityUserInfo:userInfo];

    if (!v27)
    {
      webpageURL2 = [activityCopy webpageURL];
      safari_isHTTPFamilyURL = [webpageURL2 safari_isHTTPFamilyURL];
      if (safari_isHTTPFamilyURL)
      {
        [webpageURL setUserActivityFromNotes:v24];
        if ([webpageURL isHibernated])
        {
          [webpageURL unhibernate];
        }

        logc = [webpageURL2 safari_originalDataAsString];
        [webpageURL progressState];
        v34 = v37 = webpageURL2;
        [v34 setLoadURL:logc];

        webpageURL2 = v37;
        v35 = [webpageURL loadURL:v37 userDriven:1];
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
          [(UserActivityController *)loga continueUserActivity:activityCopy];
        }

        [webpageURL didFailToContinueUserActivity];
      }

      goto LABEL_37;
    }

    logb = [v27 url];
    safari_originalDataAsString = [logb safari_originalDataAsString];
    progressState = [webpageURL progressState];
    [progressState setLoadURL:safari_originalDataAsString];

    [webpageURL loadCloudTab:v27];
LABEL_26:
    LOBYTE(safari_isHTTPFamilyURL) = 1;
LABEL_37:

    goto LABEL_38;
  }

  mEMORY[0x277D499B8]3 = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8]3 didContinueUserActivityOfType:0];

  shortcutController = [WeakRetained shortcutController];
  interaction = shortcutController;
  v13 = MEMORY[0x277CDBA18];
LABEL_7:
  LOBYTE(safari_isHTTPFamilyURL) = [shortcutController handleActionWithType:*v13];
LABEL_40:

  return safari_isHTTPFamilyURL;
}

- (void)didFailToContinueUserActivityWithType:(id)type error:(id)error
{
  typeCopy = type;
  errorCopy = error;
  v8 = WBS_LOG_CHANNEL_PREFIXContinuity();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(UserActivityController *)typeCopy didFailToContinueUserActivityWithType:v8 error:errorCopy];
  }

  WeakRetained = objc_loadWeakRetained(&self->_tabDocumentPendingUserActivityPayload);
  [WeakRetained didFailToContinueUserActivity];

  [(UserActivityController *)self setTabDocumentPendingUserActivityPayload:0];
  [(UserActivityController *)self _invalidateTabCreationDelayTimer];
}

- (id)_tabDocumentWithURL:(id)l
{
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  currentTabDocuments = [tabController currentTabDocuments];

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
  v8 = lCopy;
  v12 = v8;
  v13 = &v14;
  [currentTabDocuments enumerateObjectsUsingBlock:v11];
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

- (void)_prepareTabDocumentForNewUserActivityWithDelay:(double)delay
{
  if (delay == 0.0)
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
    v6 = [v5 scheduledTimerWithTimeInterval:0 repeats:v8 block:delay];
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
    tabController = [v5 tabController];
    if (([v5 shouldStayInFocusedTabGroupForExternalLinks] & 1) == 0)
    {
      [tabController switchOutOfSyncedTabGroup];
    }

    activeTabDocument = [tabController activeTabDocument];
    v8 = activeTabDocument;
    if (activeTabDocument && ![(TabDocument *)activeTabDocument isLoading]&& [(TabDocument *)v8 isBlank])
    {
      [(TabDocument *)v8 setPreparingForNewUserActivity:1];
      v9 = v8;
    }

    else
    {
      v9 = [[TabDocument alloc] initWithBrowserController:v5];

      [(TabDocument *)v9 setIsBlank:1];
      [(TabDocument *)v9 setPreparingForNewUserActivity:1];
      navigationBarItem = [(TabDocument *)v9 navigationBarItem];
      [navigationBarItem setShowsStopReloadButtons:0];

      [tabController insertNewTabDocumentWithDefaultOrdering:v9 inBackground:0 animated:0];
      mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
      tabCollectionViewProvider = [tabController tabCollectionViewProvider];
      [mEMORY[0x277D499B8] didOpenNewTabWithURLWithTrigger:0 tabCollectionViewType:{objc_msgSend(tabCollectionViewProvider, "visibleTabCollectionViewType")}];
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