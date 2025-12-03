@interface CLKUIClockTimerLink
- (CLKUIClockTimerLink)initWithUpdateHandler:(id)handler;
- (int64_t)_updateFrequencyForFPS:(int64_t)s;
- (void)invalidate;
- (void)updateCoordinator;
@end

@implementation CLKUIClockTimerLink

- (CLKUIClockTimerLink)initWithUpdateHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = CLKUIClockTimerLink;
  v5 = [(CLKUIRenderFrequencyLink *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(handlerCopy);
    updateHandler = v5->_updateHandler;
    v5->_updateHandler = v6;
  }

  return v5;
}

- (void)updateCoordinator
{
  v14.receiver = self;
  v14.super_class = CLKUIClockTimerLink;
  [(CLKUIRenderFrequencyLink *)&v14 updateCoordinator];
  mEMORY[0x1E695B4E0] = [MEMORY[0x1E695B4E0] sharedInstance];
  [mEMORY[0x1E695B4E0] stopUpdatesForToken:self->_timerToken];

  timerToken = self->_timerToken;
  self->_timerToken = 0;

  if (![(CLKUIRenderFrequencyLink *)self isPaused])
  {
    preferredFramesPerSecond = [(CLKUIRenderFrequencyLink *)self preferredFramesPerSecond];
    v6 = [(CLKUIClockTimerLink *)self _updateFrequencyForFPS:preferredFramesPerSecond];
    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = v6;
      mEMORY[0x1E695B4E0]2 = [MEMORY[0x1E695B4E0] sharedInstance];
      updateHandler = self->_updateHandler;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __40__CLKUIClockTimerLink_updateCoordinator__block_invoke;
      v13[3] = &__block_descriptor_40_e15___NSString_8__0l;
      v13[4] = preferredFramesPerSecond;
      v10 = [mEMORY[0x1E695B4E0]2 startUpdatesWithUpdateFrequency:v7 withHandler:updateHandler identificationLog:v13];
      v11 = self->_timerToken;
      self->_timerToken = v10;

      mEMORY[0x1E695B4E0]3 = [MEMORY[0x1E695B4E0] sharedInstance];
      [mEMORY[0x1E695B4E0]3 setHandler:self->_timerToken wantsCommit:1];
    }
  }
}

- (void)invalidate
{
  v5.receiver = self;
  v5.super_class = CLKUIClockTimerLink;
  [(CLKUIRenderFrequencyLink *)&v5 invalidate];
  if (self->_timerToken)
  {
    mEMORY[0x1E695B4E0] = [MEMORY[0x1E695B4E0] sharedInstance];
    [mEMORY[0x1E695B4E0] stopUpdatesForToken:self->_timerToken];

    timerToken = self->_timerToken;
    self->_timerToken = 0;
  }
}

- (int64_t)_updateFrequencyForFPS:(int64_t)s
{
  v3 = 4;
  v4 = -1;
  if (s == 30)
  {
    v4 = 3;
  }

  if (s != 60)
  {
    v3 = v4;
  }

  if (s == 15)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

@end