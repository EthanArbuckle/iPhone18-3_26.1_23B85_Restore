@interface EDSceneDelegate
- (id)appDelegate;
- (id)lensView;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)trackedTouchesBegan:(id)began;
- (void)trackedTouchesEnded:(id)ended;
- (void)trackedTouchesMoved:(id)moved;
@end

@implementation EDSceneDelegate

- (id)appDelegate
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  delegate = [mEMORY[0x277D75128] delegate];

  return delegate;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  v7 = [[EDWindow alloc] initWithWindowScene:sceneCopy];

  window = self->_window;
  self->_window = &v7->super;
  v11 = v7;

  appDelegate = [(EDSceneDelegate *)self appDelegate];
  lensView = [(EDSceneDelegate *)self lensView];
  [lensView setDelegate:appDelegate];

  [(EDWindow *)v11 setTrackingDelegate:self];
  [(UIWindow *)self->_window makeKeyAndVisible];
}

- (id)lensView
{
  rootViewController = [(UIWindow *)self->_window rootViewController];
  lensView = [rootViewController lensView];

  return lensView;
}

- (void)trackedTouchesBegan:(id)began
{
  beganCopy = began;
  appDelegate = [(EDSceneDelegate *)self appDelegate];
  lensView = [(EDSceneDelegate *)self lensView];
  activeLensView = [appDelegate activeLensView];

  if (activeLensView == lensView)
  {
    anyObject = [beganCopy anyObject];
    [anyObject locationInView:self->_window];
    v9 = v8;
    v11 = v10;
    activeLensView2 = [appDelegate activeLensView];
    [activeLensView2 updateCenterOffsetAtTouchDown:{v9, v11}];
  }

  if (self->_touchesBeganTime == 0.0)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_touchesBeganTime = v13;
  }
}

- (void)trackedTouchesEnded:(id)ended
{
  endedCopy = ended;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  if (v4 - self->_touchesBeganTime > 0.2)
  {
    appDelegate = [(EDSceneDelegate *)self appDelegate];
    lensView = [(EDSceneDelegate *)self lensView];
    anyObject = [endedCopy anyObject];
    window = [(EDSceneDelegate *)self window];
    [anyObject locationInView:window];
    v10 = v9;
    v12 = v11;

    activeLensView = [appDelegate activeLensView];
    v14 = activeLensView;
    if (activeLensView == lensView)
    {
      [lensView frame];
      v18.x = v10;
      v18.y = v12;
      v15 = CGRectContainsPoint(v19, v18);

      if (v15)
      {
        [lensView selectColor];
      }
    }

    else
    {
    }

    [(EDSceneDelegate *)self resetTouchesBeganTime];
    [appDelegate dismissEyedropper];
  }
}

- (void)trackedTouchesMoved:(id)moved
{
  movedCopy = moved;
  appDelegate = [(EDSceneDelegate *)self appDelegate];
  lensView = [(EDSceneDelegate *)self lensView];
  if (![lensView isActive] || (objc_msgSend(appDelegate, "activeLensView"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6 != lensView))
  {
    anyObject = [movedCopy anyObject];
    window = [(EDSceneDelegate *)self window];
    [anyObject locationInView:window];
    v10 = v9;
    v12 = v11;

    window2 = [(EDSceneDelegate *)self window];
    [window2 bounds];
    v17.x = v10;
    v17.y = v12;
    v14 = CGRectContainsPoint(v18, v17);

    if (v14)
    {
      [lensView setActive:1];
    }
  }

  [(EDSceneDelegate *)self resetTouchesBeganTime];
  [lensView updateLensViewWithEvent:movedCopy];
}

@end