@interface EDSceneDelegate
- (id)appDelegate;
- (id)lensView;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)trackedTouchesBegan:(id)a3;
- (void)trackedTouchesEnded:(id)a3;
- (void)trackedTouchesMoved:(id)a3;
@end

@implementation EDSceneDelegate

- (id)appDelegate
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 delegate];

  return v3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v6 = a3;
  v7 = [[EDWindow alloc] initWithWindowScene:v6];

  window = self->_window;
  self->_window = &v7->super;
  v11 = v7;

  v9 = [(EDSceneDelegate *)self appDelegate];
  v10 = [(EDSceneDelegate *)self lensView];
  [v10 setDelegate:v9];

  [(EDWindow *)v11 setTrackingDelegate:self];
  [(UIWindow *)self->_window makeKeyAndVisible];
}

- (id)lensView
{
  v2 = [(UIWindow *)self->_window rootViewController];
  v3 = [v2 lensView];

  return v3;
}

- (void)trackedTouchesBegan:(id)a3
{
  v14 = a3;
  v4 = [(EDSceneDelegate *)self appDelegate];
  v5 = [(EDSceneDelegate *)self lensView];
  v6 = [v4 activeLensView];

  if (v6 == v5)
  {
    v7 = [v14 anyObject];
    [v7 locationInView:self->_window];
    v9 = v8;
    v11 = v10;
    v12 = [v4 activeLensView];
    [v12 updateCenterOffsetAtTouchDown:{v9, v11}];
  }

  if (self->_touchesBeganTime == 0.0)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_touchesBeganTime = v13;
  }
}

- (void)trackedTouchesEnded:(id)a3
{
  v16 = a3;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  if (v4 - self->_touchesBeganTime > 0.2)
  {
    v5 = [(EDSceneDelegate *)self appDelegate];
    v6 = [(EDSceneDelegate *)self lensView];
    v7 = [v16 anyObject];
    v8 = [(EDSceneDelegate *)self window];
    [v7 locationInView:v8];
    v10 = v9;
    v12 = v11;

    v13 = [v5 activeLensView];
    v14 = v13;
    if (v13 == v6)
    {
      [v6 frame];
      v18.x = v10;
      v18.y = v12;
      v15 = CGRectContainsPoint(v19, v18);

      if (v15)
      {
        [v6 selectColor];
      }
    }

    else
    {
    }

    [(EDSceneDelegate *)self resetTouchesBeganTime];
    [v5 dismissEyedropper];
  }
}

- (void)trackedTouchesMoved:(id)a3
{
  v15 = a3;
  v4 = [(EDSceneDelegate *)self appDelegate];
  v5 = [(EDSceneDelegate *)self lensView];
  if (![v5 isActive] || (objc_msgSend(v4, "activeLensView"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6 != v5))
  {
    v7 = [v15 anyObject];
    v8 = [(EDSceneDelegate *)self window];
    [v7 locationInView:v8];
    v10 = v9;
    v12 = v11;

    v13 = [(EDSceneDelegate *)self window];
    [v13 bounds];
    v17.x = v10;
    v17.y = v12;
    v14 = CGRectContainsPoint(v18, v17);

    if (v14)
    {
      [v5 setActive:1];
    }
  }

  [(EDSceneDelegate *)self resetTouchesBeganTime];
  [v5 updateLensViewWithEvent:v15];
}

@end