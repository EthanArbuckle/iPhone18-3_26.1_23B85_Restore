@interface EDWindow
- (EDWindow)initWithWindowScene:(id)a3;
- (EDWindowTrackingDelegate)trackingDelegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation EDWindow

- (EDWindow)initWithWindowScene:(id)a3
{
  v11.receiver = self;
  v11.super_class = EDWindow;
  v3 = a3;
  v4 = [(EDWindow *)&v11 initWithWindowScene:v3];
  [(EDWindow *)v4 setHidden:0, v11.receiver, v11.super_class];
  v5 = [MEMORY[0x277D75348] clearColor];
  [(EDWindow *)v4 setBackgroundColor:v5];

  [(EDWindow *)v4 setWindowLevel:*MEMORY[0x277D76EB0] + -1.0];
  [(EDWindow *)v4 _setWindowControlsStatusBarOrientation:0];
  v6 = [(EDWindow *)v4 layer];
  [v6 setDisableUpdateMask:2];

  v7 = [EDWindowRootViewController alloc];
  v8 = [v3 screen];

  [v8 bounds];
  v9 = [(EDWindowRootViewController *)v7 initWithScreenBounds:?];
  [(EDWindow *)v4 setRootViewController:v9];

  return v4;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(EDWindow *)self rootViewController];
  v9 = [v8 lensView];

  [v9 convertPoint:self fromView:{x, y}];
  if (![v9 pointInside:v7 withEvent:?] || (objc_msgSend(v9, "isHidden") & 1) != 0 || (objc_msgSend(v9, "alpha"), v10 == 0.0))
  {
    v11 = self;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = EDWindow;
    v11 = [(EDWindow *)&v14 hitTest:v7 withEvent:x, y];
  }

  v12 = v11;

  return v12;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v6 = [(EDWindow *)self trackingDelegate];
  [v6 trackedTouchesBegan:v5];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v6 = [(EDWindow *)self trackingDelegate];
  [v6 trackedTouchesMoved:v5];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v6 = [(EDWindow *)self trackingDelegate];
  [v6 trackedTouchesEnded:v5];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v6 = [(EDWindow *)self trackingDelegate];
  [v6 trackedTouchesCancelled:v5];
}

- (EDWindowTrackingDelegate)trackingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_trackingDelegate);

  return WeakRetained;
}

@end