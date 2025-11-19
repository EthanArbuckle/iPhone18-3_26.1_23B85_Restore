@interface CoreRCInterfaceListener
- (CoreRCInterfaceListener)initWithInterfaceController:(id)a3;
- (void)addInterface:(id)a3;
- (void)dealloc;
- (void)removeInterface:(id)a3;
- (void)scheduleWithDispatchQueue:(id)a3;
- (void)unscheduleFromDispatchQueue:(id)a3;
@end

@implementation CoreRCInterfaceListener

- (CoreRCInterfaceListener)initWithInterfaceController:(id)a3
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

- (void)scheduleWithDispatchQueue:(id)a3
{
  if (gLogCategory_CoreRCInterface <= 60 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    [CoreRCInterfaceListener scheduleWithDispatchQueue:a2];
  }
}

- (void)unscheduleFromDispatchQueue:(id)a3
{
  if (gLogCategory_CoreRCInterface <= 60 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    [CoreRCInterfaceListener unscheduleFromDispatchQueue:a2];
  }
}

- (void)addInterface:(id)a3
{
  [(NSMutableArray *)self->_interfaces addObject:?];
  v5 = [(CoreRCInterfaceListener *)self delegate];

  [(CoreRCInterfaceListenerDelegate *)v5 interfaceListener:self didAddInterface:a3];
}

- (void)removeInterface:(id)a3
{
  [(CoreRCInterfaceListenerDelegate *)[(CoreRCInterfaceListener *)self delegate] interfaceListener:self didRemoveInterface:a3];
  interfaces = self->_interfaces;

  [(NSMutableArray *)interfaces removeObject:a3];
}

@end