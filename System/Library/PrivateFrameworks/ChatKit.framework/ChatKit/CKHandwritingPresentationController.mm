@interface CKHandwritingPresentationController
- (BOOL)isHandwritingLandscape;
- (CKBrowserItemPayload)pluginPayload;
- (CKHandwritingPresentationController)init;
- (CKHandwritingPresentationControllerDelegate)delegate;
- (CKHandwritingViewControllerSendDelegate)cachedSendDelegate;
- (void)_doInitialization;
- (void)_flushHandwritingWindowCacheIfNeeded;
- (void)_handleApplicationDidEnterBackground:(id)a3;
- (void)_loadCachedPayloadIntoBrowser;
- (void)_updateVisibilityState;
- (void)dealloc;
- (void)setPluginPayload:(id)a3;
- (void)setSendDelegate:(id)a3;
- (void)setVisible:(BOOL)a3 animated:(BOOL)a4;
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

    v4 = [(CKHandwritingPresentationController *)v2 animationScheduledUpdater];
    [v4 setUpdateSynchronouslyIfPossible:1];

    [(CKHandwritingPresentationController *)v2 setForegrounded:1];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v2 selector:sel__handleApplicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
    [v5 addObserver:v2 selector:sel__handleApplicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(CKHandwritingPresentationController *)self animationScheduledUpdater];
  [v4 invalidate];

  v5.receiver = self;
  v5.super_class = CKHandwritingPresentationController;
  [(CKHandwritingPresentationController *)&v5 dealloc];
}

- (void)setSendDelegate:(id)a3
{
  v4 = a3;
  [(CKHandwritingPresentationController *)self setCachedSendDelegate:v4];
  v5 = [(CKHandwritingPresentationController *)self browserViewController];
  [v5 setSendDelegate:v4];
}

- (void)setPluginPayload:(id)a3
{
  [(CKHandwritingPresentationController *)self setCachedPluginPayload:a3];

  [(CKHandwritingPresentationController *)self _loadCachedPayloadIntoBrowser];
}

- (CKBrowserItemPayload)pluginPayload
{
  v3 = [(CKHandwritingPresentationController *)self browserViewController];

  if (v3)
  {
    v4 = [(CKHandwritingPresentationController *)self browserViewController];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(CKHandwritingPresentationController *)self browserViewController];
      if ([v6 supportsResumablePayload])
      {
        v7 = [v6 resumablePayload];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    [(CKHandwritingPresentationController *)self setCachedPluginPayload:v7];
  }

  else
  {
    v7 = [(CKHandwritingPresentationController *)self cachedPluginPayload];
  }

  return v7;
}

- (void)setVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(CKHandwritingPresentationController *)self requestedVisibility]!= a3)
  {
    [(CKHandwritingPresentationController *)self setRequestedVisibility:v5];
    [(CKHandwritingPresentationController *)self setRequestedVisibilityShouldBeAnimated:v4];
    v7 = [(CKHandwritingPresentationController *)self animationScheduledUpdater];
    [v7 setNeedsUpdate];
  }
}

- (BOOL)isHandwritingLandscape
{
  v3 = [(CKHandwritingPresentationController *)self handwritingWindow];
  if (v3)
  {
    v4 = [(CKHandwritingPresentationController *)self handwritingWindow];
    v5 = [v4 isHidden] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_handleApplicationDidEnterBackground:(id)a3
{
  [(CKHandwritingPresentationController *)self setForegrounded:0];

  [(CKHandwritingPresentationController *)self _flushHandwritingWindowCacheIfNeeded];
}

- (void)_updateVisibilityState
{
  v4 = [(CKHandwritingPresentationController *)self requestedVisibility];
  if (v4 != [(CKHandwritingPresentationController *)self actualVisibility])
  {
    v5 = [(CKHandwritingPresentationController *)self requestedVisibility];
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = [(CKHandwritingPresentationController *)self requestedVisibilityShouldBeAnimated];
    if (!v5)
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
      v19 = [(CKHandwritingPresentationController *)self browserViewController];
      [v19 viewWillDisappear:*(v49 + 24)];

      v20 = [(CKHandwritingPresentationController *)self delegate];
      v21 = objc_opt_respondsToSelector();

      if (v21)
      {
        v22 = [(CKHandwritingPresentationController *)self delegate];
        [v22 handwritingPresentationControllerWillHideHandwriting:self];
      }

      if (*(v49 + 24) == 1)
      {
        v23 = [(CKHandwritingPresentationController *)self animationScheduledUpdater];
        [v23 beginHoldingUpdatesForKey:@"UpdatingVisibility"];

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

    v6 = [MEMORY[0x1E69DCD68] sharedInstance];
    [v6 disableInterfaceAutorotation:1];

    v7 = [(CKHandwritingPresentationController *)self deviceOrientationManager];

    if (!v7)
    {
      v40 = [MEMORY[0x1E696AAA8] currentHandler];
      [v40 handleFailureInMethod:a2 object:self file:@"CKHandwritingPresentationController.m" lineNumber:161 description:{@"Please set a device orientation manager on %@ before setting it to be visible", self}];
    }

    v8 = [(CKHandwritingPresentationController *)self deviceOrientationManager];
    [v8 beginListeningForOrientationEventsWithKey:@"HandwritingVisible"];

    [(CKHandwritingPresentationController *)self _doInitialization];
    v9 = [(CKHandwritingPresentationController *)self handwritingWindow];
    [v9 setHidden:0];

    if (![(CKHandwritingPresentationController *)self suppressAppearanceCallbacksBecauseOfFirstInitialization])
    {
      v10 = [(CKHandwritingPresentationController *)self browserViewController];
      [v10 viewWillAppear:*(v49 + 24)];
    }

    v11 = [(CKHandwritingPresentationController *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(CKHandwritingPresentationController *)self delegate];
      [v13 handwritingPresentationControllerWillShowHandwriting:self];
    }

    v14 = [(CKHandwritingPresentationController *)self handwritingWindow];
    [v14 setEatOrientationEvents:0];

    if ([(CKHandwritingPresentationController *)self initialInterfaceOrientation])
    {
      v15 = [(CKHandwritingPresentationController *)self initialInterfaceOrientation];
      if (v15 == 3)
      {
        v24 = [MEMORY[0x1E69DC938] currentDevice];
        [v24 setOrientation:3];

        v25 = [(CKHandwritingPresentationController *)self handwritingWindow];
        [v25 _updateInterfaceOrientationFromDeviceOrientation:0];

        v18 = [(CKHandwritingPresentationController *)self handwritingWindow];
        [v18 setEatOrientationEvents:1];
      }

      else
      {
        if (v15 != 4)
        {
          goto LABEL_21;
        }

        v16 = [MEMORY[0x1E69DC938] currentDevice];
        [v16 setOrientation:4];

        v17 = [(CKHandwritingPresentationController *)self handwritingWindow];
        [v17 _updateInterfaceOrientationFromDeviceOrientation:0];

        v18 = [(CKHandwritingPresentationController *)self handwritingWindow];
        [v18 setEatOrientationEvents:1];
      }
    }

LABEL_21:
    if (*(v49 + 24) == 1)
    {
      v26 = [(CKHandwritingPresentationController *)self animationScheduledUpdater];
      [v26 beginHoldingUpdatesForKey:@"UpdatingVisibility"];

      v27 = [(CKHandwritingPresentationController *)self browserViewController];
      v28 = [v27 view];
      [v28 setAlpha:0.0];

      CGAffineTransformMakeScale(&v47, 0.800000012, 0.800000012);
      v29 = [(CKHandwritingPresentationController *)self browserViewController];
      v30 = [v29 view];
      v46 = v47;
      [v30 setTransform:&v46];

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
      v31 = [(CKHandwritingPresentationController *)self browserViewController];
      v32 = [v31 view];
      [v32 setAlpha:1.0];

      v33 = [(CKHandwritingPresentationController *)self browserViewController];
      v34 = [v33 view];
      v35 = *(MEMORY[0x1E695EFD0] + 16);
      *&v46.a = *MEMORY[0x1E695EFD0];
      *&v46.c = v35;
      *&v46.tx = *(MEMORY[0x1E695EFD0] + 32);
      [v34 setTransform:&v46];

      [(CKHandwritingPresentationController *)self setActualVisibility:1];
      if ([(CKHandwritingPresentationController *)self suppressAppearanceCallbacksBecauseOfFirstInitialization])
      {
        [(CKHandwritingPresentationController *)self setSuppressAppearanceCallbacksBecauseOfFirstInitialization:0];
      }

      else
      {
        v36 = [(CKHandwritingPresentationController *)self browserViewController];
        [v36 viewDidAppear:0];
      }

      v37 = [(CKHandwritingPresentationController *)self delegate];
      v38 = objc_opt_respondsToSelector();

      if (v38)
      {
        v39 = [(CKHandwritingPresentationController *)self delegate];
        [v39 handwritingPresentationControllerDidShowHandwriting:self];
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
    v3 = [(CKHandwritingPresentationController *)self browserViewController];

    if (v3)
    {
      [(CKHandwritingPresentationController *)self setBrowserViewController:0];
      v4 = [(CKHandwritingPresentationController *)self handwritingWindow];
      [v4 setRootViewController:0];
    }

    v5 = [(CKHandwritingPresentationController *)self handwritingWindow];

    if (v5)
    {

      [(CKHandwritingPresentationController *)self setHandwritingWindow:0];
    }
  }
}

- (void)_doInitialization
{
  v3 = [(CKHandwritingPresentationController *)self handwritingWindow];

  if (!v3)
  {
    v4 = [CKHandwritingWindow alloc];
    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v5 bounds];
    v7 = v6;
    v8 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v8 bounds];
    v9 = [(CKHandwritingWindow *)v4 initWithFrame:0.0, 0.0, v7];
    [(CKHandwritingPresentationController *)self setHandwritingWindow:v9];

    v10 = [(CKHandwritingPresentationController *)self handwritingWindow];
    [v10 setLevel:1.79769313e308];

    v11 = [(CKHandwritingPresentationController *)self handwritingWindow];
    [v11 _setWindowControlsStatusBarOrientation:0];

    v12 = [MEMORY[0x1E69DCEB0] mainScreen];
    v13 = [(CKHandwritingPresentationController *)self handwritingWindow];
    [v13 setScreen:v12];

    v14 = [(CKHandwritingPresentationController *)self handwritingWindow];
    v15 = +[CKUIBehavior sharedBehaviors];
    [v15 presentationControllerWindowLevel];
    [v14 setWindowLevel:?];

    v16 = [(CKHandwritingPresentationController *)self handwritingWindow];
    v17 = [MEMORY[0x1E69DD2E8] keyWindow];
    v18 = [v17 windowScene];
    [v16 setWindowScene:v18];
  }

  v19 = [(CKHandwritingPresentationController *)self browserViewController];

  if (!v19)
  {
    v20 = [MEMORY[0x1E69A5AD0] sharedInstance];
    v21 = [(CKHandwritingPresentationController *)self pluginBundleID];
    v33 = [v20 balloonPluginForBundleID:v21];

    v22 = objc_alloc([v33 browserClass]);
    v23 = [(CKHandwritingPresentationController *)self browserViewController];
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
    v27 = [(CKHandwritingPresentationController *)self handwritingWindow];
    v28 = [v27 rootViewController];
    v29 = [(CKHandwritingPresentationController *)self browserViewController];

    if (v28 != v29)
    {
      v30 = [(CKHandwritingPresentationController *)self browserViewController];
      v31 = [(CKHandwritingPresentationController *)self handwritingWindow];
      [v31 setRootViewController:v30];

      [(CKHandwritingPresentationController *)self setSuppressAppearanceCallbacksBecauseOfFirstInitialization:1];
    }

    [(CKHandwritingPresentationController *)self _loadCachedPayloadIntoBrowser];
    v32 = [(CKHandwritingPresentationController *)self cachedSendDelegate];
    [v26 setSendDelegate:v32];
  }
}

- (void)_loadCachedPayloadIntoBrowser
{
  v3 = [(CKHandwritingPresentationController *)self browserViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = [(CKHandwritingPresentationController *)self browserViewController];
    if ([v6 supportsResumablePayload])
    {
      v5 = [(CKHandwritingPresentationController *)self cachedPluginPayload];
      [v6 setResumablePayload:v5];
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