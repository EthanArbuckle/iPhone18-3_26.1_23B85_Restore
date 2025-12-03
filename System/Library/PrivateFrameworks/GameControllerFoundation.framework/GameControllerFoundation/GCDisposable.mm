@interface GCDisposable
+ (id)withCleanupHandler:(id)handler;
- (GCDisposable)initWithCleanupHandler:(id)handler;
- (void)dealloc;
@end

@implementation GCDisposable

+ (id)withCleanupHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[self alloc] initWithCleanupHandler:handlerCopy];

  return v5;
}

- (GCDisposable)initWithCleanupHandler:(id)handler
{
  v8.receiver = self;
  v8.super_class = GCDisposable;
  handlerCopy = handler;
  v4 = [(GCDisposable *)&v8 init];
  v5 = [handlerCopy copy];

  handler = v4->_handler;
  v4->_handler = v5;

  return v4;
}

- (void)dealloc
{
  handler = self->_handler;
  if (handler)
  {
    handler[2](handler, a2);
    v4 = self->_handler;
    self->_handler = 0;
  }

  v5.receiver = self;
  v5.super_class = GCDisposable;
  [(GCDisposable *)&v5 dealloc];
}

@end