@interface FCGroupCancelHandler
+ (id)groupCancelHandlerWithCancelHandlers:(id)handlers;
- (FCGroupCancelHandler)initWithCancelHandlers:(id)handlers;
- (void)cancel;
@end

@implementation FCGroupCancelHandler

+ (id)groupCancelHandlerWithCancelHandlers:(id)handlers
{
  handlersCopy = handlers;
  v5 = [[self alloc] initWithCancelHandlers:handlersCopy];

  return v5;
}

- (FCGroupCancelHandler)initWithCancelHandlers:(id)handlers
{
  handlersCopy = handlers;
  v9.receiver = self;
  v9.super_class = FCGroupCancelHandler;
  v5 = [(FCGroupCancelHandler *)&v9 init];
  if (v5)
  {
    v6 = [handlersCopy copy];
    cancelHandlers = v5->_cancelHandlers;
    v5->_cancelHandlers = v6;
  }

  return v5;
}

- (void)cancel
{
  cancelHandlers = [(FCGroupCancelHandler *)self cancelHandlers];
  [cancelHandlers makeObjectsPerformSelector:sel_cancel];
}

@end