@interface AutomationController
- (AutomationController)init;
- (BOOL)_automationSession:(id)a3 isShowingJavaScriptDialogForWebView:(id)a4;
- (BOOL)_uninstallAutomationSession;
- (BOOL)canCreateNewAutomationTabs;
- (id)_automationSession:(id)a3 defaultTextOfCurrentJavaScriptDialogForWebView:(id)a4;
- (id)_automationSession:(id)a3 messageOfCurrentJavaScriptDialogForWebView:(id)a4;
- (id)_automationSession:(id)a3 userInputOfCurrentJavaScriptDialogForWebView:(id)a4;
- (id)_browserControllerForAutomation;
- (id)processPool;
- (int64_t)_automationSession:(id)a3 currentPresentationForWebView:(id)a4;
- (int64_t)_automationSession:(id)a3 typeOfCurrentJavaScriptDialogForWebView:(id)a4;
- (void)_automationSession:(id)a3 acceptCurrentJavaScriptDialogForWebView:(id)a4;
- (void)_automationSession:(id)a3 dismissCurrentJavaScriptDialogForWebView:(id)a4;
- (void)_automationSession:(id)a3 requestNewWebViewWithOptions:(unint64_t)a4 completionHandler:(id)a5;
- (void)_automationSession:(id)a3 requestSwitchToWebView:(id)a4 completionHandler:(id)a5;
- (void)_automationSession:(id)a3 setUserInput:(id)a4 forCurrentJavaScriptDialogForWebView:(id)a5;
- (void)_developerPreferencesChanged;
- (void)_processPoolDidRequestInspectorDebuggablesToWakeUp:(id)a3;
- (void)_uninstallGuidedAccessSession;
- (void)createAutomationSessionWithIdentifier:(id)a3;
- (void)createAutomationSessionWithIdentifier:(id)a3 configuration:(id)a4 retryBehavior:(int64_t)a5;
- (void)dealloc;
- (void)tabDocument:(id)a3 runJavaScriptAlertPanelWithMessage:(id)a4 completionHandler:(id)a5;
- (void)tabDocument:(id)a3 runJavaScriptConfirmPanelWithMessage:(id)a4 completionHandler:(id)a5;
- (void)tabDocument:(id)a3 runJavaScriptTextInputPanelWithPrompt:(id)a4 defaultText:(id)a5 completionHandler:(id)a6;
- (void)terminateSession;
- (void)updatePreferencesForAutomation:(id)a3;
@end

@implementation AutomationController

- (AutomationController)init
{
  v10.receiver = self;
  v10.super_class = AutomationController;
  v2 = [(AutomationController *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    activeDialogs = v2->_activeDialogs;
    v2->_activeDialogs = v3;

    v5 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v5 addObserver:v2 selector:sel__developerPreferencesChanged name:*MEMORY[0x277CDB980] object:0];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v2 selector:sel__applicationDidEnterBackground name:*MEMORY[0x277D76660] object:0];

    v7 = [(AutomationController *)v2 processPool];
    [v7 _setAutomationDelegate:v2];

    v8 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v3 removeObserver:self];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5 = [(AutomationController *)self processPool];
  [v5 _setAutomationDelegate:0];

  v6.receiver = self;
  v6.super_class = AutomationController;
  [(AutomationController *)&v6 dealloc];
}

- (id)processPool
{
  v2 = +[Application sharedApplication];
  v3 = [v2 defaultProcessPool];

  return v3;
}

- (id)_browserControllerForAutomation
{
  v2 = +[Application sharedApplication];
  v3 = [v2 browserControllers];
  v4 = [v3 safari_firstObjectPassingTest:&__block_literal_global_10];

  return v4;
}

- (BOOL)canCreateNewAutomationTabs
{
  v3 = [(AutomationController *)self automationSession];
  if (v3)
  {
    v4 = !self->_closingAutomationTabsForSessionTeardown;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updatePreferencesForAutomation:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 setFraudulentWebsiteWarningEnabled:0];
  [v4 setElementFullscreenEnabled:1];
  [v4 _setVideoQualityIncludesDisplayCompositingEnabled:1];
  [v4 _setMockCaptureDevicesEnabled:1];
  [v4 _setMockCaptureDevicesPromptEnabled:0];
  if (self->_provisionalSessionConfiguration)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXWebDriver();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(AutomationController *)[(_WKAutomationSessionConfiguration *)self->_provisionalSessionConfiguration allowsInsecureMediaCapture] updatePreferencesForAutomation:v8];
    }

    [v4 _setMediaCaptureRequiresSecureConnection:{-[_WKAutomationSessionConfiguration allowsInsecureMediaCapture](self->_provisionalSessionConfiguration, "allowsInsecureMediaCapture") ^ 1}];
    v6 = WBS_LOG_CHANNEL_PREFIXWebDriver();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(AutomationController *)[(_WKAutomationSessionConfiguration *)self->_provisionalSessionConfiguration suppressesICECandidateFiltering] updatePreferencesForAutomation:?];
    }

    [v4 _setICECandidateFilteringEnabled:{-[_WKAutomationSessionConfiguration suppressesICECandidateFiltering](self->_provisionalSessionConfiguration, "suppressesICECandidateFiltering") ^ 1}];
  }
}

- (void)createAutomationSessionWithIdentifier:(id)a3
{
  v5 = a3;
  v4 = objc_opt_new();
  [(AutomationController *)self createAutomationSessionWithIdentifier:v5 configuration:v4 retryBehavior:0];
}

- (void)createAutomationSessionWithIdentifier:(id)a3 configuration:(id)a4 retryBehavior:(int64_t)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([(_SFAutomationController *)self allowsRemoteAutomation])
  {
    v10 = WBS_LOG_CHANNEL_PREFIXWebDriver();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v36 = v8;
      _os_log_impl(&dword_215819000, v10, OS_LOG_TYPE_DEFAULT, "Checking if a new session (%{public}@) can be created.", buf, 0xCu);
    }

    v11 = MEMORY[0x277D4A710];
    v12 = [(AutomationController *)self automationSession];
    v13 = [v11 canCreateSessionWithExistingSession:v12 retryBehavior:a5];

    switch(v13)
    {
      case 1:
        v18 = WBS_LOG_CHANNEL_PREFIXWebDriver();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [(AutomationController *)self automationSession];
          v20 = [v19 sessionIdentifier];
          *buf = 138543618;
          v36 = v20;
          v37 = 2114;
          v38 = v8;
          _os_log_impl(&dword_215819000, v18, OS_LOG_TYPE_DEFAULT, "Terminating unpaired session (%{public}@) so new session request (%{public}@) can be fulfilled.", buf, 0x16u);
        }

        [(AutomationController *)self terminateSession];
        break;
      case 2:
        v14 = WBS_LOG_CHANNEL_PREFIXWebDriver();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349056;
          v36 = 1;
          _os_log_impl(&dword_215819000, v14, OS_LOG_TYPE_DEFAULT, "Waiting %{public}lld seconds and trying session creation again.", buf, 0xCu);
        }

        v15 = dispatch_time(0, 1000000000);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __90__AutomationController_createAutomationSessionWithIdentifier_configuration_retryBehavior___block_invoke;
        block[3] = &unk_2781D6AC0;
        block[4] = self;
        v16 = &v33;
        v33 = v8;
        v17 = &v34;
        v34 = v9;
        dispatch_after(v15, MEMORY[0x277D85CD0], block);
        goto LABEL_20;
      case 3:
        goto LABEL_21;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __90__AutomationController_createAutomationSessionWithIdentifier_configuration_retryBehavior___block_invoke_2;
    aBlock[3] = &unk_2781D6AC0;
    aBlock[4] = self;
    v30 = v9;
    v31 = v8;
    v21 = _Block_copy(aBlock);
    v22 = [MEMORY[0x277D751B8] currentlyActiveSession];
    v23 = v22 == 0;

    if (v23)
    {
      v25 = [MEMORY[0x277D751B0] defaultConfigurationForStyle:3];
      [v25 setAllowsAutoLock:0];
      [v25 setAllowsLockButton:1];
      [v25 setAutomaticallyRelaunchesAfterAppCrash:0];
      v26 = MEMORY[0x277D751B8];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __90__AutomationController_createAutomationSessionWithIdentifier_configuration_retryBehavior___block_invoke_55;
      v27[3] = &unk_2781D7608;
      v27[4] = self;
      v28 = v21;
      [v26 requestSessionWithConfiguration:v25 completion:v27];
    }

    else
    {
      v24 = WBS_LOG_CHANNEL_PREFIXWebDriver();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_215819000, v24, OS_LOG_TYPE_DEFAULT, "Skipped starting Guided Access session used for WebDriver, ASAM session already active.", buf, 2u);
      }

      v21[2](v21);
    }

    v16 = &v30;
    v17 = &v31;
LABEL_20:
  }

LABEL_21:
}

void __90__AutomationController_createAutomationSessionWithIdentifier_configuration_retryBehavior___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  v2 = +[Application sharedApplication];
  v3 = [v2 browserWindowController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __90__AutomationController_createAutomationSessionWithIdentifier_configuration_retryBehavior___block_invoke_3;
  v5[3] = &unk_2781D75E0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 setUpAutomationWindowWithCompletionHandler:v5];
}

void __90__AutomationController_createAutomationSessionWithIdentifier_configuration_retryBehavior___block_invoke_3(uint64_t a1, void *a2)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  if (v3)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXWebDriver();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v3 safari_privacyPreservingDescription];
      __90__AutomationController_createAutomationSessionWithIdentifier_configuration_retryBehavior___block_invoke_3_cold_1(v7, v13, v6);
    }

    [*(a1 + 32) _uninstallGuidedAccessSession];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277D54C30]);
    v9 = *(a1 + 32);
    v10 = *(v9 + 24);
    *(v9 + 24) = v8;

    [*(*(a1 + 32) + 24) activateAssertionWithIdentifier:@"com.apple.sharing.PreventProxCards"];
    v11 = [objc_alloc(MEMORY[0x277CE3878]) initWithConfiguration:*(a1 + 40)];
    [v11 setDelegate:*(a1 + 32)];
    [v11 setSessionIdentifier:*(a1 + 48)];
    objc_storeStrong((*(a1 + 32) + 48), v11);
    v12 = [*(a1 + 32) processPool];
    [v12 _setAutomationSession:v11];
  }
}

void __90__AutomationController_createAutomationSessionWithIdentifier_configuration_retryBehavior___block_invoke_55(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 || !v6)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXWebDriver();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v5 safari_privacyPreservingDescription];
      __90__AutomationController_createAutomationSessionWithIdentifier_configuration_retryBehavior___block_invoke_55_cold_1(v10, v11, v9);
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 32), a3);
    v8 = WBS_LOG_CHANNEL_PREFIXWebDriver();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_215819000, v8, OS_LOG_TYPE_DEFAULT, "Successfully started Guided Access session used for WebDriver.", v11, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)terminateSession
{
  v2 = [(AutomationController *)self automationSession];
  [v2 terminate];
}

- (void)_uninstallGuidedAccessSession
{
  guidedAccessSession = self->_guidedAccessSession;
  if (guidedAccessSession)
  {
    v4 = guidedAccessSession;
  }

  else
  {
    v4 = [MEMORY[0x277D751B8] currentlyActiveSession];
  }

  v6 = v4;
  v5 = self->_guidedAccessSession;
  self->_guidedAccessSession = 0;

  if ([(UIAutonomousSingleAppModeSession *)v6 isActive])
  {
    [(UIAutonomousSingleAppModeSession *)v6 endWithCompletion:&__block_literal_global_58];
  }
}

void __53__AutomationController__uninstallGuidedAccessSession__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXWebDriver();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [v2 safari_privacyPreservingDescription];
      __53__AutomationController__uninstallGuidedAccessSession__block_invoke_cold_1(v4, v6, v3);
    }
  }

  else
  {
    v5 = WBS_LOG_CHANNEL_PREFIXWebDriver();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Successfully ended Guided Access session used for WebDriver.", v6, 2u);
    }
  }
}

- (BOOL)_uninstallAutomationSession
{
  v3 = [(AutomationController *)self automationSession];

  if (v3)
  {
    self->_closingAutomationTabsForSessionTeardown = 1;
    v4 = [(AutomationController *)self _browserControllerForAutomation];
    v5 = [v4 tabController];
    [v5 closeAllOpenTabsAnimated:0];

    self->_closingAutomationTabsForSessionTeardown = 0;
    [(_WKAutomationSession *)self->_automationSession setDelegate:0];
    automationSession = self->_automationSession;
    self->_automationSession = 0;

    self->_automationSessionRequestedFirstWebView = 0;
    v7 = [(AutomationController *)self processPool];
    [v7 _setAutomationSession:0];

    v8 = +[Application sharedApplication];
    v9 = [v8 browserWindowController];
    [v9 tearDownAutomationWindow];

    [(SFClient *)self->_sharingClient invalidate];
    sharingClient = self->_sharingClient;
    self->_sharingClient = 0;

    [(AutomationController *)self _uninstallGuidedAccessSession];
  }

  return v3 != 0;
}

- (void)_developerPreferencesChanged
{
  v4 = [(AutomationController *)self automationSession];
  if (v4)
  {
    v3 = [(_SFAutomationController *)self allowsRemoteAutomation];

    if (!v3)
    {
      [(AutomationController *)self terminateSession];
    }
  }

  v5 = [(AutomationController *)self processPool];
  [v5 _automationCapabilitiesDidChange];
}

- (void)_processPoolDidRequestInspectorDebuggablesToWakeUp:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = +[Application sharedApplication];
  v4 = [v3 allWebExtensionsControllers];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v9 = [v8 enabledExtensions];
        v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v10)
        {
          v11 = *v16;
          do
          {
            v12 = 0;
            do
            {
              if (*v16 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = [v8 webExtensionForExtension:*(*(&v15 + 1) + 8 * v12)];
              [v13 loadBackgroundPageIfNecessaryWithCompletionHandler:&__block_literal_global_60];

              ++v12;
            }

            while (v10 != v12);
            v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v10);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }
}

- (void)_automationSession:(id)a3 requestNewWebViewWithOptions:(unint64_t)a4 completionHandler:(id)a5
{
  v15 = a5;
  v6 = [(AutomationController *)self _browserControllerForAutomation];
  v7 = v6;
  if (!self->_automationSessionRequestedFirstWebView)
  {
    self->_automationSessionRequestedFirstWebView = 1;
    v10 = [v6 tabController];
    v9 = [v10 activeTabDocument];

    if (([v9 isControlledByAutomation] & 1) == 0)
    {
      v11 = [v7 tabController];
      [v11 closeAllOpenTabsAnimated:0];

      v12 = [v7 tabController];
      v13 = [v12 activeTabDocument];

      v9 = v13;
    }

    goto LABEL_6;
  }

  v8 = [MEMORY[0x277CBEBC0] URLWithString:@"about:blank"];
  v9 = [v7 loadURLInNewTab:v8 inBackground:0 animated:0];

  if (v9)
  {
LABEL_6:
    v14 = [v9 webView];
    v15[2](v15, v14);

    goto LABEL_7;
  }

  v15[2](v15, 0);
LABEL_7:
}

- (void)_automationSession:(id)a3 requestSwitchToWebView:(id)a4 completionHandler:(id)a5
{
  v10 = a5;
  v7 = [TabDocument tabDocumentForWKWebView:a4];
  if (v7)
  {
    v8 = [(AutomationController *)self _browserControllerForAutomation];
    v9 = [v8 tabController];
    [v9 setActiveTabDocument:v7 animated:0];

    v10[2]();
  }

  else
  {
    v10[2]();
  }
}

- (BOOL)_automationSession:(id)a3 isShowingJavaScriptDialogForWebView:(id)a4
{
  v5 = [TabDocument tabDocumentForWKWebView:a4];
  if (v5)
  {
    v6 = [(NSMapTable *)self->_activeDialogs objectForKey:v5];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_automationSession:(id)a3 dismissCurrentJavaScriptDialogForWebView:(id)a4
{
  v8 = a4;
  v5 = [TabDocument tabDocumentForWKWebView:?];
  if (v5)
  {
    v6 = [(NSMapTable *)self->_activeDialogs objectForKey:v5];
    if (v6)
    {
      [(NSMapTable *)self->_activeDialogs removeObjectForKey:v5];
      v7 = [v6 completionHandler];
      v7[2](v7, 0, 0);
    }
  }
}

- (void)_automationSession:(id)a3 acceptCurrentJavaScriptDialogForWebView:(id)a4
{
  v9 = a4;
  v5 = [TabDocument tabDocumentForWKWebView:?];
  if (v5)
  {
    v6 = [(NSMapTable *)self->_activeDialogs objectForKey:v5];
    if (v6)
    {
      [(NSMapTable *)self->_activeDialogs removeObjectForKey:v5];
      v7 = [v6 completionHandler];
      v8 = [v6 currentInput];
      (v7)[2](v7, 1, v8);
    }
  }
}

- (id)_automationSession:(id)a3 messageOfCurrentJavaScriptDialogForWebView:(id)a4
{
  v5 = [TabDocument tabDocumentForWKWebView:a4];
  if (v5)
  {
    v6 = [(NSMapTable *)self->_activeDialogs objectForKey:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 message];
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

- (id)_automationSession:(id)a3 defaultTextOfCurrentJavaScriptDialogForWebView:(id)a4
{
  v5 = [TabDocument tabDocumentForWKWebView:a4];
  if (v5)
  {
    v6 = [(NSMapTable *)self->_activeDialogs objectForKey:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 defaultText];
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

- (int64_t)_automationSession:(id)a3 typeOfCurrentJavaScriptDialogForWebView:(id)a4
{
  v5 = [TabDocument tabDocumentForWKWebView:a4];
  if (v5)
  {
    v6 = [(NSMapTable *)self->_activeDialogs objectForKey:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 type];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)_automationSession:(id)a3 userInputOfCurrentJavaScriptDialogForWebView:(id)a4
{
  v5 = [TabDocument tabDocumentForWKWebView:a4];
  if (v5)
  {
    v6 = [(NSMapTable *)self->_activeDialogs objectForKey:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 currentInput];
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

- (void)_automationSession:(id)a3 setUserInput:(id)a4 forCurrentJavaScriptDialogForWebView:(id)a5
{
  v10 = a4;
  v7 = [TabDocument tabDocumentForWKWebView:a5];
  if (v7)
  {
    v8 = [(NSMapTable *)self->_activeDialogs objectForKey:v7];
    v9 = v8;
    if (v8)
    {
      [v8 setCurrentInput:v10];
    }
  }
}

- (int64_t)_automationSession:(id)a3 currentPresentationForWebView:(id)a4
{
  v4 = [TabDocument tabDocumentForWKWebView:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 browserController];
    if ([v6 usesTabBar])
    {
      v7 = [v6 tabController];
      v8 = [v7 numberOfCurrentNonHiddenTabs] < 2;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)tabDocument:(id)a3 runJavaScriptAlertPanelWithMessage:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [JavaScriptDialogState alloc];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __89__AutomationController_tabDocument_runJavaScriptAlertPanelWithMessage_completionHandler___block_invoke;
  v14[3] = &unk_2781D7630;
  v12 = v10;
  v15 = v12;
  v13 = [(JavaScriptDialogState *)v11 initWithMessage:v9 defaultText:0 type:2 completionHandler:v14];
  [(NSMapTable *)self->_activeDialogs setObject:v13 forKey:v8];
}

- (void)tabDocument:(id)a3 runJavaScriptConfirmPanelWithMessage:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [JavaScriptDialogState alloc];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__AutomationController_tabDocument_runJavaScriptConfirmPanelWithMessage_completionHandler___block_invoke;
  v14[3] = &unk_2781D7630;
  v12 = v10;
  v15 = v12;
  v13 = [(JavaScriptDialogState *)v11 initWithMessage:v9 defaultText:0 type:3 completionHandler:v14];
  [(NSMapTable *)self->_activeDialogs setObject:v13 forKey:v8];
}

- (void)tabDocument:(id)a3 runJavaScriptTextInputPanelWithPrompt:(id)a4 defaultText:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [JavaScriptDialogState alloc];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __104__AutomationController_tabDocument_runJavaScriptTextInputPanelWithPrompt_defaultText_completionHandler___block_invoke;
  v17[3] = &unk_2781D7630;
  v15 = v13;
  v18 = v15;
  v16 = [(JavaScriptDialogState *)v14 initWithMessage:v11 defaultText:v12 type:4 completionHandler:v17];
  [(NSMapTable *)self->_activeDialogs setObject:v16 forKey:v10];
}

- (void)updatePreferencesForAutomation:(char)a1 .cold.1(char a1, uint64_t a2)
{
  v3 = @"NO";
  if (a1)
  {
    v3 = @"YES";
  }

  v4 = v3;
  *a2 = 138543362;
  *(a2 + 4) = v4;
  OUTLINED_FUNCTION_1_3(&dword_215819000, v5, v6, "Applying session configuration: allowsInsecureMediaCapture = %{public}@");
}

- (void)updatePreferencesForAutomation:(char)a1 .cold.2(char a1, uint64_t a2)
{
  v3 = @"NO";
  if (a1)
  {
    v3 = @"YES";
  }

  v4 = v3;
  *a2 = 138543362;
  *(a2 + 4) = v4;
  OUTLINED_FUNCTION_1_3(&dword_215819000, v5, v6, "Applying session configuration: suppressesICECandidateFiltering = %{public}@");
}

void __90__AutomationController_createAutomationSessionWithIdentifier_configuration_retryBehavior___block_invoke_3_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_2(&dword_215819000, a2, a3, "Unable to set up a window for WebDriver: %{public}@", a2);
}

void __90__AutomationController_createAutomationSessionWithIdentifier_configuration_retryBehavior___block_invoke_55_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_2(&dword_215819000, a2, a3, "Unable to start Guided Access session used for WebDriver: %{public}@", a2);
}

void __53__AutomationController__uninstallGuidedAccessSession__block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_2(&dword_215819000, a2, a3, "Unable to end Guided Access session used for WebDriver: %{public}@", a2);
}

@end