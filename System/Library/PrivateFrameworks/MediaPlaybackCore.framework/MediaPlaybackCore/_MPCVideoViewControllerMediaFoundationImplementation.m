@interface _MPCVideoViewControllerMediaFoundationImplementation
- (BOOL)_isBinCompatApp;
- (BOOL)isReadyForDisplay;
- (BOOL)respondsToSelector:(SEL)a3;
- (CGRect)videoBounds;
- (CGSize)presentationSize;
- (MPCPlaybackEngine)playbackEngine;
- (MPCVideoOutputDelegate)videoOutputDelegate;
- (_MPCVideoViewControllerMediaFoundationImplementation)initWithPlaybackEngine:(id)a3;
- (id)_stateDictionary;
- (void)_transferPropertiesFromOldPlayerController:(id)a3 toNewPlayerController:(id)a4;
- (void)_updateViewControllerHierarchyForPlaybackEngine:(id)a3;
- (void)dealloc;
- (void)enterFullScreenWithCompletion:(id)a3;
- (void)exitFullScreenWithCompletion:(id)a3;
- (void)forwardInvocation:(id)a3;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)showFullScreenPresentationFromView:(id)a3 completion:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation _MPCVideoViewControllerMediaFoundationImplementation

- (MPCPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (MPCVideoOutputDelegate)videoOutputDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_videoOutputDelegate);

  return WeakRetained;
}

- (BOOL)_isBinCompatApp
{
  v2 = [(_MPCVideoViewControllerMediaFoundationImplementation *)self traitCollection];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

- (void)_transferPropertiesFromOldPlayerController:(id)a3 toNewPlayerController:(id)a4
{
  if (a3 && a4)
  {
    v5 = a4;
    [v5 setAllowsVideoFrameAnalysis:{objc_msgSend(a3, "allowsVideoFrameAnalysis")}];
  }
}

- (void)_updateViewControllerHierarchyForPlaybackEngine:(id)a3
{
  v12 = [a3 player];
  v4 = [v12 playerViewController];
  internalController = self->_internalController;
  if (internalController != v4)
  {
    [(_MPCVideoViewControllerMediaFoundationImplementation *)self _transferPropertiesFromOldPlayerController:internalController toNewPlayerController:v4];
    [(AVPlayerViewController *)self->_internalController willMoveToParentViewController:0];
    v6 = [(AVPlayerViewController *)self->_internalController view];
    v7 = [v6 superview];
    v8 = [(_MPCVideoViewControllerMediaFoundationImplementation *)self view];

    if (v7 == v8)
    {
      v9 = [(AVPlayerViewController *)self->_internalController view];
      [v9 removeFromSuperview];
    }

    [(AVPlayerViewController *)self->_internalController removeFromParentViewController];
    [(_MPCVideoViewControllerMediaFoundationImplementation *)self willChangeValueForKey:@"internalController"];
    objc_storeStrong(&self->_internalController, v4);
    [(AVPlayerViewController *)self->_internalController setDelegate:self];
    [(_MPCVideoViewControllerMediaFoundationImplementation *)self didChangeValueForKey:@"internalController"];
    if (self->_internalController)
    {
      [(_MPCVideoViewControllerMediaFoundationImplementation *)self addChildViewController:?];
      v10 = [(_MPCVideoViewControllerMediaFoundationImplementation *)self view];
      v11 = [(AVPlayerViewController *)self->_internalController view];
      [v10 addSubview:v11];

      [(AVPlayerViewController *)self->_internalController didMoveToParentViewController:self];
    }
  }
}

- (id)_stateDictionary
{
  v59[6] = *MEMORY[0x1E69E9840];
  v3 = [(_MPCVideoViewControllerMediaFoundationImplementation *)self playbackEngine];
  v4 = [(_MPCVideoViewControllerMediaFoundationImplementation *)self parentViewController];
  v51 = v4;
  v5 = [(__CFString *)v3 player];
  v38 = v5;
  v58[0] = @"_obj";
  v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), self];
  v59[0] = v50;
  v58[1] = @"videoOutputDelegate";
  v6 = [(_MPCVideoViewControllerMediaFoundationImplementation *)self videoOutputDelegate];
  v48 = v6;
  v49 = v3;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"@";
  }

  if (v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = @"@";
  }

  v59[1] = v7;
  v59[2] = v8;
  v58[2] = @"playbackEngine";
  v58[3] = @"video";
  v56[0] = @"isReadyForDisplay";
  v9 = [(_MPCVideoViewControllerMediaFoundationImplementation *)self isReadyForDisplay];
  v10 = @"NO";
  if (v9)
  {
    v10 = @"YES";
  }

  v57[0] = v10;
  v56[1] = @"presentationSize";
  [(_MPCVideoViewControllerMediaFoundationImplementation *)self presentationSize];
  v47 = NSStringFromCGSize(v61);
  v57[1] = v47;
  v56[2] = @"videoBounds";
  [(_MPCVideoViewControllerMediaFoundationImplementation *)self videoBounds];
  v46 = NSStringFromCGRect(v62);
  v57[2] = v46;
  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:3];
  v59[3] = v45;
  v58[4] = @"view";
  v54[0] = @"_obj";
  v11 = [(_MPCVideoViewControllerMediaFoundationImplementation *)self view];
  v44 = v11;
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = @"@";
  }

  v55[0] = v12;
  v54[1] = @"internalViewController.view";
  v43 = [(_MPCVideoViewControllerMediaFoundationImplementation *)self internalController];
  v13 = [v43 view];
  v42 = v13;
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"@";
  }

  v55[1] = v14;
  v54[2] = @"parentViewController.view.recursiveDescription";
  v41 = [(__CFString *)v4 view];
  v40 = [v41 valueForKey:@"recursiveDescription"];
  v15 = [v40 componentsSeparatedByString:@"\n"];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = @"@";
  }

  v55[2] = v17;
  v54[3] = @"view.superview";
  v39 = [(_MPCVideoViewControllerMediaFoundationImplementation *)self view];
  v18 = [v39 superview];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = @"@";
  }

  v55[3] = v20;
  v54[4] = @"view.superview.recursiveDescription";
  v37 = [(_MPCVideoViewControllerMediaFoundationImplementation *)self view];
  v21 = [v37 superview];
  v22 = [v21 valueForKey:@"recursiveDescription"];
  v23 = [v22 componentsSeparatedByString:@"\n"];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = @"@";
  }

  v55[4] = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:5];
  v59[4] = v26;
  v58[5] = @"viewController";
  v52[0] = @"playbackEngine.implementation.playerViewController";
  v27 = [v5 playerViewController];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = @"@";
  }

  v53[0] = v29;
  v52[1] = @"internalViewController";
  v30 = [(_MPCVideoViewControllerMediaFoundationImplementation *)self internalController];
  v31 = v30;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = @"@";
  }

  v52[2] = @"parentViewController";
  v33 = v51;
  if (!v51)
  {
    v33 = @"@";
  }

  v53[1] = v32;
  v53[2] = v33;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:3];
  v59[5] = v34;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:6];

  return v35;
}

- (void)exitFullScreenWithCompletion:(id)a3
{
  internalController = self->_internalController;
  if (internalController)
  {
    [(AVPlayerViewController *)internalController exitFullScreenWithCompletion:a3];
  }

  else
  {
    (*(a3 + 2))(a3);
  }
}

- (void)enterFullScreenWithCompletion:(id)a3
{
  internalController = self->_internalController;
  if (internalController)
  {
    [(AVPlayerViewController *)internalController enterFullScreenWithCompletion:a3];
  }

  else
  {
    (*(a3 + 2))(a3);
  }
}

- (void)showFullScreenPresentationFromView:(id)a3 completion:(id)a4
{
  internalController = self->_internalController;
  if (internalController)
  {
    [(AVPlayerViewController *)internalController showFullScreenPresentationFromView:a3 completion:a4];
  }

  else
  {
    (*(a4 + 2))(a4);
  }
}

- (BOOL)isReadyForDisplay
{
  if ([(AVPlayerViewController *)self->_internalController isReadyForDisplay])
  {
    return 1;
  }

  internalController = self->_internalController;

  return [(AVPlayerViewController *)internalController isPictureInPictureActive];
}

- (CGRect)videoBounds
{
  [(AVPlayerViewController *)self->_internalController videoBounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGSize)presentationSize
{
  v2 = [(AVPlayerViewController *)self->_internalController player];
  v3 = [v2 currentItem];
  [v3 presentationSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  if (self->_internalController)
  {
    internalController = self->_internalController;

    [(AVPlayerViewController *)internalController presentViewController:a3 animated:a4 completion:a5];
  }

  else
  {
    v9 = v5;
    v10 = v6;
    v8.receiver = self;
    v8.super_class = _MPCVideoViewControllerMediaFoundationImplementation;
    [(_MPCVideoViewControllerMediaFoundationImplementation *)&v8 presentViewController:a3 animated:a4 completion:a5];
  }
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = _MPCVideoViewControllerMediaFoundationImplementation;
  [(_MPCVideoViewControllerMediaFoundationImplementation *)&v13 viewDidLayoutSubviews];
  v3 = [(_MPCVideoViewControllerMediaFoundationImplementation *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(AVPlayerViewController *)self->_internalController view];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = _MPCVideoViewControllerMediaFoundationImplementation;
  [(_MPCVideoViewControllerMediaFoundationImplementation *)&v5 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  v4 = [(_MPCVideoViewControllerMediaFoundationImplementation *)self view];
  [v4 setBackgroundColor:v3];
}

- (void)forwardInvocation:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 selector];
  v6 = &unk_1F45C9F00;
  if (protocol_getMethodDescription(v6, v5, 1, 1).name || protocol_getMethodDescription(v6, v5, 0, 1).name || protocol_getMethodDescription(v6, v5, 1, 0).name)
  {
  }

  else
  {
    name = protocol_getMethodDescription(v6, v5, 0, 0).name;

    if (!name)
    {
      v16.receiver = self;
      v16.super_class = _MPCVideoViewControllerMediaFoundationImplementation;
      [(_MPCVideoViewControllerMediaFoundationImplementation *)&v16 forwardInvocation:v4];
      goto LABEL_15;
    }
  }

  v7 = NSStringFromSelector([v4 selector]);
  v8 = [v7 stringByReplacingOccurrencesOfString:@"playerViewController" withString:@"videoOutput"];

  v9 = NSSelectorFromString(v8);
  v10 = &unk_1F45FD368;
  if (protocol_getMethodDescription(v10, v9, 1, 1).name || protocol_getMethodDescription(v10, v9, 0, 1).name || protocol_getMethodDescription(v10, v9, 1, 0).name)
  {
  }

  else
  {
    v15 = protocol_getMethodDescription(v10, v9, 0, 0).name;

    if (!v15)
    {
      v9 = 0;
    }
  }

  v11 = [(_MPCVideoViewControllerMediaFoundationImplementation *)self videoOutputDelegate];
  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(v9);
    *buf = 138543874;
    *&buf[4] = self;
    v18 = 2114;
    v19 = v13;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ forwarding AV invocation %{public}@ to delegate %{public}@", buf, 0x20u);
  }

  if (v9 && v11)
  {
    [v4 setSelector:v9];
    *buf = self;
    [v4 setArgument:buf atIndex:2];
    [v4 invokeWithTarget:v11];
  }

LABEL_15:
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v5 = &unk_1F45C9F00;
  if (protocol_getMethodDescription(v5, a3, 1, 1).name || protocol_getMethodDescription(v5, a3, 0, 1).name || protocol_getMethodDescription(v5, a3, 1, 0).name)
  {
  }

  else
  {
    name = protocol_getMethodDescription(v5, a3, 0, 0).name;

    if (!name)
    {
      goto LABEL_15;
    }
  }

  v6 = NSStringFromSelector(a3);
  v7 = [v6 stringByReplacingOccurrencesOfString:@"playerViewController" withString:@"videoOutput"];

  v8 = NSSelectorFromString(v7);
  v9 = &unk_1F45FD368;
  if (protocol_getMethodDescription(v9, v8, 1, 1).name || protocol_getMethodDescription(v9, v8, 0, 1).name || protocol_getMethodDescription(v9, v8, 1, 0).name)
  {
  }

  else
  {
    v13 = protocol_getMethodDescription(v9, v8, 0, 0).name;

    if (!v13)
    {

      goto LABEL_15;
    }
  }

  if (!v8)
  {
LABEL_15:
    v15.receiver = self;
    v15.super_class = _MPCVideoViewControllerMediaFoundationImplementation;
    v11 = [(_MPCVideoViewControllerMediaFoundationImplementation *)&v15 respondsToSelector:a3];
    return v11 & 1;
  }

  v10 = [(_MPCVideoViewControllerMediaFoundationImplementation *)self videoOutputDelegate];
  v11 = objc_opt_respondsToSelector();

  return v11 & 1;
}

- (void)dealloc
{
  MEMORY[0x1C6955540](self->_stateHandle, a2);
  notify_cancel(self->_videoDebugToken);
  v3.receiver = self;
  v3.super_class = _MPCVideoViewControllerMediaFoundationImplementation;
  [(_MPCVideoViewControllerMediaFoundationImplementation *)&v3 dealloc];
}

- (_MPCVideoViewControllerMediaFoundationImplementation)initWithPlaybackEngine:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _MPCVideoViewControllerMediaFoundationImplementation;
  v5 = [(_MPCVideoViewControllerMediaFoundationImplementation *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playbackEngine, v4);
    [v4 addEngineObserver:v6];
    [(_MPCVideoViewControllerMediaFoundationImplementation *)v6 _updateViewControllerHierarchyForPlaybackEngine:v4];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __79___MPCVideoViewControllerMediaFoundationImplementation_initWithPlaybackEngine___block_invoke;
    v14[3] = &unk_1E8239270;
    v7 = v6;
    v15 = v7;
    v7->_stateHandle = __79___MPCVideoViewControllerMediaFoundationImplementation_initWithPlaybackEngine___block_invoke(v14);
    if (MSVDeviceOSIsInternalInstall())
    {
      objc_initWeak(&location, v7);
      v8 = MEMORY[0x1E69E96A0];
      v9 = MEMORY[0x1E69E96A0];
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __79___MPCVideoViewControllerMediaFoundationImplementation_initWithPlaybackEngine___block_invoke_3;
      handler[3] = &unk_1E8237408;
      objc_copyWeak(&v12, &location);
      notify_register_dispatch("com.apple.mediaplaybackcore.videodebug", &v7->_videoDebugToken, v8, handler);

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }

  return v6;
}

@end