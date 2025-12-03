@interface _MPCVideoViewControllerMediaFoundationImplementation
- (BOOL)_isBinCompatApp;
- (BOOL)isReadyForDisplay;
- (BOOL)respondsToSelector:(SEL)selector;
- (CGRect)videoBounds;
- (CGSize)presentationSize;
- (MPCPlaybackEngine)playbackEngine;
- (MPCVideoOutputDelegate)videoOutputDelegate;
- (_MPCVideoViewControllerMediaFoundationImplementation)initWithPlaybackEngine:(id)engine;
- (id)_stateDictionary;
- (void)_transferPropertiesFromOldPlayerController:(id)controller toNewPlayerController:(id)playerController;
- (void)_updateViewControllerHierarchyForPlaybackEngine:(id)engine;
- (void)dealloc;
- (void)enterFullScreenWithCompletion:(id)completion;
- (void)exitFullScreenWithCompletion:(id)completion;
- (void)forwardInvocation:(id)invocation;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)showFullScreenPresentationFromView:(id)view completion:(id)completion;
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
  traitCollection = [(_MPCVideoViewControllerMediaFoundationImplementation *)self traitCollection];
  v3 = [traitCollection userInterfaceIdiom] == 1;

  return v3;
}

- (void)_transferPropertiesFromOldPlayerController:(id)controller toNewPlayerController:(id)playerController
{
  if (controller && playerController)
  {
    playerControllerCopy = playerController;
    [playerControllerCopy setAllowsVideoFrameAnalysis:{objc_msgSend(controller, "allowsVideoFrameAnalysis")}];
  }
}

- (void)_updateViewControllerHierarchyForPlaybackEngine:(id)engine
{
  player = [engine player];
  playerViewController = [player playerViewController];
  internalController = self->_internalController;
  if (internalController != playerViewController)
  {
    [(_MPCVideoViewControllerMediaFoundationImplementation *)self _transferPropertiesFromOldPlayerController:internalController toNewPlayerController:playerViewController];
    [(AVPlayerViewController *)self->_internalController willMoveToParentViewController:0];
    view = [(AVPlayerViewController *)self->_internalController view];
    superview = [view superview];
    view2 = [(_MPCVideoViewControllerMediaFoundationImplementation *)self view];

    if (superview == view2)
    {
      view3 = [(AVPlayerViewController *)self->_internalController view];
      [view3 removeFromSuperview];
    }

    [(AVPlayerViewController *)self->_internalController removeFromParentViewController];
    [(_MPCVideoViewControllerMediaFoundationImplementation *)self willChangeValueForKey:@"internalController"];
    objc_storeStrong(&self->_internalController, playerViewController);
    [(AVPlayerViewController *)self->_internalController setDelegate:self];
    [(_MPCVideoViewControllerMediaFoundationImplementation *)self didChangeValueForKey:@"internalController"];
    if (self->_internalController)
    {
      [(_MPCVideoViewControllerMediaFoundationImplementation *)self addChildViewController:?];
      view4 = [(_MPCVideoViewControllerMediaFoundationImplementation *)self view];
      view5 = [(AVPlayerViewController *)self->_internalController view];
      [view4 addSubview:view5];

      [(AVPlayerViewController *)self->_internalController didMoveToParentViewController:self];
    }
  }
}

- (id)_stateDictionary
{
  v59[6] = *MEMORY[0x1E69E9840];
  playbackEngine = [(_MPCVideoViewControllerMediaFoundationImplementation *)self playbackEngine];
  parentViewController = [(_MPCVideoViewControllerMediaFoundationImplementation *)self parentViewController];
  v51 = parentViewController;
  player = [(__CFString *)playbackEngine player];
  v38 = player;
  v58[0] = @"_obj";
  v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), self];
  v59[0] = v50;
  v58[1] = @"videoOutputDelegate";
  videoOutputDelegate = [(_MPCVideoViewControllerMediaFoundationImplementation *)self videoOutputDelegate];
  v48 = videoOutputDelegate;
  v49 = playbackEngine;
  if (videoOutputDelegate)
  {
    v7 = videoOutputDelegate;
  }

  else
  {
    v7 = @"@";
  }

  if (playbackEngine)
  {
    v8 = playbackEngine;
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
  isReadyForDisplay = [(_MPCVideoViewControllerMediaFoundationImplementation *)self isReadyForDisplay];
  v10 = @"NO";
  if (isReadyForDisplay)
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
  view = [(_MPCVideoViewControllerMediaFoundationImplementation *)self view];
  v44 = view;
  if (view)
  {
    v12 = view;
  }

  else
  {
    v12 = @"@";
  }

  v55[0] = v12;
  v54[1] = @"internalViewController.view";
  internalController = [(_MPCVideoViewControllerMediaFoundationImplementation *)self internalController];
  view2 = [internalController view];
  v42 = view2;
  if (view2)
  {
    v14 = view2;
  }

  else
  {
    v14 = @"@";
  }

  v55[1] = v14;
  v54[2] = @"parentViewController.view.recursiveDescription";
  view3 = [(__CFString *)parentViewController view];
  v40 = [view3 valueForKey:@"recursiveDescription"];
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
  view4 = [(_MPCVideoViewControllerMediaFoundationImplementation *)self view];
  superview = [view4 superview];
  v19 = superview;
  if (superview)
  {
    v20 = superview;
  }

  else
  {
    v20 = @"@";
  }

  v55[3] = v20;
  v54[4] = @"view.superview.recursiveDescription";
  view5 = [(_MPCVideoViewControllerMediaFoundationImplementation *)self view];
  superview2 = [view5 superview];
  v22 = [superview2 valueForKey:@"recursiveDescription"];
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
  playerViewController = [player playerViewController];
  v28 = playerViewController;
  if (playerViewController)
  {
    v29 = playerViewController;
  }

  else
  {
    v29 = @"@";
  }

  v53[0] = v29;
  v52[1] = @"internalViewController";
  internalController2 = [(_MPCVideoViewControllerMediaFoundationImplementation *)self internalController];
  v31 = internalController2;
  if (internalController2)
  {
    v32 = internalController2;
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

- (void)exitFullScreenWithCompletion:(id)completion
{
  internalController = self->_internalController;
  if (internalController)
  {
    [(AVPlayerViewController *)internalController exitFullScreenWithCompletion:completion];
  }

  else
  {
    (*(completion + 2))(completion);
  }
}

- (void)enterFullScreenWithCompletion:(id)completion
{
  internalController = self->_internalController;
  if (internalController)
  {
    [(AVPlayerViewController *)internalController enterFullScreenWithCompletion:completion];
  }

  else
  {
    (*(completion + 2))(completion);
  }
}

- (void)showFullScreenPresentationFromView:(id)view completion:(id)completion
{
  internalController = self->_internalController;
  if (internalController)
  {
    [(AVPlayerViewController *)internalController showFullScreenPresentationFromView:view completion:completion];
  }

  else
  {
    (*(completion + 2))(completion);
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
  player = [(AVPlayerViewController *)self->_internalController player];
  currentItem = [player currentItem];
  [currentItem presentationSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  if (self->_internalController)
  {
    internalController = self->_internalController;

    [(AVPlayerViewController *)internalController presentViewController:controller animated:animated completion:completion];
  }

  else
  {
    v9 = v5;
    v10 = v6;
    v8.receiver = self;
    v8.super_class = _MPCVideoViewControllerMediaFoundationImplementation;
    [(_MPCVideoViewControllerMediaFoundationImplementation *)&v8 presentViewController:controller animated:animated completion:completion];
  }
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = _MPCVideoViewControllerMediaFoundationImplementation;
  [(_MPCVideoViewControllerMediaFoundationImplementation *)&v13 viewDidLayoutSubviews];
  view = [(_MPCVideoViewControllerMediaFoundationImplementation *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view2 = [(AVPlayerViewController *)self->_internalController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = _MPCVideoViewControllerMediaFoundationImplementation;
  [(_MPCVideoViewControllerMediaFoundationImplementation *)&v5 viewDidLoad];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view = [(_MPCVideoViewControllerMediaFoundationImplementation *)self view];
  [view setBackgroundColor:clearColor];
}

- (void)forwardInvocation:(id)invocation
{
  v22 = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  selector = [invocationCopy selector];
  v6 = &unk_1F45C9F00;
  if (protocol_getMethodDescription(v6, selector, 1, 1).name || protocol_getMethodDescription(v6, selector, 0, 1).name || protocol_getMethodDescription(v6, selector, 1, 0).name)
  {
  }

  else
  {
    name = protocol_getMethodDescription(v6, selector, 0, 0).name;

    if (!name)
    {
      v16.receiver = self;
      v16.super_class = _MPCVideoViewControllerMediaFoundationImplementation;
      [(_MPCVideoViewControllerMediaFoundationImplementation *)&v16 forwardInvocation:invocationCopy];
      goto LABEL_15;
    }
  }

  v7 = NSStringFromSelector([invocationCopy selector]);
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

  videoOutputDelegate = [(_MPCVideoViewControllerMediaFoundationImplementation *)self videoOutputDelegate];
  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(v9);
    *buf = 138543874;
    *&buf[4] = self;
    v18 = 2114;
    v19 = v13;
    v20 = 2114;
    v21 = videoOutputDelegate;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ forwarding AV invocation %{public}@ to delegate %{public}@", buf, 0x20u);
  }

  if (v9 && videoOutputDelegate)
  {
    [invocationCopy setSelector:v9];
    *buf = self;
    [invocationCopy setArgument:buf atIndex:2];
    [invocationCopy invokeWithTarget:videoOutputDelegate];
  }

LABEL_15:
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v5 = &unk_1F45C9F00;
  if (protocol_getMethodDescription(v5, selector, 1, 1).name || protocol_getMethodDescription(v5, selector, 0, 1).name || protocol_getMethodDescription(v5, selector, 1, 0).name)
  {
  }

  else
  {
    name = protocol_getMethodDescription(v5, selector, 0, 0).name;

    if (!name)
    {
      goto LABEL_15;
    }
  }

  v6 = NSStringFromSelector(selector);
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
    v11 = [(_MPCVideoViewControllerMediaFoundationImplementation *)&v15 respondsToSelector:selector];
    return v11 & 1;
  }

  videoOutputDelegate = [(_MPCVideoViewControllerMediaFoundationImplementation *)self videoOutputDelegate];
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

- (_MPCVideoViewControllerMediaFoundationImplementation)initWithPlaybackEngine:(id)engine
{
  engineCopy = engine;
  v16.receiver = self;
  v16.super_class = _MPCVideoViewControllerMediaFoundationImplementation;
  v5 = [(_MPCVideoViewControllerMediaFoundationImplementation *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playbackEngine, engineCopy);
    [engineCopy addEngineObserver:v6];
    [(_MPCVideoViewControllerMediaFoundationImplementation *)v6 _updateViewControllerHierarchyForPlaybackEngine:engineCopy];
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