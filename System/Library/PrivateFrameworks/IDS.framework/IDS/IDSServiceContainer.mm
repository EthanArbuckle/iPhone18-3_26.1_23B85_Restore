@interface IDSServiceContainer
- (BOOL)addListenerID:(id)d;
- (BOOL)hasListenerID:(id)d;
- (BOOL)removeListenerID:(id)d;
- (IDSServiceContainer)initWithService:(id)service;
@end

@implementation IDSServiceContainer

- (IDSServiceContainer)initWithService:(id)service
{
  serviceCopy = service;
  v11.receiver = self;
  v11.super_class = IDSServiceContainer;
  v5 = [(IDSServiceContainer *)&v11 init];
  if (v5)
  {
    v6 = [[IDSServiceMonitor alloc] initWithService:serviceCopy];
    monitor = v5->_monitor;
    v5->_monitor = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    listeners = v5->_listeners;
    v5->_listeners = v8;
  }

  return v5;
}

- (BOOL)hasListenerID:(id)d
{
  if (d)
  {
    return [(NSMutableSet *)self->_listeners containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (BOOL)addListenerID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy && [dCopy length])
  {
    [(NSMutableSet *)self->_listeners addObject:v5];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)removeListenerID:(id)d
{
  if (d)
  {
    [(NSMutableSet *)self->_listeners removeObject:d];
  }

  return d != 0;
}

@end