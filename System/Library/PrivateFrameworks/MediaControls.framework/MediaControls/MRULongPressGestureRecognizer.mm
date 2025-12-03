@interface MRULongPressGestureRecognizer
- (void)addCancellationHandler:(id)handler;
- (void)setState:(int64_t)state;
@end

@implementation MRULongPressGestureRecognizer

- (void)addCancellationHandler:(id)handler
{
  handlerCopy = handler;
  cancellationHandlers = self->_cancellationHandlers;
  aBlock = handlerCopy;
  if (!cancellationHandlers)
  {
    v6 = objc_opt_new();
    v7 = self->_cancellationHandlers;
    self->_cancellationHandlers = v6;

    handlerCopy = aBlock;
    cancellationHandlers = self->_cancellationHandlers;
  }

  v8 = _Block_copy(handlerCopy);
  [(NSMutableArray *)cancellationHandlers addObject:v8];
}

- (void)setState:(int64_t)state
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = MRULongPressGestureRecognizer;
  [(MRULongPressGestureRecognizer *)&v14 setState:?];
  if ((state & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_cancellationHandlers;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

@end