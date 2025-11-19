@interface GCDisposable
+ (id)withCleanupHandler:(id)a3;
- (GCDisposable)initWithCleanupHandler:(id)a3;
- (void)dealloc;
@end

@implementation GCDisposable

+ (id)withCleanupHandler:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCleanupHandler:v4];

  return v5;
}

- (GCDisposable)initWithCleanupHandler:(id)a3
{
  v8.receiver = self;
  v8.super_class = GCDisposable;
  v3 = a3;
  v4 = [(GCDisposable *)&v8 init];
  v5 = [v3 copy];

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