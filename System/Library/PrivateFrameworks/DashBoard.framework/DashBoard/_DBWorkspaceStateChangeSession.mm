@interface _DBWorkspaceStateChangeSession
- (_DBWorkspaceStateChangeSession)initWithStateChangeBlock:(id)a3 invalidationBlock:(id)a4;
- (id)owner;
- (void)_startWatchdogTimer;
- (void)_watchdogTimerFired;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _DBWorkspaceStateChangeSession

- (void)_startWatchdogTimer
{
  self->_watchdogTimer = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__watchdogTimerFired selector:0 userInfo:0 repeats:30.0];

  MEMORY[0x2821F96F8]();
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    [(NSTimer *)self->_watchdogTimer invalidate];
    watchdogTimer = self->_watchdogTimer;
    self->_watchdogTimer = 0;

    invalidationBlock = self->_invalidationBlock;
    if (invalidationBlock)
    {
      invalidationBlock[2](invalidationBlock, self);
      v5 = self->_invalidationBlock;
      self->_invalidationBlock = 0;
    }
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _DBWorkspaceStateChangeSession;
  [(_DBWorkspaceStateChangeSession *)&v2 dealloc];
}

- (_DBWorkspaceStateChangeSession)initWithStateChangeBlock:(id)a3 invalidationBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _DBWorkspaceStateChangeSession;
  v8 = [(_DBWorkspaceStateChangeSession *)&v14 init];
  if (v8)
  {
    v9 = _Block_copy(v6);
    stateChangeBlock = v8->_stateChangeBlock;
    v8->_stateChangeBlock = v9;

    v11 = _Block_copy(v7);
    invalidationBlock = v8->_invalidationBlock;
    v8->_invalidationBlock = v11;
  }

  return v8;
}

- (void)_watchdogTimerFired
{
  v3 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [(_DBWorkspaceStateChangeSession *)v3 _watchdogTimerFired];
  }

  [(NSTimer *)self->_watchdogTimer invalidate];
  watchdogTimer = self->_watchdogTimer;
  self->_watchdogTimer = 0;
}

- (id)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

@end