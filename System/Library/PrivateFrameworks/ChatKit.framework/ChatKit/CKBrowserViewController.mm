@interface CKBrowserViewController
- (BOOL)_BOOLForApplePlistKey:(id)a3;
- (BOOL)linkedBeforeDawn;
- (BOOL)linkedBeforeYukon;
- (BOOL)shouldDisableInsetsForGrabber;
- (CKBrowserViewController)initWithBalloonPlugin:(id)a3 dataSource:(id)a4 pluginPayloads:(id)a5;
- (CKBrowserViewControllerSendDelegate)sendDelegate;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4;
- (UIView)dragTargetView;
- (id)photoBrowserSendDelegate;
- (int64_t)browserPresentationStyle;
- (unint64_t)sheetDetentStyle;
- (void)_updateContentOverlayInsetsForSelfAndChildren;
- (void)dismiss;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)finishedPPTTestNamed:(id)a3 isCKLaunchTest:(BOOL)a4;
- (void)loadView;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setCurrentBrowserConsumer:(int64_t)a3;
- (void)setDragTargetView:(id)a3;
- (void)setSendDelegate:(id)a3;
- (void)startPPTTestNamed:(id)a3;
- (void)tearDownRemoteViewIfNeeded;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CKBrowserViewController

- (void)_updateContentOverlayInsetsForSelfAndChildren
{
  v2.receiver = self;
  v2.super_class = CKBrowserViewController;
  [(CKBrowserViewController *)&v2 _updateContentOverlayInsetsForSelfAndChildren];
}

- (CKBrowserViewController)initWithBalloonPlugin:(id)a3 dataSource:(id)a4 pluginPayloads:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = CKBrowserViewController;
  v12 = [(CKBrowserViewController *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_balloonPlugin, a3);
    objc_storeStrong(&v13->_balloonPluginDataSource, a4);
    v13->_isPrimaryViewController = 1;
    objc_initWeak(&location, v13);
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    v15 = [MEMORY[0x1E696ADC8] mainQueue];
    v16 = *MEMORY[0x1E69A5968];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __75__CKBrowserViewController_initWithBalloonPlugin_dataSource_pluginPayloads___block_invoke;
    v19[3] = &unk_1E72F3B70;
    objc_copyWeak(&v20, &location);
    v17 = [v14 addObserverForName:v16 object:0 queue:v15 usingBlock:v19];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __75__CKBrowserViewController_initWithBalloonPlugin_dataSource_pluginPayloads___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained tearDownRemoteViewIfNeeded];
}

- (void)tearDownRemoteViewIfNeeded
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(CKBrowserViewController *)self balloonPlugin];
  v4 = [v3 appBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = IMSharedDowntimeController();
    v7 = [v6 allowedToShowAppExtensionWithBundleIdentifier:v5];

    if ((v7 & 1) == 0)
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v5;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Downtime: Tearing down currently displayed MessageApp with bundleID: %@", &v9, 0xCu);
      }

      [(CKBrowserViewController *)self forceTearDownRemoteView];
    }
  }
}

- (void)startPPTTestNamed:(id)a3
{
  v3 = MEMORY[0x1E69DC668];
  v4 = a3;
  v5 = [v3 sharedApplication];
  [v5 startedTest:v4];
}

- (void)finishedPPTTestNamed:(id)a3 isCKLaunchTest:(BOOL)a4
{
  v4 = a4;
  v15 = a3;
  v6 = [objc_opt_class() currentPPTTestName];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [(CKBrowserViewController *)self balloonPlugin];
    v9 = [v8 identifier];

    if ([v9 containsString:*MEMORY[0x1E69A69F0]])
    {
LABEL_11:

      goto LABEL_12;
    }

    v10 = [objc_opt_class() currentPPTTestName];
    if ([v10 rangeOfString:@"ExtensionLaunch"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [MEMORY[0x1E69DC668] sharedApplication];
      v12 = v11;
      v13 = v15;
    }

    else
    {
      v14 = [objc_opt_class() supportsMessagesAppExtendedLaunchTest];
      v11 = [MEMORY[0x1E69DC668] sharedApplication];
      v12 = v11;
      if (v14 && v4)
      {
        [v11 finishedSubTest:@"PluginLaunchSubtest" forTest:v10];
LABEL_10:

        goto LABEL_11;
      }

      v13 = v10;
    }

    [v11 finishedTest:v13 waitForCommit:1 extraResults:0 withTeardownBlock:0];
    goto LABEL_10;
  }

LABEL_12:
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = CKBrowserViewController;
  [(CKBrowserViewController *)&v3 viewWillAppear:a3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CKBrowserViewController;
  [(CKBrowserViewController *)&v8 viewWillDisappear:a3];
  v4 = [(CKBrowserViewController *)self balloonPlugin];
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:*MEMORY[0x1E69A69A8]];

  if (v6)
  {
    v7 = [(CKBrowserViewController *)self sendDelegate];
    [v7 setLocalUserIsTyping:0];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CKBrowserViewController;
  [(CKBrowserViewController *)&v8 viewDidAppear:a3];
  v4 = [(CKBrowserViewController *)self balloonPlugin];
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:*MEMORY[0x1E69A69A8]];

  if (v6)
  {
    v7 = [(CKBrowserViewController *)self sendDelegate];
    [v7 setLocalUserIsTyping:1];
  }

  [(CKBrowserViewController *)self finishedPPTTestNamed:@"ExtensionLaunch" isCKLaunchTest:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = CKBrowserViewController;
  [(CKBrowserViewController *)&v3 viewDidDisappear:a3];
}

- (void)loadView
{
  v17.receiver = self;
  v17.super_class = CKBrowserViewController;
  [(CKBrowserViewController *)&v17 loadView];
  v3 = [(CKBrowserViewController *)self view];
  [v3 setOpaque:0];

  v4 = [(CKBrowserViewController *)self view];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 theme];
  v7 = [v6 browserBackgroundColor];
  [v4 setBackgroundColor:v7];

  if ([(CKBrowserViewController *)self conformsToProtocol:&unk_1F0623098])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dragTargetView);

    if (!WeakRetained)
    {
      v9 = [(CKBrowserViewController *)self view];
      objc_storeWeak(&self->_dragTargetView, v9);
    }

    v10 = [CKBrowserDragManager alloc];
    v11 = objc_loadWeakRetained(&self->_dragTargetView);
    v12 = [(CKBrowserDragManager *)v10 initWithTargetView:v11];
    browserDragManager = self->_browserDragManager;
    self->_browserDragManager = v12;

    [(CKBrowserDragManager *)self->_browserDragManager setDelegate:self];
    v14 = self->_browserDragManager;
    v15 = [(CKBrowserViewController *)self sendDelegate];
    v16 = [v15 dragControllerTranscriptDelegate];
    [(CKBrowserDragManager *)v14 setTranscriptDelegate:v16];
  }
}

- (void)setDragTargetView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dragTargetView);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dragTargetView, obj);
    v6 = [(CKBrowserViewController *)self conformsToProtocol:&unk_1F0623098];
    v5 = obj;
    if (v6)
    {
      v7 = [CKBrowserDragManager alloc];
      v8 = objc_loadWeakRetained(&self->_dragTargetView);
      v9 = [(CKBrowserDragManager *)v7 initWithTargetView:v8];
      browserDragManager = self->_browserDragManager;
      self->_browserDragManager = v9;

      [(CKBrowserDragManager *)self->_browserDragManager setDelegate:self];
      v11 = self->_browserDragManager;
      v12 = [(CKBrowserViewController *)self sendDelegate];
      v13 = [v12 dragControllerTranscriptDelegate];
      [(CKBrowserDragManager *)v11 setTranscriptDelegate:v13];

      v5 = obj;
    }
  }
}

- (void)setSendDelegate:(id)a3
{
  objc_storeWeak(&self->_sendDelegate, a3);
  browserDragManager = self->_browserDragManager;
  v6 = [(CKBrowserViewController *)self sendDelegate];
  v5 = [v6 dragControllerTranscriptDelegate];
  [(CKBrowserDragManager *)browserDragManager setTranscriptDelegate:v5];
}

- (int64_t)browserPresentationStyle
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  if ([(CKBrowserViewController *)self shouldPresentModally])
  {
    return 2;
  }

  return 0;
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4
{
  v6 = [(CKBrowserViewController *)self sendDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CKBrowserViewController *)self sendDelegate];
    v9 = [v8 isAppCardUsingSheetPresentation];

    v10 = v9 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  v11 = [(CKBrowserViewController *)self balloonPlugin];
  v12 = [v11 identifier];
  v13 = IMBalloonExtensionIDWithSuffix();
  v14 = [v12 isEqualToString:v13];

  if (a4)
  {
    if (CKIsSendMenuEnabled())
    {
      v15 = [MEMORY[0x1E69DC938] currentDevice];
      v16 = [v15 userInterfaceIdiom];

      v17 = v10 & (v14 ^ 1);
      if ((v16 & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    *a4 = v17;
  }

  v18 = *MEMORY[0x1E69DDCE0];
  v19 = *(MEMORY[0x1E69DDCE0] + 8);
  v21 = *(MEMORY[0x1E69DDCE0] + 16);
  v20 = *(MEMORY[0x1E69DDCE0] + 24);
  v22 = CKIsRunningInMacCatalyst();
  v23 = CKIsSendMenuEnabled();
  v24 = [(CKBrowserViewController *)self balloonPlugin];
  v25 = [v24 shouldHideAppSwitcher];

  if ((v23 & 1) == 0 && !v22 && !(v25 & 1 | ![(CKBrowserViewController *)self inCompactPresentation]))
  {
    v26 = +[CKUIBehavior sharedBehaviors];
    [v26 browserSwitcherExpandThreshold];
    v21 = v21 + v27;

    v28 = [(CKBrowserViewController *)self view];
    [v28 safeAreaInsets];
    v30 = v29;

    if (v30 == 0.0)
    {
      v31 = [(CKBrowserViewController *)self view];
      v32 = [v31 window];
      [v32 safeAreaInsets];
      v21 = v21 + v33;
    }
  }

  v34 = v18;
  v35 = v19;
  v36 = v21;
  v37 = v20;
  result.right = v37;
  result.bottom = v36;
  result.left = v35;
  result.top = v34;
  return result;
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if ([(CKBrowserViewController *)self browserPresentationStyle]|| CKIsRunningInMacCatalyst())
  {
    v13.receiver = self;
    v13.super_class = CKBrowserViewController;
    [(CKBrowserViewController *)&v13 presentViewController:v8 animated:v6 completion:v9];
  }

  else
  {
    v10 = [(CKBrowserViewController *)self presentationViewController];

    if (v10)
    {
      v11 = [(CKBrowserViewController *)self presentationViewController];
      [v11 presentViewController:v8 animated:v6 completion:v9];
    }

    else
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CKBrowserViewController presentViewController:v12 animated:? completion:?];
      }
    }
  }
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(CKBrowserViewController *)self browserPresentationStyle])
  {
    [(CKBrowserViewController *)&v10 dismissViewControllerAnimated:v4 completion:v6, self, CKBrowserViewController, v11.receiver, v11.super_class];
  }

  else
  {
    v7 = [(CKBrowserViewController *)self presentationViewController];

    if (v7)
    {
      v8 = [(CKBrowserViewController *)self presentationViewController];
      [v8 dismissViewControllerAnimated:v4 completion:v6];
    }

    else
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CKBrowserViewController dismissViewControllerAnimated:v9 completion:?];
      }

      [(CKBrowserViewController *)&v11 dismissViewControllerAnimated:v4 completion:v6, v10.receiver, v10.super_class, self, CKBrowserViewController];
    }
  }
}

- (void)dismiss
{
  v2 = [(CKBrowserViewController *)self sendDelegate];
  [v2 startEditingPayload:0];
}

- (void)setCurrentBrowserConsumer:(int64_t)a3
{
  if (self->_currentBrowserConsumer != a3)
  {
    if ((a3 - 1) <= 1)
    {
      self->_previousConsumer = a3;
    }

    self->_currentBrowserConsumer = a3;
  }
}

- (BOOL)shouldDisableInsetsForGrabber
{
  if (shouldDisableInsetsForGrabber_onceToken != -1)
  {
    [CKBrowserViewController shouldDisableInsetsForGrabber];
  }

  if (shouldDisableInsetsForGrabber_override)
  {
    LOBYTE(self) = 1;
  }

  else
  {
    v3 = [(CKBrowserViewController *)self balloonPlugin];
    v4 = [v3 appBundle];
    v5 = [v4 bundleIdentifier];

    if (!v5)
    {
      v6 = [v3 identifier];
      v7 = [v6 isEqualToString:*MEMORY[0x1E69A69F0]];

      if (v7)
      {
        v5 = 0;
      }

      else
      {
        v5 = [v3 identifier];
      }
    }

    if ([v5 hasPrefix:@"com.apple."])
    {
      LOBYTE(self) = [(CKBrowserViewController *)self _BOOLForApplePlistKey:@"MSMessagesOverlayAppearanceDisableInsetsForGrabber"];
    }

    else
    {
      LODWORD(self) = ![(CKBrowserViewController *)self linkedBeforeDawn];
    }
  }

  return self;
}

uint64_t __56__CKBrowserViewController_shouldDisableInsetsForGrabber__block_invoke()
{
  result = IMGetDomainBoolForKey();
  shouldDisableInsetsForGrabber_override = result;
  return result;
}

- (BOOL)_BOOLForApplePlistKey:(id)a3
{
  v4 = a3;
  v5 = [(CKBrowserViewController *)self balloonPlugin];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 proxy], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v5 proxy];
    v8 = [v7 objectForInfoDictionaryKey:v4 ofClass:objc_opt_class() inScope:2];
  }

  else
  {
    v9 = [(CKBrowserViewController *)self balloonPlugin];
    v10 = [v9 appBundle];
    v11 = v10;
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v12 = [(CKBrowserViewController *)self balloonPlugin];
      v7 = [v12 pluginBundle];
    }

    v13 = [v7 objectForInfoDictionaryKey:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v8 = v14;
  }

  if (v8)
  {
    v15 = [v8 BOOLValue];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)linkedBeforeDawn
{
  v2 = [(CKBrowserViewController *)self balloonPlugin];
  v3 = [v2 linkedBeforeSDKVersion:@"17.0"];

  return v3;
}

- (BOOL)linkedBeforeYukon
{
  v2 = [(CKBrowserViewController *)self balloonPlugin];
  v3 = [v2 linkedBeforeSDKVersion:@"13.0"];

  return v3;
}

- (unint64_t)sheetDetentStyle
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 browserViewControllerSheetDetentStyle];

  return v3;
}

- (CKBrowserViewControllerSendDelegate)sendDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sendDelegate);

  return WeakRetained;
}

- (UIView)dragTargetView
{
  WeakRetained = objc_loadWeakRetained(&self->_dragTargetView);

  return WeakRetained;
}

- (id)photoBrowserSendDelegate
{
  v3 = [(CKBrowserViewController *)self sendDelegate];
  v4 = [v3 conformsToProtocol:&unk_1F06320E0];

  if (v4)
  {
    v5 = [(CKBrowserViewController *)self sendDelegate];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end