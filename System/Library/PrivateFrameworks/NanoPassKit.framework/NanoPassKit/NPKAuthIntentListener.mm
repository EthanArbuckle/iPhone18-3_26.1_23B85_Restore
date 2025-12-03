@interface NPKAuthIntentListener
- (NPKAuthIntentListener)init;
- (void)_handleButtonEvent:(__IOHIDEvent *)event;
- (void)_initializeHIDClient;
- (void)dealloc;
@end

@implementation NPKAuthIntentListener

- (NPKAuthIntentListener)init
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v4 = dispatch_queue_create("NPSButtonListener", v3);
  v8.receiver = self;
  v8.super_class = NPKAuthIntentListener;
  v5 = [(NPKButtonListener *)&v8 initWithHandlerQueue:v4];
  v6 = v5;
  if (v5)
  {
    [(NPKAuthIntentListener *)v5 _initializeHIDClient];
  }

  return v6;
}

- (void)dealloc
{
  hidSystemClient = self->_hidSystemClient;
  if (hidSystemClient)
  {
    v4 = self->_hidSystemClient;
    IOHIDEventSystemClientUnregisterEventBlock();
    handlerQueue = [(NPKButtonListener *)self handlerQueue];
    MEMORY[0x25F8669F0](hidSystemClient, handlerQueue);

    CFRelease(hidSystemClient);
    self->_hidSystemClient = 0;
  }

  v6.receiver = self;
  v6.super_class = NPKAuthIntentListener;
  [(NPKAuthIntentListener *)&v6 dealloc];
}

- (void)_initializeHIDClient
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: initializing HID client", buf, 2u);
    }
  }

  v6 = *MEMORY[0x277CBECE8];
  v7 = IOHIDEventSystemClientCreate();
  if (v7)
  {
    v8 = v7;
    IOHIDEventSystemClientSetMatching();
    handlerQueue = [(NPKButtonListener *)self handlerQueue];
    IOHIDEventSystemClientScheduleWithDispatchQueue();

    objc_initWeak(buf, self);
    objc_copyWeak(&v13, buf);
    IOHIDEventSystemClientRegisterEventBlock();
    [(NPKAuthIntentListener *)self setHidSystemClient:v8];
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    v10 = pk_Payment_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v12 = pk_Payment_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_ERROR, "Error: ButtonController:IOHIDEventSystemClientCreate create failed\n", buf, 2u);
      }
    }
  }
}

void __45__NPKAuthIntentListener__initializeHIDClient__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleButtonEvent:a5];
}

- (void)_handleButtonEvent:(__IOHIDEvent *)event
{
  IntegerValue = IOHIDEventGetIntegerValue();
  v5 = IOHIDEventGetIntegerValue();
  v6 = IOHIDEventGetIntegerValue();
  if (IntegerValue == 12 && v5 == 442 && v6)
  {
    kdebug_trace();
    _handlerQueue_buttonHandler = [(NPKButtonListener *)self _handlerQueue_buttonHandler];
    if (_handlerQueue_buttonHandler)
    {
      v8 = _handlerQueue_buttonHandler;
      _handlerQueue_buttonHandler[2](_handlerQueue_buttonHandler, 0);
      _handlerQueue_buttonHandler = v8;
    }
  }
}

@end