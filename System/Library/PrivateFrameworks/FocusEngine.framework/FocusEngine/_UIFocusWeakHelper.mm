@interface _UIFocusWeakHelper
- (_UIFocusWeakHelper)initWithDeallocationBlock:(id)block;
- (void)dealloc;
@end

@implementation _UIFocusWeakHelper

- (_UIFocusWeakHelper)initWithDeallocationBlock:(id)block
{
  blockCopy = block;
  v8.receiver = self;
  v8.super_class = _UIFocusWeakHelper;
  v5 = [(_UIFocusWeakHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIFocusWeakHelper *)v5 setDeallocationBlock:blockCopy];
  }

  return v6;
}

- (void)dealloc
{
  if (self->_deallocationBlock)
  {
    v3 = pthread_main_np();
    deallocationBlock = self->_deallocationBlock;
    if (v3 == 1)
    {
      (deallocationBlock)[2](self->_deallocationBlock);
    }

    else
    {
      dispatch_async(MEMORY[0x277D85CD0], deallocationBlock);
    }
  }

  v5.receiver = self;
  v5.super_class = _UIFocusWeakHelper;
  [(_UIFocusWeakHelper *)&v5 dealloc];
}

@end