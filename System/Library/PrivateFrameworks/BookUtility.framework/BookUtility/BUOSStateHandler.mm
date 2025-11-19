@interface BUOSStateHandler
- (BUOSStateHandler)initWithTitle:(id)a3 queue:(id)a4 block:(id)a5;
- (void)dealloc;
@end

@implementation BUOSStateHandler

- (BUOSStateHandler)initWithTitle:(id)a3 queue:(id)a4 block:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = BUOSStateHandler;
  v11 = [(BUOSStateHandler *)&v15 init];
  if (v11)
  {
    v13 = v8;
    v14 = v10;
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