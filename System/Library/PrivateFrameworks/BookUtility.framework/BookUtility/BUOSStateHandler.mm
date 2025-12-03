@interface BUOSStateHandler
- (BUOSStateHandler)initWithTitle:(id)title queue:(id)queue block:(id)block;
- (void)dealloc;
@end

@implementation BUOSStateHandler

- (BUOSStateHandler)initWithTitle:(id)title queue:(id)queue block:(id)block
{
  titleCopy = title;
  queueCopy = queue;
  blockCopy = block;
  v15.receiver = self;
  v15.super_class = BUOSStateHandler;
  v11 = [(BUOSStateHandler *)&v15 init];
  if (v11)
  {
    v13 = titleCopy;
    v14 = blockCopy;
    v11->_osStateHandle = os_state_add_handler();
  }

  return v11;
}

- (void)dealloc
{
  if (self->_osStateHandle)
  {
    os_state_remove_handler();
  }

  v3.receiver = self;
  v3.super_class = BUOSStateHandler;
  [(BUOSStateHandler *)&v3 dealloc];
}

@end