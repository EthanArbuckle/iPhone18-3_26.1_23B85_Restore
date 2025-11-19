@interface FTCServiceContainer
- (BOOL)addListenerID:(id)a3;
- (BOOL)hasListenerID:(id)a3;
- (BOOL)removeListenerID:(id)a3;
- (FTCServiceContainer)initWithServiceType:(int64_t)a3;
- (void)dealloc;
@end

@implementation FTCServiceContainer

- (FTCServiceContainer)initWithServiceType:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = FTCServiceContainer;
  v4 = [(FTCServiceContainer *)&v6 init];
  if (v4)
  {
    v4->_monitor = [[FTCServiceMonitor alloc] initWithServiceType:a3];
    v4->_listeners = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FTCServiceContainer;
  [(FTCServiceContainer *)&v3 dealloc];
}

- (BOOL)hasListenerID:(id)a3
{
  if (a3)
  {
    return MEMORY[0x2821F9670](self->_listeners, sel_containsObject_);
  }

  else
  {
    return 0;
  }
}

- (BOOL)addListenerID:(id)a3
{
  if (a3)
  {
    v5 = [a3 length];
    if (v5)
    {
      [(NSMutableSet *)self->_listeners addObject:a3];
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
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