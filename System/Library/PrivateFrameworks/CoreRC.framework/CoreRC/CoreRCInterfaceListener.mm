@interface CoreRCInterfaceListener
- (CoreRCInterfaceListener)initWithInterfaceController:(id)controller;
- (void)addInterface:(id)interface;
- (void)dealloc;
- (void)removeInterface:(id)interface;
- (void)scheduleWithDispatchQueue:(id)queue;
- (void)unscheduleFromDispatchQueue:(id)queue;
@end

@implementation CoreRCInterfaceListener

- (CoreRCInterfaceListener)initWithInterfaceController:(id)controller
{
  v6.receiver = self;
  v6.super_class = CoreRCInterfaceListener;
  v3 = [(CoreRCInterfaceListener *)&v6 init];
  if (v3)
  {
    v4 = objc_opt_new();
    v3->_interfaces = v4;
    if (!v4)
    {

      return 0;
    }
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CoreRCInterfaceListener;
  [(CoreRCInterfaceListener *)&v3 dealloc];
}

- (void)scheduleWithDispatchQueue:(id)queue
{
  if (gLogCategory_CoreRCInterface <= 60 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    [CoreRCInterfaceListener scheduleWithDispatchQueue:a2];
  }
}

- (void)unscheduleFromDispatchQueue:(id)queue
{
  if (gLogCategory_CoreRCInterface <= 60 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    [CoreRCInterfaceListener unscheduleFromDispatchQueue:a2];
  }
}

- (void)addInterface:(id)interface
{
  [(NSMutableArray *)self->_interfaces addObject:?];
  delegate = [(CoreRCInterfaceListener *)self delegate];

  [(CoreRCInterfaceListenerDelegate *)delegate interfaceListener:self didAddInterface:interface];
}

- (void)removeInterface:(id)interface
{
  [(CoreRCInterfaceListenerDelegate *)[(CoreRCInterfaceListener *)self delegate] interfaceListener:self didRemoveInterface:interface];
  interfaces = self->_interfaces;

  [(NSMutableArray *)interfaces removeObject:interface];
}

@end