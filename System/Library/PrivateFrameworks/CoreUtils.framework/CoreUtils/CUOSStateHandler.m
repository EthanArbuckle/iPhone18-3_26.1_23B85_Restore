@interface CUOSStateHandler
- (CUOSStateHandler)initWithTitle:(id)a3 dispatchQueue:(id)a4 handler:(id)a5;
- (os_state_data_s)_generateState;
- (void)dealloc;
- (void)remove;
@end

@implementation CUOSStateHandler

- (os_state_data_s)_generateState
{
  v3 = MEMORY[0x1E696AE40];
  v4 = (*(self->_handler + 2))();
  v5 = [v3 dataWithPropertyList:v4 format:100 options:0 error:0];

  if (v5)
  {
    v6 = [v5 length];
    v7 = malloc_type_calloc(1uLL, v6 + 200, 0x1000040BEF03554uLL);
    v8 = v7;
    if (v7)
    {
      v7->var0 = 1;
      v7->var1.var1 = v6;
      [(NSString *)self->_title UTF8String];
      __strlcpy_chk();
      memcpy(v8->var4, [v5 bytes], v6);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)remove
{
  if (self->_stateHandle)
  {
    os_state_remove_handler();
    self->_stateHandle = 0;
  }
}

- (void)dealloc
{
  if (self->_stateHandle)
  {
    os_state_remove_handler();
    self->_stateHandle = 0;
  }

  v3.receiver = self;
  v3.super_class = CUOSStateHandler;
  [(CUOSStateHandler *)&v3 dealloc];
}

- (CUOSStateHandler)initWithTitle:(id)a3 dispatchQueue:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = CUOSStateHandler;
  v12 = [(CUOSStateHandler *)&v19 init];
  if (v12)
  {
    v13 = _Block_copy(v11);
    handler = v12->_handler;
    v12->_handler = v13;

    objc_storeStrong(&v12->_title, a3);
    objc_initWeak(&location, v12);
    objc_copyWeak(&v17, &location);
    v12->_stateHandle = os_state_add_handler();
    v15 = v12;
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v12;
}

uint64_t __56__CUOSStateHandler_initWithTitle_dispatchQueue_handler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _generateState];

  return v2;
}

@end