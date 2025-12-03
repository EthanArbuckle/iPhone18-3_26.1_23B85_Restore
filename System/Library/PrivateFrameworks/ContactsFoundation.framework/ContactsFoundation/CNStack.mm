@interface CNStack
- (CNStack)init;
- (id)pop;
- (id)popAll;
- (void)popAllWithHandler:(id)handler;
- (void)popWithHandler:(id)handler;
- (void)push:(id)push;
@end

@implementation CNStack

- (CNStack)init
{
  v7.receiver = self;
  v7.super_class = CNStack;
  v2 = [(CNStack *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objects = v2->_objects;
    v2->_objects = v3;

    v5 = v2;
  }

  return v2;
}

- (id)pop
{
  if (off_1EF43E9E8(&__block_literal_global_5, self->_objects))
  {
    lastObject = 0;
  }

  else
  {
    lastObject = [(NSMutableArray *)self->_objects lastObject];
    [(NSMutableArray *)self->_objects removeLastObject];
  }

  return lastObject;
}

- (void)push:(id)push
{
  if (push)
  {
    [(NSMutableArray *)self->_objects addObject:?];
  }
}

- (id)popAll
{
  v3 = [(NSMutableArray *)self->_objects copy];
  [(NSMutableArray *)self->_objects removeAllObjects];

  return v3;
}

- (void)popWithHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [(CNStack *)self pop];
  if (v4)
  {
    handlerCopy[2](handlerCopy, v4);
  }
}

- (void)popAllWithHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [(CNStack *)self pop];
  if (v4)
  {
    v5 = v4;
    do
    {
      handlerCopy[2](handlerCopy, v5);
      v6 = [(CNStack *)self pop];

      v5 = v6;
    }

    while (v6);
  }
}

@end