@interface _DKDataProtectionStateMonitor
- (_DKDataProtectionStateMonitor)init;
- (id)changeHandler;
- (void)dealloc;
- (void)setChangeHandler:(id)a3;
@end

@implementation _DKDataProtectionStateMonitor

- (_DKDataProtectionStateMonitor)init
{
  v8.receiver = self;
  v8.super_class = _DKDataProtectionStateMonitor;
  v2 = [(_DKDataProtectionStateMonitor *)&v8 init];
  if (v2)
  {
    v3 = +[_DKDataProtectionMonitor sharedInstance];
    main = v2->_main;
    v2->_main = v3;

    handlerUUID = v2->_handlerUUID;
    v2->_handlerUUID = 0;

    changeHandler = v2->_changeHandler;
    v2->_changeHandler = 0;
  }

  return v2;
}

- (void)dealloc
{
  [(_DKDataProtectionStateMonitor *)self setChangeHandler:0];
  v3.receiver = self;
  v3.super_class = _DKDataProtectionStateMonitor;
  [(_DKDataProtectionStateMonitor *)&v3 dealloc];
}

- (void)setChangeHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  handlerUUID = self->_handlerUUID;
  if (!handlerUUID)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = v4;
  [(_DKDataProtectionMonitor *)self->_main deregisterStateChangeHandler:?];
  v5 = v10;
  if (v10)
  {
LABEL_3:
    v9 = v5;
    v7 = [(_DKDataProtectionMonitor *)self->_main registerStateChangeHandler:v5];
    v8 = self->_handlerUUID;
    self->_handlerUUID = v7;

    v5 = v9;
  }

LABEL_4:
}

- (id)changeHandler
{
  v2 = MEMORY[0x193B00C50](self->_changeHandler, a2);

  return v2;
}

@end