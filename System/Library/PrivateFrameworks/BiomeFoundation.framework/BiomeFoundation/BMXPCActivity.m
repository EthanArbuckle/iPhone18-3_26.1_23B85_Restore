@interface BMXPCActivity
- (BMXPCActivity)initWithActivity:(id)a3 activityName:(id)a4;
- (BOOL)didDefer;
- (void)didDefer;
@end

@implementation BMXPCActivity

- (BMXPCActivity)initWithActivity:(id)a3 activityName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BMXPCActivity;
  v9 = [(BMXPCActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activity, a3);
    objc_storeStrong(&v10->_activityName, a4);
  }

  return v10;
}

- (BOOL)didDefer
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(BMXPCActivity *)self _state]== 3)
  {
    v3 = __biome_log_for_category(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(BMXPCActivity *)self didDefer];
    }

LABEL_4:
    v4 = 1;
    goto LABEL_12;
  }

  if ([(BMXPCActivity *)self shouldDefer])
  {
    v5 = [(BMXPCActivity *)self _setDefer];
    v6 = __biome_log_for_category(0);
    v3 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        activityName = self->_activityName;
        v12 = 138412546;
        v13 = v8;
        v14 = 2112;
        v15 = activityName;
        _os_log_impl(&dword_1AC15D000, v3, OS_LOG_TYPE_DEFAULT, "%@ successfully deferred activity with name: %@, didDefer returning YES", &v12, 0x16u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMXPCActivity *)self didDefer];
    }

    goto LABEL_4;
  }

  v3 = __biome_log_for_category(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(BMXPCActivity *)self didDefer];
  }

  v4 = 0;
LABEL_12:

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)didDefer
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_3(&dword_1AC15D000, v5, v6, "%@ with name: %@ has already been deferred, didDefer returning YES", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

@end