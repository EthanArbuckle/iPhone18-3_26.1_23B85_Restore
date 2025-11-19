@interface CECIOCECInterfaceListener
- (CECIOCECInterfaceListener)initWithInterfaceController:(id)a3;
- (void)addIOCECInterface:(__IOCECInterface *)a3;
- (void)dealloc;
- (void)scheduleWithDispatchQueue:(id)a3;
- (void)unscheduleFromDispatchQueue:(id)a3;
@end

@implementation CECIOCECInterfaceListener

- (CECIOCECInterfaceListener)initWithInterfaceController:(id)a3
{
  v6.receiver = self;
  v6.super_class = CECIOCECInterfaceListener;
  v3 = [(CECIOCECInterfaceListener *)&v6 initWithInterfaceController:a3];
  if (v3)
  {
    v4 = IOCECInterfaceListenerCreate();
    v3->_listener = v4;
    if (v4)
    {
      if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
      {
        sub_2194();
      }
    }

    else
    {

      return 0;
    }
  }

  return v3;
}

- (void)dealloc
{
  listener = self->_listener;
  if (listener)
  {
    CFRelease(listener);
  }

  v4.receiver = self;
  v4.super_class = CECIOCECInterfaceListener;
  [(CECIOCECInterfaceListener *)&v4 dealloc];
}

- (void)scheduleWithDispatchQueue:(id)a3
{
  if (self->_listener)
  {
    IOCECInterfaceListenerRegisterAddInterfaceCallback();
    listener = self->_listener;

    _IOCECInterfaceListenerScheduleWithDispatchQueue(listener, a3);
  }
}

- (void)unscheduleFromDispatchQueue:(id)a3
{
  if (self->_listener)
  {
    _IOCECInterfaceListenerUnscheduleFromDispatchQueue();
  }
}

- (void)addIOCECInterface:(__IOCECInterface *)a3
{
  v4 = [CECIOCECInterface interfaceWithIOCECInterface:a3 listener:self];

  [(CECIOCECInterfaceListener *)self addInterface:v4];
}

@end