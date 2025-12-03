@interface CKBrowserViewController
- (BOOL)_BOOLForApplePlistKey:(id)key;
- (BOOL)linkedBeforeDawn;
- (BOOL)linkedBeforeYukon;
- (BOOL)shouldDisableInsetsForGrabber;
- (CKBrowserViewController)initWithBalloonPlugin:(id)plugin dataSource:(id)source pluginPayloads:(id)payloads;
- (CKBrowserViewControllerSendDelegate)sendDelegate;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute;
- (UIView)dragTargetView;
- (id)photoBrowserSendDelegate;
- (int64_t)browserPresentationStyle;
- (unint64_t)sheetDetentStyle;
- (void)_updateContentOverlayInsetsForSelfAndChildren;
- (void)dismiss;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)finishedPPTTestNamed:(id)named isCKLaunchTest:(BOOL)test;
- (void)loadView;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)setCurrentBrowserConsumer:(int64_t)consumer;
- (void)setDragTargetView:(id)view;
- (void)setSendDelegate:(id)delegate;
- (void)startPPTTestNamed:(id)named;
- (void)tearDownRemoteViewIfNeeded;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CKBrowserViewController

- (void)_updateContentOverlayInsetsForSelfAndChildren
{
  v2.receiver = self;
  v2.super_class = CKBrowserViewController;
  [(CKBrowserViewController *)&v2 _updateContentOverlayInsetsForSelfAndChildren];
}

- (CKBrowserViewController)initWithBalloonPlugin:(id)plugin dataSource:(id)source pluginPayloads:(id)payloads
{
  pluginCopy = plugin;
  sourceCopy = source;
  payloadsCopy = payloads;
  v22.receiver = self;
  v22.super_class = CKBrowserViewController;
  v12 = [(CKBrowserViewController *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_balloonPlugin, plugin);
    objc_storeStrong(&v13->_balloonPluginDataSource, source);
    v13->_isPrimaryViewController = 1;
    objc_initWeak(&location, v13);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    v16 = *MEMORY[0x1E69A5968];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __75__CKBrowserViewController_initWithBalloonPlugin_dataSource_pluginPayloads___block_invoke;
    v19[3] = &unk_1E72F3B70;
    objc_copyWeak(&v20, &location);
    v17 = [defaultCenter addObserverForName:v16 object:0 queue:mainQueue usingBlock:v19];

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
  balloonPlugin = [(CKBrowserViewController *)self balloonPlugin];
  appBundle = [balloonPlugin appBundle];
  bundleIdentifier = [appBundle bundleIdentifier];

  if (bundleIdentifier)
  {
    v6 = IMSharedDowntimeController();
    v7 = [v6 allowedToShowAppExtensionWithBundleIdentifier:bundleIdentifier];

    if ((v7 & 1) == 0)
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = bundleIdentifier;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Downtime: Tearing down currently displayed MessageApp with bundleID: %@", &v9, 0xCu);
      }

      [(CKBrowserViewController *)self forceTearDownRemoteView];
    }
  }
}

- (void)startPPTTestNamed:(id)named
{
  v3 = MEMORY[0x1E69DC668];
  namedCopy = named;
  sharedApplication = [v3 sharedApplication];
  [sharedApplication startedTest:namedCopy];
}

- (void)finishedPPTTestNamed:(id)named isCKLaunchTest:(BOOL)test
{
  testCopy = test;
  namedCopy = named;
  currentPPTTestName = [objc_opt_class() currentPPTTestName];
  v7 = [currentPPTTestName length];

  if (v7)
  {
    balloonPlugin = [(CKBrowserViewController *)self balloonPlugin];
    identifier = [balloonPlugin identifier];

    if ([identifier containsString:*MEMORY[0x1E69A69F0]])
    {
LABEL_11:

      goto LABEL_12;
    }

    currentPPTTestName2 = [objc_opt_class() currentPPTTestName];
    if ([currentPPTTestName2 rangeOfString:@"ExtensionLaunch"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      v12 = mEMORY[0x1E69DC668];
      v13 = namedCopy;
    }

    else
    {
      supportsMessagesAppExtendedLaunchTest = [objc_opt_class() supportsMessagesAppExtendedLaunchTest];
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      v12 = mEMORY[0x1E69DC668];
      if (supportsMessagesAppExtendedLaunchTest && testCopy)
      {
        [mEMORY[0x1E69DC668] finishedSubTest:@"PluginLaunchSubtest" forTest:currentPPTTestName2];
LABEL_10:

        goto LABEL_11;
      }

      v13 = currentPPTTestName2;
    }

    [mEMORY[0x1E69DC668] finishedTest:v13 waitForCommit:1 extraResults:0 withTeardownBlock:0];
    goto LABEL_10;
  }

LABEL_12:
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = CKBrowserViewController;
  [(CKBrowserViewController *)&v3 viewWillAppear:appear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = CKBrowserViewController;
  [(CKBrowserViewController *)&v8 viewWillDisappear:disappear];
  balloonPlugin = [(CKBrowserViewController *)self balloonPlugin];
  identifier = [balloonPlugin identifier];
  v6 = [identifier isEqualToString:*MEMORY[0x1E69A69A8]];

  if (v6)
  {
    sendDelegate = [(CKBrowserViewController *)self sendDelegate];
    [sendDelegate setLocalUserIsTyping:0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = CKBrowserViewController;
  [(CKBrowserViewController *)&v8 viewDidAppear:appear];
  balloonPlugin = [(CKBrowserViewController *)self balloonPlugin];
  identifier = [balloonPlugin identifier];
  v6 = [identifier isEqualToString:*MEMORY[0x1E69A69A8]];

  if (v6)
  {
    sendDelegate = [(CKBrowserViewController *)self sendDelegate];
    [sendDelegate setLocalUserIsTyping:1];
  }

  [(CKBrowserViewController *)self finishedPPTTestNamed:@"ExtensionLaunch" isCKLaunchTest:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = CKBrowserViewController;
  [(CKBrowserViewController *)&v3 viewDidDisappear:disappear];
}

- (void)loadView
{
  v17.receiver = self;
  v17.super_class = CKBrowserViewController;
  [(CKBrowserViewController *)&v17 loadView];
  view = [(CKBrowserViewController *)self view];
  [view setOpaque:0];

  view2 = [(CKBrowserViewController *)self view];
  v5 = +[CKUIBehavior sharedBehaviors];
  theme = [v5 theme];
  browserBackgroundColor = [theme browserBackgroundColor];
  [view2 setBackgroundColor:browserBackgroundColor];

  if ([(CKBrowserViewController *)self conformsToProtocol:&unk_1F0623098])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dragTargetView);

    if (!WeakRetained)
    {
      view3 = [(CKBrowserViewController *)self view];
      objc_storeWeak(&self->_dragTargetView, view3);
    }

    v10 = [CKBrowserDragManager alloc];
    v11 = objc_loadWeakRetained(&self->_dragTargetView);
    v12 = [(CKBrowserDragManager *)v10 initWithTargetView:v11];
    browserDragManager = self->_browserDragManager;
    self->_browserDragManager = v12;

    [(CKBrowserDragManager *)self->_browserDragManager setDelegate:self];
    v14 = self->_browserDragManager;
    sendDelegate = [(CKBrowserViewController *)self sendDelegate];
    dragControllerTranscriptDelegate = [sendDelegate dragControllerTranscriptDelegate];
    [(CKBrowserDragManager *)v14 setTranscriptDelegate:dragControllerTranscriptDelegate];
  }
}

- (void)setDragTargetView:(id)view
{
  obj = view;
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
      sendDelegate = [(CKBrowserViewController *)self sendDelegate];
      dragControllerTranscriptDelegate = [sendDelegate dragControllerTranscriptDelegate];
      [(CKBrowserDragManager *)v11 setTranscriptDelegate:dragControllerTranscriptDelegate];

      v5 = obj;
    }
  }
}

- (void)setSendDelegate:(id)delegate
{
  objc_storeWeak(&self->_sendDelegate, delegate);
  browserDragManager = self->_browserDragManager;
  sendDelegate = [(CKBrowserViewController *)self sendDelegate];
  dragControllerTranscriptDelegate = [sendDelegate dragControllerTranscriptDelegate];
  [(CKBrowserDragManager *)browserDragManager setTranscriptDelegate:dragControllerTranscriptDelegate];
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

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute
{
  sendDelegate = [(CKBrowserViewController *)self sendDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    sendDelegate2 = [(CKBrowserViewController *)self sendDelegate];
    isAppCardUsingSheetPresentation = [sendDelegate2 isAppCardUsingSheetPresentation];

    v10 = isAppCardUsingSheetPresentation ^ 1;
  }

  else
  {
    v10 = 1;
  }

  balloonPlugin = [(CKBrowserViewController *)self balloonPlugin];
  identifier = [balloonPlugin identifier];
  v13 = IMBalloonExtensionIDWithSuffix();
  v14 = [identifier isEqualToString:v13];

  if (absolute)
  {
    if (CKIsSendMenuEnabled())
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      v17 = v10 & (v14 ^ 1);
      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    *absolute = v17;
  }

  v18 = *MEMORY[0x1E69DDCE0];
  v19 = *(MEMORY[0x1E69DDCE0] + 8);
  v21 = *(MEMORY[0x1E69DDCE0] + 16);
  v20 = *(MEMORY[0x1E69DDCE0] + 24);
  v22 = CKIsRunningInMacCatalyst();
  v23 = CKIsSendMenuEnabled();
  balloonPlugin2 = [(CKBrowserViewController *)self balloonPlugin];
  shouldHideAppSwitcher = [balloonPlugin2 shouldHideAppSwitcher];

  if ((v23 & 1) == 0 && !v22 && !(shouldHideAppSwitcher & 1 | ![(CKBrowserViewController *)self inCompactPresentation]))
  {
    v26 = +[CKUIBehavior sharedBehaviors];
    [v26 browserSwitcherExpandThreshold];
    v21 = v21 + v27;

    view = [(CKBrowserViewController *)self view];
    [view safeAreaInsets];
    v30 = v29;

    if (v30 == 0.0)
    {
      view2 = [(CKBrowserViewController *)self view];
      window = [view2 window];
      [window safeAreaInsets];
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

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  if ([(CKBrowserViewController *)self browserPresentationStyle]|| CKIsRunningInMacCatalyst())
  {
    v13.receiver = self;
    v13.super_class = CKBrowserViewController;
    [(CKBrowserViewController *)&v13 presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }

  else
  {
    presentationViewController = [(CKBrowserViewController *)self presentationViewController];

    if (presentationViewController)
    {
      presentationViewController2 = [(CKBrowserViewController *)self presentationViewController];
      [presentationViewController2 presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
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

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if ([(CKBrowserViewController *)self browserPresentationStyle])
  {
    [(CKBrowserViewController *)&v10 dismissViewControllerAnimated:animatedCopy completion:completionCopy, self, CKBrowserViewController, v11.receiver, v11.super_class];
  }

  else
  {
    presentationViewController = [(CKBrowserViewController *)self presentationViewController];

    if (presentationViewController)
    {
      presentationViewController2 = [(CKBrowserViewController *)self presentationViewController];
      [presentationViewController2 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
    }

    else
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CKBrowserViewController dismissViewControllerAnimated:v9 completion:?];
      }

      [(CKBrowserViewController *)&v11 dismissViewControllerAnimated:animatedCopy completion:completionCopy, v10.receiver, v10.super_class, self, CKBrowserViewController];
    }
  }
}

- (void)dismiss
{
  sendDelegate = [(CKBrowserViewController *)self sendDelegate];
  [sendDelegate startEditingPayload:0];
}

- (void)setCurrentBrowserConsumer:(int64_t)consumer
{
  if (self->_currentBrowserConsumer != consumer)
  {
    if ((consumer - 1) <= 1)
    {
      self->_previousConsumer = consumer;
    }

    self->_currentBrowserConsumer = consumer;
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
    balloonPlugin = [(CKBrowserViewController *)self balloonPlugin];
    appBundle = [balloonPlugin appBundle];
    bundleIdentifier = [appBundle bundleIdentifier];

    if (!bundleIdentifier)
    {
      identifier = [balloonPlugin identifier];
      v7 = [identifier isEqualToString:*MEMORY[0x1E69A69F0]];

      if (v7)
      {
        bundleIdentifier = 0;
      }

      else
      {
        bundleIdentifier = [balloonPlugin identifier];
      }
    }

    if ([bundleIdentifier hasPrefix:@"com.apple."])
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

- (BOOL)_BOOLForApplePlistKey:(id)key
{
  keyCopy = key;
  balloonPlugin = [(CKBrowserViewController *)self balloonPlugin];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([balloonPlugin proxy], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    proxy = [balloonPlugin proxy];
    v8 = [proxy objectForInfoDictionaryKey:keyCopy ofClass:objc_opt_class() inScope:2];
  }

  else
  {
    balloonPlugin2 = [(CKBrowserViewController *)self balloonPlugin];
    appBundle = [balloonPlugin2 appBundle];
    v11 = appBundle;
    if (appBundle)
    {
      proxy = appBundle;
    }

    else
    {
      balloonPlugin3 = [(CKBrowserViewController *)self balloonPlugin];
      proxy = [balloonPlugin3 pluginBundle];
    }

    v13 = [proxy objectForInfoDictionaryKey:keyCopy];
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
    bOOLValue = [v8 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)linkedBeforeDawn
{
  balloonPlugin = [(CKBrowserViewController *)self balloonPlugin];
  v3 = [balloonPlugin linkedBeforeSDKVersion:@"17.0"];

  return v3;
}

- (BOOL)linkedBeforeYukon
{
  balloonPlugin = [(CKBrowserViewController *)self balloonPlugin];
  v3 = [balloonPlugin linkedBeforeSDKVersion:@"13.0"];

  return v3;
}

- (unint64_t)sheetDetentStyle
{
  v2 = +[CKUIBehavior sharedBehaviors];
  browserViewControllerSheetDetentStyle = [v2 browserViewControllerSheetDetentStyle];

  return browserViewControllerSheetDetentStyle;
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
  sendDelegate = [(CKBrowserViewController *)self sendDelegate];
  v4 = [sendDelegate conformsToProtocol:&unk_1F06320E0];

  if (v4)
  {
    sendDelegate2 = [(CKBrowserViewController *)self sendDelegate];
  }

  else
  {
    sendDelegate2 = 0;
  }

  return sendDelegate2;
}

@end