@interface BMXPCConnectionWrapper
- (id)_initWithConnection:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BMXPCConnectionWrapper

- (void)dealloc
{
  [(BMXPCConnectionWrapper *)self invalidate];
  v3.receiver = self;
  v3.super_class = BMXPCConnectionWrapper;
  [(BMXPCConnectionWrapper *)&v3 dealloc];
}

- (void)invalidate
{
  [(BMXPCConnectionWrapper *)self setIsValid:0];
  connection = self->_connection;

  [(NSXPCConnection *)connection invalidate];
}

- (id)_initWithConnection:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = BMXPCConnectionWrapper;
  v6 = [(BMXPCConnectionWrapper *)&v15 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    v6->_isValid = v5 != 0;
    objc_storeStrong(&v6->_connection, a3);
    objc_initWeak(&location, p_isa);
    v8 = [p_isa[2] invalidationHandler];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__BMXPCConnectionWrapper__initWithConnection___block_invoke;
    v11[3] = &unk_1E796B798;
    objc_copyWeak(&v13, &location);
    v9 = v8;
    v12 = v9;
    [p_isa[2] setInvalidationHandler:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return p_isa;
}

uint64_t __46__BMXPCConnectionWrapper__initWithConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIsValid:0];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

@end