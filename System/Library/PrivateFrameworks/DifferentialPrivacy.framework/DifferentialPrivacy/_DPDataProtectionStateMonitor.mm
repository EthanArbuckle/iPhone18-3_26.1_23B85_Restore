@interface _DPDataProtectionStateMonitor
- (_DPDataProtectionStateMonitor)init;
- (id)changeHandler;
- (void)dealloc;
- (void)setChangeHandler:(id)a3;
@end

@implementation _DPDataProtectionStateMonitor

- (_DPDataProtectionStateMonitor)init
{
  v8.receiver = self;
  v8.super_class = _DPDataProtectionStateMonitor;
  v2 = [(_DPDataProtectionStateMonitor *)&v8 init];
  if (v2)
  {
    v3 = +[_DPDataProtectionMaster sharedInstance];
    master = v2->_master;
    v2->_master = v3;

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

  master = self->_master;
  self->_master = 0;

  v5.receiver = self;
  v5.super_class = _DPDataProtectionStateMonitor;
  [(_DPDataProtectionStateMonitor *)&v5 dealloc];
}

- (void)setChangeHandler:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_handlerUUID)
  {
    [(_DPDataProtectionMaster *)self->_master deregisterStateChangeHandler:?];
    v4 = v9;
  }

  if (v4)
  {
    v5 = [(_DPDataProtectionMaster *)self->_master registerStateChangeHandler:v4];
    handlerUUID = self->_handlerUUID;
    self->_handlerUUID = v5;

    v4 = v9;
  }

  v7 = MEMORY[0x22AA7A8C0](v4);
  changeHandler = self->_changeHandler;
  self->_changeHandler = v7;
}

- (id)changeHandler
{
  v2 = MEMORY[0x22AA7A8C0](self->_changeHandler, a2);

  return v2;
}

@end