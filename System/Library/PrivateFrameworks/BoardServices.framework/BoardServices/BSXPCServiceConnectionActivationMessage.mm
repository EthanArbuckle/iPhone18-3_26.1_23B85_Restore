@interface BSXPCServiceConnectionActivationMessage
- (id)initWithMessage:(void *)a1;
- (void)dealloc;
- (void)invalidate;
- (void)sendIfNecessary;
@end

@implementation BSXPCServiceConnectionActivationMessage

- (void)dealloc
{
  v23 = *MEMORY[0x1E69E9840];
  if ((BSAtomicGetFlag() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must be sent or invalidated before dealloc"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544642;
      v12 = v6;
      v13 = 2114;
      v14 = v8;
      v15 = 2048;
      v16 = self;
      v17 = 2114;
      v18 = @"BSXPCServiceConnection.m";
      v19 = 1024;
      v20 = 1526;
      v21 = 2114;
      v22 = v5;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v9 = v5;
    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82675CLL);
  }

  v10.receiver = self;
  v10.super_class = BSXPCServiceConnectionActivationMessage;
  [(BSXPCServiceConnectionActivationMessage *)&v10 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)sendIfNecessary
{
  if (BSAtomicSetFlag())
  {
    [(BSXPCServiceConnectionMessage *)self->_message send];
    message = self->_message;
    self->_message = 0;
  }
}

- (void)invalidate
{
  if (BSAtomicSetFlag())
  {
    [(BSXPCServiceConnectionMessage *)self->_message invalidate];
    message = self->_message;
    self->_message = 0;
  }
}

- (id)initWithMessage:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = BSXPCServiceConnectionActivationMessage;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = v3;
  if (v3)
  {
    objc_storeStrong(v3 + 1, a2);
    *(v4 + 4) = 0;
  }

  return v4;
}

@end