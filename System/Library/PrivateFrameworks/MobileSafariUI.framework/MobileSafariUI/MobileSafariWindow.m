@interface MobileSafariWindow
- (CGPoint)lastTapLocation;
- (MobileSafariWindow)initWithWindowScene:(id)a3;
- (MobileSafariWindowDelegate)safariWindowDelegate;
- (void)_didCompleteSystemSnapshot;
- (void)_updateLastTouchedWindowIfNeeded;
- (void)handleStatusBarChangeFromHeight:(double)a3 toHeight:(double)a4;
- (void)sendEvent:(id)a3;
- (void)setSafariWindowDelegate:(id)a3;
@end

@implementation MobileSafariWindow

- (void)_updateLastTouchedWindowIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&_updateLastTouchedWindowIfNeeded_lastTouchedWindow);

  if (WeakRetained != self)
  {
    objc_storeWeak(&_updateLastTouchedWindowIfNeeded_lastTouchedWindow, self);
    if (self->_safariWindowDelegateRespondsToWindowWasLastTouched)
    {
      v4 = objc_loadWeakRetained(&self->_safariWindowDelegate);
      [v4 safariWindowWasLastTouched:self];
    }
  }
}

- (MobileSafariWindow)initWithWindowScene:(id)a3
{
  v7.receiver = self;
  v7.super_class = MobileSafariWindow;
  v3 = [(MobileSafariWindow *)&v7 initWithWindowScene:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v3 selector:sel__willBeginSystemSnapshot name:*MEMORY[0x277D77530] object:0];
    [v4 addObserver:v3 selector:sel__didCompleteSystemSnapshot name:*MEMORY[0x277D77520] object:0];
    v5 = v3;
  }

  return v3;
}

- (void)setSafariWindowDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_safariWindowDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_safariWindowDelegate, obj);
    self->_safariWindowDelegateRespondsToStatusBarChangedFromHeightToHeight = objc_opt_respondsToSelector() & 1;
    self->_safariWindowDelegateRespondsToDidEndAllTouchesAtPoint = objc_opt_respondsToSelector() & 1;
    self->_safariWindowDelegateRespondsToWindowWasLastTouched = objc_opt_respondsToSelector() & 1;
  }
}

- (void)handleStatusBarChangeFromHeight:(double)a3 toHeight:(double)a4
{
  v8.receiver = self;
  v8.super_class = MobileSafariWindow;
  [MobileSafariWindow handleStatusBarChangeFromHeight:sel_handleStatusBarChangeFromHeight_toHeight_ toHeight:?];
  if (self->_safariWindowDelegateRespondsToStatusBarChangedFromHeightToHeight)
  {
    WeakRetained = objc_loadWeakRetained(&self->_safariWindowDelegate);
    [WeakRetained safariWindow:self statusBarChangedFromHeight:a3 toHeight:a4];
  }
}

- (void)sendEvent:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MobileSafariWindow;
  [(MobileSafariWindow *)&v11 sendEvent:v4];
  if (![v4 type])
  {
    v5 = [v4 allTouches];
    v6 = [v5 anyObject];

    if (self->_safariWindowDelegateRespondsToDidEndAllTouchesAtPoint)
    {
      WeakRetained = [v4 allTouches];
      if ([WeakRetained count] != 1)
      {
LABEL_6:

        goto LABEL_7;
      }

      v8 = [v6 phase];

      if (v8 == 3)
      {
        WeakRetained = objc_loadWeakRetained(&self->_safariWindowDelegate);
        [v6 locationInView:self];
        [WeakRetained safariWindow:self didEndAllTouchesAtPoint:?];
        goto LABEL_6;
      }
    }

LABEL_7:
    [v6 locationInView:self];
    self->_lastTapLocation.x = v9;
    self->_lastTapLocation.y = v10;
    [(MobileSafariWindow *)self _updateLastTouchedWindowIfNeeded];
  }
}

- (void)_didCompleteSystemSnapshot
{
  if (self->_shouldBecomeKeyWindowAfterSnapshot)
  {
    [(MobileSafariWindow *)self makeKeyWindow];
  }
}

- (MobileSafariWindowDelegate)safariWindowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_safariWindowDelegate);

  return WeakRetained;
}

- (CGPoint)lastTapLocation
{
  x = self->_lastTapLocation.x;
  y = self->_lastTapLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end