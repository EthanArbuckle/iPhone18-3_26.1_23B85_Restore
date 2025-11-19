@interface CLRunLoopTimerScheduler
- (CLRunLoopTimerScheduler)initWithRunLoopSilo:(id)a3;
- (CLTimer)timer;
- (void)dealloc;
- (void)reflectNextFireDelay:(double)a3 fireInterval:(double)a4;
@end

@implementation CLRunLoopTimerScheduler

- (CLRunLoopTimerScheduler)initWithRunLoopSilo:(id)a3
{
  v4 = a3;
  [v4 inPermissiveMode];
  v17.receiver = self;
  v17.super_class = CLRunLoopTimerScheduler;
  v5 = [(CLRunLoopTimerScheduler *)&v17 init];
  if (v5)
  {
    v6 = [v4 runloop];
    runloop = v5->_runloop;
    v5->_runloop = v6;

    objc_initWeak(&location, v5);
    objc_initWeak(&from, v4);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1DF80F910;
    v12[3] = &unk_1E86C82F8;
    objc_copyWeak(&v13, &from);
    objc_copyWeak(&v14, &location);
    v8 = _Block_copy(v12);
    fireBlock = v5->_fireBlock;
    v5->_fireBlock = v8;

    v10 = v5;
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)dealloc
{
  [(NSTimer *)self->_underlyingTimer invalidate];
  v3.receiver = self;
  v3.super_class = CLRunLoopTimerScheduler;
  [(CLRunLoopTimerScheduler *)&v3 dealloc];
}

- (void)reflectNextFireDelay:(double)a3 fireInterval:(double)a4
{
  underlyingTimer = self->_underlyingTimer;
  if (underlyingTimer)
  {
    [(NSTimer *)underlyingTimer invalidate];
  }

  v8 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:1 repeats:self->_fireBlock block:a4];
  v9 = self->_underlyingTimer;
  self->_underlyingTimer = v8;

  v10 = self->_underlyingTimer;
  v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:a3];
  [(NSTimer *)v10 setFireDate:v11];

  runloop = self->_runloop;
  v13 = self->_underlyingTimer;
  v14 = *MEMORY[0x1E695DA28];

  MEMORY[0x1EEE66B58](runloop, sel_addTimer_forMode_);
}

- (CLTimer)timer
{
  WeakRetained = objc_loadWeakRetained(&self->_timer);

  return WeakRetained;
}

@end