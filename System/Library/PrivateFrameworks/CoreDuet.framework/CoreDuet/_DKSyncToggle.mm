@interface _DKSyncToggle
+ (_DKSyncToggle)toggleWithObject:(void *)a3 name:(uint64_t)a4 enableSelector:(uint64_t)a5 disableSelector:;
- (_DKSyncToggle)initWithObject:(id)a3 name:(id)a4 enableSelector:(SEL)a5 disableSelector:(SEL)a6;
- (uint64_t)isEnabled;
- (uint64_t)setEnabled:(uint64_t)result;
- (void)_setEnabled:(BOOL)a3;
- (void)dealloc;
@end

@implementation _DKSyncToggle

+ (_DKSyncToggle)toggleWithObject:(void *)a3 name:(uint64_t)a4 enableSelector:(uint64_t)a5 disableSelector:
{
  v8 = a3;
  v9 = a2;
  objc_opt_self();
  v10 = [[_DKSyncToggle alloc] initWithObject:v9 name:v8 enableSelector:a4 disableSelector:a5];

  return v10;
}

- (_DKSyncToggle)initWithObject:(id)a3 name:(id)a4 enableSelector:(SEL)a5 disableSelector:(SEL)a6
{
  v10 = a3;
  v11 = a4;
  v15.receiver = self;
  v15.super_class = _DKSyncToggle;
  v12 = [(_DKSyncToggle *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_object, v10);
    objc_storeStrong(&v13->_name, a4);
    v13->_enableSelector = a5;
    v13->_disableSelector = a6;
  }

  return v13;
}

- (void)dealloc
{
  if (self->_enabled)
  {
    [(_DKSyncToggle *)self _setEnabled:0];
  }

  v3.receiver = self;
  v3.super_class = _DKSyncToggle;
  [(_DKSyncToggle *)&v3 dealloc];
}

- (void)_setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    v3 = a3;
    v5 = +[_CDLogging syncChannel];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
    if (v3)
    {
      if (v6)
      {
        [_DKSyncToggle _setEnabled:?];
      }

      v7 = 32;
    }

    else
    {
      if (v6)
      {
        [_DKSyncToggle _setEnabled:?];
      }

      v7 = 40;
    }

    [(_DKSyncToggle *)self willChangeValueForKey:@"isEnabled"];
    self->_enabled = v3;
    [(_DKSyncToggle *)self didChangeValueForKey:@"isEnabled"];
    WeakRetained = objc_loadWeakRetained(&self->_object);
    [WeakRetained performSelector:*(&self->super.isa + v7)];
  }
}

- (uint64_t)setEnabled:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    return [v3 _setEnabled:a2];
  }

  return result;
}

- (uint64_t)isEnabled
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (void)_setEnabled:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() description];
  v3 = *(a1 + 24);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_3(&dword_191750000, v4, v5, "%{public}@: Disabling '%@' toggle", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_setEnabled:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() description];
  v3 = *(a1 + 24);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_3(&dword_191750000, v4, v5, "%{public}@: Enabling '%@' toggle", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

@end