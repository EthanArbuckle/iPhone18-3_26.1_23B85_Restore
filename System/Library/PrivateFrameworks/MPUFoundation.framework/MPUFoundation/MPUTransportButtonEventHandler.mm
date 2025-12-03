@interface MPUTransportButtonEventHandler
- (MPUTransportButtonEventHandler)init;
- (UIControl)button;
- (id)performHitTestingBlock:(id)block;
- (void)_clearLongPressTimer;
- (void)_longPressTimerAction;
- (void)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)cancelTrackingWithEvent:(id)event;
- (void)dealloc;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
@end

@implementation MPUTransportButtonEventHandler

- (MPUTransportButtonEventHandler)init
{
  v3.receiver = self;
  v3.super_class = MPUTransportButtonEventHandler;
  result = [(MPUTransportButtonEventHandler *)&v3 init];
  if (result)
  {
    result->_minimumLongPressDuration = 0.75;
  }

  return result;
}

- (void)dealloc
{
  [(MPUTransportButtonEventHandler *)self _clearLongPressTimer];
  v3.receiver = self;
  v3.super_class = MPUTransportButtonEventHandler;
  [(MPUTransportButtonEventHandler *)&v3 dealloc];
}

- (void)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  WeakRetained = objc_loadWeakRetained(&self->_button);
  v6 = WeakRetained;
  if (!self->_longPressTimer && [WeakRetained isEnabled] && (objc_msgSend(v6, "allControlEvents") & 0x3000000) != 0)
  {
    objc_initWeak(&location, self);
    v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    longPressTimer = self->_longPressTimer;
    self->_longPressTimer = v7;

    v9 = self->_longPressTimer;
    v10 = dispatch_time(0, (self->_minimumLongPressDuration * 1000000000.0));
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    v11 = self->_longPressTimer;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__MPUTransportButtonEventHandler_beginTrackingWithTouch_withEvent___block_invoke;
    v12[3] = &unk_27984C398;
    objc_copyWeak(&v13, &location);
    dispatch_source_set_event_handler(v11, v12);
    dispatch_resume(self->_longPressTimer);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __67__MPUTransportButtonEventHandler_beginTrackingWithTouch_withEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _longPressTimerAction];
    WeakRetained = v2;
  }
}

- (void)cancelTrackingWithEvent:(id)event
{
  if (self->_longPress)
  {
    WeakRetained = objc_loadWeakRetained(&self->_button);
    [WeakRetained sendActionsForControlEvents:0x2000000];

    self->_longPress = 0;
  }

  [(MPUTransportButtonEventHandler *)self _clearLongPressTimer];
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  [(MPUTransportButtonEventHandler *)self _clearLongPressTimer:touch];
  longPress = self->_longPress;
  WeakRetained = objc_loadWeakRetained(&self->_button);
  v7 = WeakRetained;
  if (longPress)
  {
    [WeakRetained sendActionsForControlEvents:0x2000000];

    self->_longPress = 0;
  }

  else
  {
    isTouchInside = [WeakRetained isTouchInside];

    if (isTouchInside)
    {
      v9 = objc_loadWeakRetained(&self->_button);
      [v9 sendActionsForControlEvents:0x800000];
    }
  }
}

- (id)performHitTestingBlock:(id)block
{
  if (self->_shouldFakeEnabled || !self->_supportsTapWhenDisabled)
  {
    v4 = 0;
  }

  else
  {
    v4 = 1;
    self->_shouldFakeEnabled = 1;
  }

  result = (*(block + 2))(block, a2);
  if (v4)
  {
    self->_shouldFakeEnabled = 0;
  }

  return result;
}

- (void)_longPressTimerAction
{
  WeakRetained = objc_loadWeakRetained(&self->_button);
  if ([WeakRetained isTracking])
  {
    self->_longPress = 1;
    [WeakRetained sendActionsForControlEvents:0x1000000];
  }
}

- (void)_clearLongPressTimer
{
  longPressTimer = self->_longPressTimer;
  if (longPressTimer)
  {
    dispatch_source_cancel(longPressTimer);
    v4 = self->_longPressTimer;
    self->_longPressTimer = 0;
  }
}

- (UIControl)button
{
  WeakRetained = objc_loadWeakRetained(&self->_button);

  return WeakRetained;
}

@end