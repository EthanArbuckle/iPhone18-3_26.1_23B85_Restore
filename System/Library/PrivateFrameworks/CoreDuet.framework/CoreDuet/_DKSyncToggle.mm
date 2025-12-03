@interface _DKSyncToggle
+ (_DKSyncToggle)toggleWithObject:(void *)object name:(uint64_t)name enableSelector:(uint64_t)selector disableSelector:;
- (_DKSyncToggle)initWithObject:(id)object name:(id)name enableSelector:(SEL)selector disableSelector:(SEL)disableSelector;
- (uint64_t)isEnabled;
- (uint64_t)setEnabled:(uint64_t)result;
- (void)_setEnabled:(BOOL)enabled;
- (void)dealloc;
@end

@implementation _DKSyncToggle

+ (_DKSyncToggle)toggleWithObject:(void *)object name:(uint64_t)name enableSelector:(uint64_t)selector disableSelector:
{
  objectCopy = object;
  v9 = a2;
  objc_opt_self();
  v10 = [[_DKSyncToggle alloc] initWithObject:v9 name:objectCopy enableSelector:name disableSelector:selector];

  return v10;
}

- (_DKSyncToggle)initWithObject:(id)object name:(id)name enableSelector:(SEL)selector disableSelector:(SEL)disableSelector
{
  objectCopy = object;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = _DKSyncToggle;
  v12 = [(_DKSyncToggle *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_object, objectCopy);
    objc_storeStrong(&v13->_name, name);
    v13->_enableSelector = selector;
    v13->_disableSelector = disableSelector;
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

- (void)_setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    enabledCopy = enabled;
    v5 = +[_CDLogging syncChannel];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
    if (enabledCopy)
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
    self->_enabled = enabledCopy;
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
  if (self)
  {
    v1 = *(self + 8);
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