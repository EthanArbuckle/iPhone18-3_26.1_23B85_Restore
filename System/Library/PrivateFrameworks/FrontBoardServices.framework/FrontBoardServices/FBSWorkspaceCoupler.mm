@interface FBSWorkspaceCoupler
+ (id)_sharedInstance;
- (BOOL)_isSharedInstance;
- (FBSWorkspaceCoupler)init;
- (id)_workspace;
- (void)_enqueueClientConnectionBlock:(id)block;
- (void)_setWorkspace:(uint64_t)workspace;
- (void)_workspace;
- (void)dealloc;
- (void)invalidate;
@end

@implementation FBSWorkspaceCoupler

+ (id)_sharedInstance
{
  if (_sharedInstance_onceToken != -1)
  {
    +[FBSWorkspaceCoupler _sharedInstance];
  }

  v3 = _sharedInstance___sharedInstance;

  return v3;
}

- (FBSWorkspaceCoupler)init
{
  v7.receiver = self;
  v7.super_class = FBSWorkspaceCoupler;
  v2 = [(FBSWorkspaceCoupler *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    lock_workspace = v2->_lock_workspace;
    v2->_lock_workspace = 0;

    lock_clientConnectionBlocks = v3->_lock_clientConnectionBlocks;
    v3->_lock_clientConnectionBlocks = 0;
  }

  return v3;
}

uint64_t __38__FBSWorkspaceCoupler__sharedInstance__block_invoke()
{
  _sharedInstance___sharedInstance = objc_alloc_init(FBSWorkspaceCoupler);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_isSharedInstance
{
  v3 = +[FBSWorkspaceCoupler _sharedInstance];
  LOBYTE(self) = v3 == self;

  return self;
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must invalidate before dealloc"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)invalidate
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this instance may not invalidate"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (id)_workspace
{
  os_unfair_lock_lock(&self->_lock);
  v4 = self->_lock_workspace;
  os_unfair_lock_unlock(&self->_lock);
  if (!v4)
  {
    [(FBSWorkspaceCoupler *)a2 _workspace];
  }

  return v4;
}

- (void)_enqueueClientConnectionBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  lock_workspace = self->_lock_workspace;
  if (lock_workspace || self->_lock_invalidated)
  {
    v5 = lock_workspace;
    os_unfair_lock_unlock(&self->_lock);
    blockCopy[2](blockCopy, v5);
  }

  else
  {
    lock_clientConnectionBlocks = self->_lock_clientConnectionBlocks;
    if (lock_clientConnectionBlocks)
    {
      v7 = [blockCopy copy];
      v8 = MEMORY[0x1A58E80F0]();
      [(NSMutableArray *)lock_clientConnectionBlocks addObject:v8];
    }

    else
    {
      v9 = MEMORY[0x1E695DF70];
      v7 = [blockCopy copy];
      v10 = [v9 arrayWithObject:v7];
      v8 = self->_lock_clientConnectionBlocks;
      self->_lock_clientConnectionBlocks = v10;
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_setWorkspace:(uint64_t)workspace
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (workspace)
  {
    os_unfair_lock_lock((workspace + 24));
    if (*(workspace + 28) == 1)
    {
      os_unfair_lock_unlock((workspace + 24));
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot set workspace on invalid coupler : coupler=%@ workspace=%p", workspace, v4];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [FBSWorkspaceCoupler _setWorkspace:];
      }

      [v13 UTF8String];
      _bs_set_crash_log_message();
    }

    v5 = *(workspace + 8);
    if (v5)
    {
      v14 = v5;
      os_unfair_lock_unlock((workspace + 24));
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"workspace already set on coupler : coupler=%@ existing=%p new=%p", workspace, v14, v4];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [FBSWorkspaceCoupler _setWorkspace:];
      }

      [v15 UTF8String];
      _bs_set_crash_log_message();
    }

    objc_storeStrong((workspace + 8), a2);
    v6 = *(workspace + 16);
    v7 = *(workspace + 16);
    *(workspace + 16) = 0;

    os_unfair_lock_unlock((workspace + 24));
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          (*(*(*(&v16 + 1) + 8 * i) + 16))();
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }
}

- (void)_workspace
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to access _workspace on coupler before the workspace has checked in"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_setWorkspace:.cold.1()
{
  OUTLINED_FUNCTION_9_0();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_10();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v9);
}

- (void)_setWorkspace:.cold.2()
{
  OUTLINED_FUNCTION_9_0();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_10();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v9);
}

@end