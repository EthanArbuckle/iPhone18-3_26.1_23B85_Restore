@interface SFOverlayProvider
+ (BOOL)alwaysShowOverlayForDebug;
- (SFOverlayProvider)initWithURL:(id)l bundleIdentifier:(id)identifier;
- (SFOverlayProviderDelegate)delegate;
- (_SFPerSitePreferencesVendor)_preferencesVendor;
- (void)cardViewControllerDidDisappear:(id)disappear clipDidOpen:(BOOL)open persistUserSettings:(BOOL)settings;
- (void)hideOverlayAnimated:(BOOL)animated;
- (void)showOverlayInScrollView:(id)view viewController:(id)controller;
- (void)webViewBackforwardGestureNavigationDidEnd;
- (void)webViewBackforwardGestureNavigationWillBegin;
@end

@implementation SFOverlayProvider

- (SFOverlayProvider)initWithURL:(id)l bundleIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = SFOverlayProvider;
  v8 = [(SFOverlayProvider *)&v13 init];
  if (v8)
  {
    v9 = [lCopy copy];
    url = v8->_url;
    v8->_url = v9;

    objc_storeStrong(&v8->_bundleIdentifier, identifier);
    v11 = v8;
  }

  return v8;
}

+ (BOOL)alwaysShowOverlayForDebug
{
  if (alwaysShowOverlayForDebug_onceToken != -1)
  {
    +[SFOverlayProvider alwaysShowOverlayForDebug];
  }

  return alwaysShowOverlayForDebug_alwaysShowOverlay;
}

void __46__SFOverlayProvider_alwaysShowOverlayForDebug__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
  alwaysShowOverlayForDebug_alwaysShowOverlay = [v0 BOOLForKey:@"DebugAlwaysShowAppclipOverlay"];
}

- (void)showOverlayInScrollView:(id)view viewController:(id)controller
{
  viewCopy = view;
  controllerCopy = controller;
  if (self->_available)
  {
    cardViewController = self->_cardViewController;
    if (!cardViewController)
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2050000000;
      v9 = getCPSInlineCardViewControllerClass_softClass;
      v25 = getCPSInlineCardViewControllerClass_softClass;
      if (!getCPSInlineCardViewControllerClass_softClass)
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __getCPSInlineCardViewControllerClass_block_invoke;
        v21[3] = &unk_1E721C5D0;
        v21[4] = &v22;
        __getCPSInlineCardViewControllerClass_block_invoke(v21);
        v9 = v23[3];
      }

      v10 = v9;
      _Block_object_dispose(&v22, 8);
      v11 = [[v9 alloc] initWithURL:self->_url];
      v12 = self->_cardViewController;
      self->_cardViewController = v11;

      cardViewController = self->_cardViewController;
    }

    view = [(CPSInlineCardViewController *)cardViewController view];
    [viewCopy addSubview:view];

    [controllerCopy addChildViewController:self->_cardViewController];
    [(CPSInlineCardViewController *)self->_cardViewController didMoveToParentViewController:controllerCopy];
    view2 = [(CPSInlineCardViewController *)self->_cardViewController view];
    [view2 setAlpha:0.0];
    v15 = MEMORY[0x1E69DD250];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __60__SFOverlayProvider_showOverlayInScrollView_viewController___block_invoke;
    v19[3] = &unk_1E721B360;
    v20 = view2;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __60__SFOverlayProvider_showOverlayInScrollView_viewController___block_invoke_2;
    v17[3] = &unk_1E721B510;
    v18 = viewCopy;
    v16 = view2;
    [v15 _animateUsingDefaultTimingWithOptions:2 animations:v19 completion:v17];
    [(CPSInlineCardViewController *)self->_cardViewController setDelegate:self];
  }
}

- (void)hideOverlayAnimated:(BOOL)animated
{
  [(CPSInlineCardViewController *)self->_cardViewController setDelegate:0];
  view = [(CPSInlineCardViewController *)self->_cardViewController view];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__SFOverlayProvider_hideOverlayAnimated___block_invoke;
  aBlock[3] = &unk_1E721B400;
  v6 = view;
  v15 = v6;
  selfCopy = self;
  v7 = _Block_copy(aBlock);
  v8 = v7;
  if (animated)
  {
    v9 = MEMORY[0x1E69DD250];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41__SFOverlayProvider_hideOverlayAnimated___block_invoke_2;
    v12[3] = &unk_1E721B360;
    v13 = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__SFOverlayProvider_hideOverlayAnimated___block_invoke_3;
    v10[3] = &unk_1E721BA70;
    v11 = v8;
    [v9 animateWithDuration:v12 animations:v10 completion:0.2];
  }

  else
  {
    (*(v7 + 2))(v7);
  }
}

void __41__SFOverlayProvider_hideOverlayAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) superview];
  if (v2)
  {
    v5 = v2;
    [*(a1 + 32) removeFromSuperview];
    v3 = [*(*(a1 + 40) + 8) parentViewController];
    [v3 removeChildViewController:*(*(a1 + 40) + 8)];

    [*(*(a1 + 40) + 8) didMoveToParentViewController:0];
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 48));
    [WeakRetained overlayDidHide:*(a1 + 40)];

    [v5 setScrollEnabled:1];
    v2 = v5;
  }
}

- (void)webViewBackforwardGestureNavigationWillBegin
{
  parentViewController = [(CPSInlineCardViewController *)self->_cardViewController parentViewController];
  cachedOwningViewController = self->_cachedOwningViewController;
  self->_cachedOwningViewController = parentViewController;

  [(UIViewController *)self->_cachedOwningViewController removeChildViewController:self->_cardViewController];
  cardViewController = self->_cardViewController;

  [(CPSInlineCardViewController *)cardViewController didMoveToParentViewController:0];
}

- (void)webViewBackforwardGestureNavigationDidEnd
{
  [(UIViewController *)self->_cachedOwningViewController addChildViewController:self->_cardViewController];
  [(CPSInlineCardViewController *)self->_cardViewController didMoveToParentViewController:self->_cachedOwningViewController];
  cachedOwningViewController = self->_cachedOwningViewController;
  self->_cachedOwningViewController = 0;
}

- (void)cardViewControllerDidDisappear:(id)disappear clipDidOpen:(BOOL)open persistUserSettings:(BOOL)settings
{
  settingsCopy = settings;
  disappearCopy = disappear;
  if (self->_cardViewController == disappearCopy)
  {
    self->_available = 0;
    if (settingsCopy && !open)
    {
      v10 = WBS_LOG_CHANNEL_PREFIXBanners();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_18B7AC000, v10, OS_LOG_TYPE_INFO, "User cancelled app clip card by tapping the close button", v11, 2u);
      }

      if (objc_opt_respondsToSelector())
      {
        [(SFOverlayProvider *)self _updateAppClipOverlayPreferenceHook];
      }
    }

    [(SFOverlayProvider *)self hideOverlayAnimated:1];
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXBanners();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SFOverlayProvider cardViewControllerDidDisappear:v9 clipDidOpen:? persistUserSettings:?];
    }
  }
}

- (SFOverlayProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_SFPerSitePreferencesVendor)_preferencesVendor
{
  WeakRetained = objc_loadWeakRetained(&self->__preferencesVendor);

  return WeakRetained;
}

@end