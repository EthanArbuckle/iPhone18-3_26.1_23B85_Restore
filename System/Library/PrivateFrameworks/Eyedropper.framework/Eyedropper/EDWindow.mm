@interface EDWindow
- (EDWindow)initWithWindowScene:(id)scene;
- (EDWindowTrackingDelegate)trackingDelegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation EDWindow

- (EDWindow)initWithWindowScene:(id)scene
{
  v11.receiver = self;
  v11.super_class = EDWindow;
  sceneCopy = scene;
  v4 = [(EDWindow *)&v11 initWithWindowScene:sceneCopy];
  [(EDWindow *)v4 setHidden:0, v11.receiver, v11.super_class];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(EDWindow *)v4 setBackgroundColor:clearColor];

  [(EDWindow *)v4 setWindowLevel:*MEMORY[0x277D76EB0] + -1.0];
  [(EDWindow *)v4 _setWindowControlsStatusBarOrientation:0];
  layer = [(EDWindow *)v4 layer];
  [layer setDisableUpdateMask:2];

  v7 = [EDWindowRootViewController alloc];
  screen = [sceneCopy screen];

  [screen bounds];
  v9 = [(EDWindowRootViewController *)v7 initWithScreenBounds:?];
  [(EDWindow *)v4 setRootViewController:v9];

  return v4;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  rootViewController = [(EDWindow *)self rootViewController];
  lensView = [rootViewController lensView];

  [lensView convertPoint:self fromView:{x, y}];
  if (![lensView pointInside:eventCopy withEvent:?] || (objc_msgSend(lensView, "isHidden") & 1) != 0 || (objc_msgSend(lensView, "alpha"), v10 == 0.0))
  {
    selfCopy = self;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = EDWindow;
    selfCopy = [(EDWindow *)&v14 hitTest:eventCopy withEvent:x, y];
  }

  v12 = selfCopy;

  return v12;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  trackingDelegate = [(EDWindow *)self trackingDelegate];
  [trackingDelegate trackedTouchesBegan:beganCopy];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  trackingDelegate = [(EDWindow *)self trackingDelegate];
  [trackingDelegate trackedTouchesMoved:movedCopy];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  trackingDelegate = [(EDWindow *)self trackingDelegate];
  [trackingDelegate trackedTouchesEnded:endedCopy];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  trackingDelegate = [(EDWindow *)self trackingDelegate];
  [trackingDelegate trackedTouchesCancelled:cancelledCopy];
}

- (EDWindowTrackingDelegate)trackingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_trackingDelegate);

  return WeakRetained;
}

@end