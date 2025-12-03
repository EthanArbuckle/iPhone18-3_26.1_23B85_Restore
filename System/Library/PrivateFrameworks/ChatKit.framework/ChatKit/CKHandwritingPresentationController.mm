@interface CKHandwritingPresentationController
- (BOOL)isHandwritingLandscape;
- (CKBrowserItemPayload)pluginPayload;
- (CKHandwritingPresentationController)init;
- (CKHandwritingPresentationControllerDelegate)delegate;
- (CKHandwritingViewControllerSendDelegate)cachedSendDelegate;
- (void)_doInitialization;
- (void)_flushHandwritingWindowCacheIfNeeded;
- (void)_handleApplicationDidEnterBackground:(id)background;
- (void)_loadCachedPayloadIntoBrowser;
- (void)_updateVisibilityState;
- (void)dealloc;
- (void)setPluginPayload:(id)payload;
- (void)setSendDelegate:(id)delegate;
- (void)setVisible:(BOOL)visible animated:(BOOL)animated;
@end

@implementation CKHandwritingPresentationController

- (CKHandwritingPresentationController)init
{
  v7.receiver = self;
  v7.super_class = CKHandwritingPresentationController;
  v2 = [(CKHandwritingPresentationController *)&v7 init];
  if (v2)
  {
    v3 = [[CKScheduledUpdater alloc] initWithTarget:v2 action:sel__updateVisibilityState];
    [(CKHandwritingPresentationController *)v2 setAnimationScheduledUpdater:v3];

    animationScheduledUpdater = [(CKHandwritingPresentationController *)v2 animationScheduledUpdater];
    [animationScheduledUpdater setUpdateSynchronouslyIfPossible:1];

    [(CKHandwritingPresentationController *)v2 setForegrounded:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleApplicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
    [defaultCenter addObserver:v2 selector:sel__handleApplicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  animationScheduledUpdater = [(CKHandwritingPresentationController *)self animationScheduledUpdater];
  [animationScheduledUpdater invalidate];

  v5.receiver = self;
  v5.super_class = CKHandwritingPresentationController;
  [(CKHandwritingPresentationController *)&v5 dealloc];
}

- (void)setSendDelegate:(id)delegate
{
  delegateCopy = delegate;
  [(CKHandwritingPresentationController *)self setCachedSendDelegate:delegateCopy];
  browserViewController = [(CKHandwritingPresentationController *)self browserViewController];
  [browserViewController setSendDelegate:delegateCopy];
}

- (void)setPluginPayload:(id)payload
{
  [(CKHandwritingPresentationController *)self setCachedPluginPayload:payload];

  [(CKHandwritingPresentationController *)self _loadCachedPayloadIntoBrowser];
}

- (CKBrowserItemPayload)pluginPayload
{
  browserViewController = [(CKHandwritingPresentationController *)self browserViewController];

  if (browserViewController)
  {
    browserViewController2 = [(CKHandwritingPresentationController *)self browserViewController];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      browserViewController3 = [(CKHandwritingPresentationController *)self browserViewController];
      if ([browserViewController3 supportsResumablePayload])
      {
        resumablePayload = [browserViewController3 resumablePayload];
      }

      else
      {
        resumablePayload = 0;
      }
    }

    else
    {
      resumablePayload = 0;
    }

    [(CKHandwritingPresentationController *)self setCachedPluginPayload:resumablePayload];
  }

  else
  {
    resumablePayload = [(CKHandwritingPresentationController *)self cachedPluginPayload];
  }

  return resumablePayload;
}

- (void)setVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  if ([(CKHandwritingPresentationController *)self requestedVisibility]!= visible)
  {
    [(CKHandwritingPresentationController *)self setRequestedVisibility:visibleCopy];
    [(CKHandwritingPresentationController *)self setRequestedVisibilityShouldBeAnimated:animatedCopy];
    animationScheduledUpdater = [(CKHandwritingPresentationController *)self animationScheduledUpdater];
    [animationScheduledUpdater setNeedsUpdate];
  }
}

- (BOOL)isHandwritingLandscape
{
  handwritingWindow = [(CKHandwritingPresentationController *)self handwritingWindow];
  if (handwritingWindow)
  {
    handwritingWindow2 = [(CKHandwritingPresentationController *)self handwritingWindow];
    v5 = [handwritingWindow2 isHidden] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_handleApplicationDidEnterBackground:(id)background
{
  [(CKHandwritingPresentationController *)self setForegrounded:0];

  [(CKHandwritingPresentationController *)self _flushHandwritingWindowCacheIfNeeded];
}

- (void)_updateVisibilityState
{
  requestedVisibility = [(CKHandwritingPresentationController *)self requestedVisibility];
  if (requestedVisibility != [(CKHandwritingPresentationController *)self actualVisibility])
  {
    requestedVisibility2 = [(CKHandwritingPresentationController *)self requestedVisibility];
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    requestedVisibilityShouldBeAnimated = [(CKHandwritingPresentationController *)self requestedVisibilityShouldBeAnimated];
    if (!requestedVisibility2)
    {
      v46.a = 0.0;
      *&v46.b = &v46;
      *&v46.c = 0x3032000000;
      *&v46.d = __Block_byref_object_copy__62;
      *&v46.tx = __Block_byref_object_dispose__62;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __61__CKHandwritingPresentationController__updateVisibilityState__block_invoke_74;
      aBlock[3] = &unk_1E72F6A78;
      aBlock[4] = self;
      aBlock[5] = &v48;
      *&v46.ty = _Block_copy(aBlock);
      browserViewController = [(CKHandwritingPresentationController *)self browserViewController];
      [browserViewController viewWillDisappear:*(v49 + 24)];

      delegate = [(CKHandwritingPresentationController *)self delegate];
      v21 = objc_opt_respondsToSelector();

      if (v21)
      {
        delegate2 = [(CKHandwritingPresentationController *)self delegate];
        [delegate2 handwritingPresentationControllerWillHideHandwriting:self];
      }

      if (*(v49 + 24) == 1)
      {
        animationScheduledUpdater = [(CKHandwritingPresentationController *)self animationScheduledUpdater];
        [animationScheduledUpdater beginHoldingUpdatesForKey:@"UpdatingVisibility"];

        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __61__CKHandwritingPresentationController__updateVisibilityState__block_invoke_2_79;
        v42[3] = &unk_1E72EBA18;
        v42[4] = self;
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __61__CKHandwritingPresentationController__updateVisibilityState__block_invoke_3;
        v41[3] = &unk_1E72F6AA0;
        v41[4] = self;
        v41[5] = &v46;
        [MEMORY[0x1E69DD250] animateWithDuration:v42 animations:v41 completion:0.25];
      }

      else
      {
        (*(*(*&v46.b + 40) + 16))();
      }

      _Block_object_dispose(&v46, 8);

      goto LABEL_28;
    }

    mEMORY[0x1E69DCD68] = [MEMORY[0x1E69DCD68] sharedInstance];
    [mEMORY[0x1E69DCD68] disableInterfaceAutorotation:1];

    deviceOrientationManager = [(CKHandwritingPresentationController *)self deviceOrientationManager];

    if (!deviceOrientationManager)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"CKHandwritingPresentationController.m" lineNumber:161 description:{@"Please set a device orientation manager on %@ before setting it to be visible", self}];
    }

    deviceOrientationManager2 = [(CKHandwritingPresentationController *)self deviceOrientationManager];
    [deviceOrientationManager2 beginListeningForOrientationEventsWithKey:@"HandwritingVisible"];

    [(CKHandwritingPresentationController *)self _doInitialization];
    handwritingWindow = [(CKHandwritingPresentationController *)self handwritingWindow];
    [handwritingWindow setHidden:0];

    if (![(CKHandwritingPresentationController *)self suppressAppearanceCallbacksBecauseOfFirstInitialization])
    {
      browserViewController2 = [(CKHandwritingPresentationController *)self browserViewController];
      [browserViewController2 viewWillAppear:*(v49 + 24)];
    }

    delegate3 = [(CKHandwritingPresentationController *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegate4 = [(CKHandwritingPresentationController *)self delegate];
      [delegate4 handwritingPresentationControllerWillShowHandwriting:self];
    }

    handwritingWindow2 = [(CKHandwritingPresentationController *)self handwritingWindow];
    [handwritingWindow2 setEatOrientationEvents:0];

    if ([(CKHandwritingPresentationController *)self initialInterfaceOrientation])
    {
      initialInterfaceOrientation = [(CKHandwritingPresentationController *)self initialInterfaceOrientation];
      if (initialInterfaceOrientation == 3)
      {
        currentDevice = [MEMORY[0x1E69DC938] currentDevice];
        [currentDevice setOrientation:3];

        handwritingWindow3 = [(CKHandwritingPresentationController *)self handwritingWindow];
        [handwritingWindow3 _updateInterfaceOrientationFromDeviceOrientation:0];

        handwritingWindow4 = [(CKHandwritingPresentationController *)self handwritingWindow];
        [handwritingWindow4 setEatOrientationEvents:1];
      }

      else
      {
        if (initialInterfaceOrientation != 4)
        {
          goto LABEL_21;
        }

        currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
        [currentDevice2 setOrientation:4];

        handwritingWindow5 = [(CKHandwritingPresentationController *)self handwritingWindow];
        [handwritingWindow5 _updateInterfaceOrientationFromDeviceOrientation:0];

        handwritingWindow4 = [(CKHandwritingPresentationController *)self handwritingWindow];
        [handwritingWindow4 setEatOrientationEvents:1];
      }
    }

LABEL_21:
    if (*(v49 + 24) == 1)
    {
      animationScheduledUpdater2 = [(CKHandwritingPresentationController *)self animationScheduledUpdater];
      [animationScheduledUpdater2 beginHoldingUpdatesForKey:@"UpdatingVisibility"];

      browserViewController3 = [(CKHandwritingPresentationController *)self browserViewController];
      view = [browserViewController3 view];
      [view setAlpha:0.0];

      CGAffineTransformMakeScale(&v47, 0.800000012, 0.800000012);
      browserViewController4 = [(CKHandwritingPresentationController *)self browserViewController];
      view2 = [browserViewController4 view];
      v46 = v47;
      [view2 setTransform:&v46];

      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __61__CKHandwritingPresentationController__updateVisibilityState__block_invoke;
      v45[3] = &unk_1E72EBA18;
      v45[4] = self;
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __61__CKHandwritingPresentationController__updateVisibilityState__block_invoke_2;
      v44[3] = &unk_1E72EB9C8;
      v44[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v45 animations:v44 completion:0.25];
    }

    else
    {
      browserViewController5 = [(CKHandwritingPresentationController *)self browserViewController];
      view3 = [browserViewController5 view];
      [view3 setAlpha:1.0];

      browserViewController6 = [(CKHandwritingPresentationController *)self browserViewController];
      view4 = [browserViewController6 view];
      v35 = *(MEMORY[0x1E695EFD0] + 16);
      *&v46.a = *MEMORY[0x1E695EFD0];
      *&v46.c = v35;
      *&v46.tx = *(MEMORY[0x1E695EFD0] + 32);
      [view4 setTransform:&v46];

      [(CKHandwritingPresentationController *)self setActualVisibility:1];
      if ([(CKHandwritingPresentationController *)self suppressAppearanceCallbacksBecauseOfFirstInitialization])
      {
        [(CKHandwritingPresentationController *)self setSuppressAppearanceCallbacksBecauseOfFirstInitialization:0];
      }

      else
      {
        browserViewController7 = [(CKHandwritingPresentationController *)self browserViewController];
        [browserViewController7 viewDidAppear:0];
      }

      delegate5 = [(CKHandwritingPresentationController *)self delegate];
      v38 = objc_opt_respondsToSelector();

      if (v38)
      {
        delegate6 = [(CKHandwritingPresentationController *)self delegate];
        [delegate6 handwritingPresentationControllerDidShowHandwriting:self];
      }
    }

LABEL_28:
    _Block_object_dispose(&v48, 8);
  }
}

void __61__CKHandwritingPresentationController__updateVisibilityState__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) browserViewController];
  v3 = [v2 view];
  [v3 setAlpha:1.0];

  v4 = [*(a1 + 32) browserViewController];
  v5 = [v4 view];
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  v7[0] = *MEMORY[0x1E695EFD0];
  v7[1] = v6;
  v7[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v5 setTransform:v7];
}

void __61__CKHandwritingPresentationController__updateVisibilityState__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setActualVisibility:1];
  v2 = [*(a1 + 32) suppressAppearanceCallbacksBecauseOfFirstInitialization];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 setSuppressAppearanceCallbacksBecauseOfFirstInitialization:0];
  }

  else
  {
    v4 = [v3 browserViewController];
    [v4 viewDidAppear:1];
  }

  v5 = [*(a1 + 32) delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [*(a1 + 32) delegate];
    [v7 handwritingPresentationControllerDidShowHandwriting:*(a1 + 32)];
  }

  v8 = [*(a1 + 32) animationScheduledUpdater];
  [v8 endHoldingUpdatesForKey:@"UpdatingVisibility"];
}

uint64_t __61__CKHandwritingPresentationController__updateVisibilityState__block_invoke_74(uint64_t a1)
{
  v2 = [*(a1 + 32) handwritingWindow];
  [v2 setHidden:1];

  v3 = [*(a1 + 32) browserViewController];
  [v3 viewDidDisappear:*(*(*(a1 + 40) + 8) + 24)];

  v4 = [*(a1 + 32) delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [*(a1 + 32) delegate];
    [v6 handwritingPresentationControllerDidHideHandwriting:*(a1 + 32)];
  }

  v7 = [*(a1 + 32) deviceOrientationManager];
  [v7 endListeningForOrientationEventsWithKey:@"HandwritingVisible"];

  [*(a1 + 32) setActualVisibility:0];
  v8 = [MEMORY[0x1E69DCD68] sharedInstance];
  [v8 disableInterfaceAutorotation:0];

  v9 = *(a1 + 32);

  return [v9 _flushHandwritingWindowCacheIfNeeded];
}

void __61__CKHandwritingPresentationController__updateVisibilityState__block_invoke_2_79(uint64_t a1)
{
  v2 = [*(a1 + 32) browserViewController];
  v3 = [v2 view];
  [v3 setAlpha:0.0];

  CGAffineTransformMakeScale(&v7, 0.800000012, 0.800000012);
  v4 = [*(a1 + 32) browserViewController];
  v5 = [v4 view];
  v6 = v7;
  [v5 setTransform:&v6];
}

void __61__CKHandwritingPresentationController__updateVisibilityState__block_invoke_3(uint64_t a1)
{
  (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
  v2 = [*(a1 + 32) animationScheduledUpdater];
  [v2 endHoldingUpdatesForKey:@"UpdatingVisibility"];
}

- (void)_flushHandwritingWindowCacheIfNeeded
{
  if (![(CKHandwritingPresentationController *)self foregrounded]&& ![(CKHandwritingPresentationController *)self actualVisibility]&& ![(CKHandwritingPresentationController *)self requestedVisibility])
  {
    browserViewController = [(CKHandwritingPresentationController *)self browserViewController];

    if (browserViewController)
    {
      [(CKHandwritingPresentationController *)self setBrowserViewController:0];
      handwritingWindow = [(CKHandwritingPresentationController *)self handwritingWindow];
      [handwritingWindow setRootViewController:0];
    }

    handwritingWindow2 = [(CKHandwritingPresentationController *)self handwritingWindow];

    if (handwritingWindow2)
    {

      [(CKHandwritingPresentationController *)self setHandwritingWindow:0];
    }
  }
}

- (void)_doInitialization
{
  handwritingWindow = [(CKHandwritingPresentationController *)self handwritingWindow];

  if (!handwritingWindow)
  {
    v4 = [CKHandwritingWindow alloc];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v7 = v6;
    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 bounds];
    v9 = [(CKHandwritingWindow *)v4 initWithFrame:0.0, 0.0, v7];
    [(CKHandwritingPresentationController *)self setHandwritingWindow:v9];

    handwritingWindow2 = [(CKHandwritingPresentationController *)self handwritingWindow];
    [handwritingWindow2 setLevel:1.79769313e308];

    handwritingWindow3 = [(CKHandwritingPresentationController *)self handwritingWindow];
    [handwritingWindow3 _setWindowControlsStatusBarOrientation:0];

    mainScreen3 = [MEMORY[0x1E69DCEB0] mainScreen];
    handwritingWindow4 = [(CKHandwritingPresentationController *)self handwritingWindow];
    [handwritingWindow4 setScreen:mainScreen3];

    handwritingWindow5 = [(CKHandwritingPresentationController *)self handwritingWindow];
    v15 = +[CKUIBehavior sharedBehaviors];
    [v15 presentationControllerWindowLevel];
    [handwritingWindow5 setWindowLevel:?];

    handwritingWindow6 = [(CKHandwritingPresentationController *)self handwritingWindow];
    keyWindow = [MEMORY[0x1E69DD2E8] keyWindow];
    windowScene = [keyWindow windowScene];
    [handwritingWindow6 setWindowScene:windowScene];
  }

  browserViewController = [(CKHandwritingPresentationController *)self browserViewController];

  if (!browserViewController)
  {
    mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
    pluginBundleID = [(CKHandwritingPresentationController *)self pluginBundleID];
    v33 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:pluginBundleID];

    v22 = objc_alloc([v33 browserClass]);
    browserViewController2 = [(CKHandwritingPresentationController *)self browserViewController];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      v25 = [v22 initWithBalloonPlugin:v33 dataSource:0];
    }

    else
    {
      v25 = [v22 initWithBalloonPlugin:v33];
    }

    v26 = v25;
    [(CKHandwritingPresentationController *)self setBrowserViewController:v25];
    handwritingWindow7 = [(CKHandwritingPresentationController *)self handwritingWindow];
    rootViewController = [handwritingWindow7 rootViewController];
    browserViewController3 = [(CKHandwritingPresentationController *)self browserViewController];

    if (rootViewController != browserViewController3)
    {
      browserViewController4 = [(CKHandwritingPresentationController *)self browserViewController];
      handwritingWindow8 = [(CKHandwritingPresentationController *)self handwritingWindow];
      [handwritingWindow8 setRootViewController:browserViewController4];

      [(CKHandwritingPresentationController *)self setSuppressAppearanceCallbacksBecauseOfFirstInitialization:1];
    }

    [(CKHandwritingPresentationController *)self _loadCachedPayloadIntoBrowser];
    cachedSendDelegate = [(CKHandwritingPresentationController *)self cachedSendDelegate];
    [v26 setSendDelegate:cachedSendDelegate];
  }
}

- (void)_loadCachedPayloadIntoBrowser
{
  browserViewController = [(CKHandwritingPresentationController *)self browserViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    browserViewController2 = [(CKHandwritingPresentationController *)self browserViewController];
    if ([browserViewController2 supportsResumablePayload])
    {
      cachedPluginPayload = [(CKHandwritingPresentationController *)self cachedPluginPayload];
      [browserViewController2 setResumablePayload:cachedPluginPayload];
    }
  }
}

- (CKHandwritingPresentationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CKHandwritingViewControllerSendDelegate)cachedSendDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cachedSendDelegate);

  return WeakRetained;
}

@end