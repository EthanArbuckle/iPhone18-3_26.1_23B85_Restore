@interface IDSServiceContainer
- (BOOL)addListenerID:(id)a3;
- (BOOL)hasListenerID:(id)a3;
- (BOOL)removeListenerID:(id)a3;
- (IDSServiceContainer)initWithService:(id)a3;
@end

@implementation IDSServiceContainer

- (IDSServiceContainer)initWithService:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IDSServiceContainer;
  v5 = [(IDSServiceContainer *)&v11 init];
  if (v5)
  {
    v6 = [[IDSServiceMonitor alloc] initWithService:v4];
    monitor = v5->_monitor;
    v5->_monitor = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    listeners = v5->_listeners;
    v5->_listeners = v8;
  }

  return v5;
}

- (BOOL)hasListenerID:(id)a3
{
  if (a3)
  {
    return [(NSMutableSet *)self->_listeners containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (BOOL)addListenerID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
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

- (BOOL)removeListenerID:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self->_listeners removeObject:a3];
  }

  return a3 != 0;
}

@end