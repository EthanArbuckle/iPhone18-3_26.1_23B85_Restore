@interface AutomationOverlayWindow
- (AutomationOverlayWindowDelegate)automationWindowDelegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation AutomationOverlayWindow

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = AutomationOverlayWindow;
  v5 = [(AutomationOverlayWindow *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  WeakRetained = objc_loadWeakRetained(&self->_automationWindowDelegate);
  if (objc_opt_respondsToSelector() & 1) != 0 && ([WeakRetained automationWindowAllowsUserInteraction:self])
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (AutomationOverlayWindowDelegate)automationWindowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_automationWindowDelegate);

  return WeakRetained;
}

@end