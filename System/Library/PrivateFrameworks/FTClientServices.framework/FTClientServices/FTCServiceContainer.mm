@interface FTCServiceContainer
- (BOOL)addListenerID:(id)d;
- (BOOL)hasListenerID:(id)d;
- (BOOL)removeListenerID:(id)d;
- (FTCServiceContainer)initWithServiceType:(int64_t)type;
- (void)dealloc;
@end

@implementation FTCServiceContainer

- (FTCServiceContainer)initWithServiceType:(int64_t)type
{
  v6.receiver = self;
  v6.super_class = FTCServiceContainer;
  v4 = [(FTCServiceContainer *)&v6 init];
  if (v4)
  {
    v4->_monitor = [[FTCServiceMonitor alloc] initWithServiceType:type];
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

- (BOOL)hasListenerID:(id)d
{
  if (d)
  {
    return MEMORY[0x2821F9670](self->_listeners, sel_containsObject_);
  }

  else
  {
    return 0;
  }
}

- (BOOL)addListenerID:(id)d
{
  if (d)
  {
    v5 = [d length];
    if (v5)
    {
      [(NSMutableSet *)self->_listeners addObject:d];
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
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