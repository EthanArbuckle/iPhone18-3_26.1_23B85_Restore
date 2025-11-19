@interface _OSDataProtectionStateMonitor
- (BOOL)unnotifiedIsDataAvailableForClassC;
- (_OSDataProtectionStateMonitor)init;
- (void)dealloc;
- (void)setChangeHandler:(id)a3;
@end

@implementation _OSDataProtectionStateMonitor

- (_OSDataProtectionStateMonitor)init
{
  v8.receiver = self;
  v8.super_class = _OSDataProtectionStateMonitor;
  v2 = [(_OSDataProtectionStateMonitor *)&v8 init];
  if (v2)
  {
    v3 = +[_OSDataProtectionManager sharedInstance];
    manager = v2->_manager;
    v2->_manager = v3;

    handlerUUID = v2->_handlerUUID;
    v2->_handlerUUID = 0;

    changeHandler = v2->_changeHandler;
    v2->_changeHandler = 0;
  }

  return v2;
}

- (void)dealloc
{
  changeHandler = self->_changeHandler;
  self->_changeHandler = 0;

  manager = self->_manager;
  self->_manager = 0;

  v5.receiver = self;
  v5.super_class = _OSDataProtectionStateMonitor;
  [(_OSDataProtectionStateMonitor *)&v5 dealloc];
}

- (void)setChangeHandler:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_handlerUUID)
  {
    [(_OSDataProtectionManager *)self->_manager deregisterStateChangeHandler:?];
    v4 = v9;
  }

  if (v4)
  {
    v5 = [(_OSDataProtectionManager *)self->_manager registerStateChangeHandler:v4];
    handlerUUID = self->_handlerUUID;
    self->_handlerUUID = v5;

    v4 = v9;
  }

  v7 = MEMORY[0x24C1BF860](v4);
  changeHandler = self->_changeHandler;
  self->_changeHandler = v7;
}

- (BOOL)unnotifiedIsDataAvailableForClassC
{
  if ([(_OSDataProtectionManager *)self->_manager deviceHasBeenUnlockedSinceBoot])
  {
    return 1;
  }

  else
  {
    return ![(_OSDataProtectionManager *)self->_manager deviceIsPasswordConfigured];
  }
}

@end